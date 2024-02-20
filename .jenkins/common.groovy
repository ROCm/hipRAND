// This file is for internal AMD use.
// If you are interested in running your own Jenkins, please raise a github issue for assistance.

def runCompileCommand(platform, project, jobName, settings)
{
    project.paths.construct_build_prefix()

    boolean sameOrg = settings.sameOrg ?: false

    def getDependenciesCommand = ""
    if (project.installLibraryDependenciesFromCI)
    {
        project.libraryDependencies.each
        {
            libraryName ->
            getDependenciesCommand += auxiliary.getLibrary(libraryName, platform.jenkinsLabel, 'develop', sameOrg)
        }
    }

    project.paths.build_command = './install -c'
    String buildTypeArg = settings.debug ? '-DCMAKE_BUILD_TYPE=Debug' : '-DCMAKE_BUILD_TYPE=Release'
    String buildTypeDir = settings.debug ? 'debug' : 'release'
    String buildStatic = settings.staticLibrary ? '-DBUILD_STATIC_LIBS=ON' : '-DBUILD_SHARED=OFF'
    String cmake = platform.jenkinsLabel.contains('centos') ? 'cmake3' : 'cmake'
    //Set CI node's gfx arch as target if PR, otherwise use default targets of the library
    String amdgpuTargets = env.BRANCH_NAME.startsWith('PR-') ? '-DAMDGPU_TARGETS=\$gfx_arch' : ''
    String compiler = '/opt/rocm/bin/hipcc'
    String asanFlag = settings.addressSanitizer ? '-DBUILD_ADDRESS_SANITIZER=ON' : ''
    String useCUDA = ''
    if (platform.jenkinsLabel.contains('cuda'))
    {
        compiler = 'g++'
        useCUDA = '-DBUILD_WITH_LIB=CUDA'
        amdgpuTargets = ''
    }

    def command = """#!/usr/bin/env bash
                set -x
                cd ${project.paths.project_build_prefix}
                ${getDependenciesCommand}
                mkdir -p build/${buildTypeDir} && cd build/${buildTypeDir}
                # gfxTargetParser reads gfxarch and adds target features such as xnack
                ${auxiliary.gfxTargetParser()}
                echo "ROCM_PATH = \${ROCM_PATH}"
                ${cmake} -DCMAKE_CXX_COMPILER=${compiler} ${useCUDA} ${buildTypeArg} ${buildStatic} ${amdgpuTargets} ${asanFlag} -DBUILD_TEST=ON -DBUILD_BENCHMARK=ON ../..
                make -j\$(nproc)
                """

    platform.runCommand(this, command)
}

def runTestCommand (platform, project, settings)
{
    String sudo = auxiliary.sudo(platform.jenkinsLabel)
 
    def extraArgs = platform.jenkinsLabel.contains('cuda') ? "-E test_hiprand_linkage" : ""
    def testCommand = "ctest ${extraArgs} --output-on-failure"

    def LD_PATH = 'export LD_LIBRARY_PATH=/opt/rocm/lib/'
    if (settings.addressSanitizer)
    {
        LD_PATH = """
                    export ASAN_LIB_PATH=\$(/opt/rocm/llvm/bin/clang -print-file-name=libclang_rt.asan-x86_64.so)
                    export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:\$(dirname "\${ASAN_LIB_PATH}")
                  """
    }

    def command = """#!/usr/bin/env bash
                set -x
                cd ${project.paths.project_build_prefix}/build/release
                make -j4
                ${LD_PATH}
                ${sudo} ${testCommand}
            """

    platform.runCommand(this, command)
}

def runPackageCommand(platform, project)
{
    def packageHelper = platform.makePackage(platform.jenkinsLabel,"${project.paths.project_build_prefix}/build/release")

    platform.runCommand(this, packageHelper[0])
    platform.archiveArtifacts(this, packageHelper[1])
}

return this

