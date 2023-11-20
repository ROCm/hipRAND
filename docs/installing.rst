============
Installation
============

Introduction
------------

This chapter describes how to obtain hipRAND. There are two main methods: the easiest way is to install the prebuilt packages from the ROCm repositories. Alternatively, this chapter also describes how to build hipRAND from source.

Prebuilt Packages
-----------------

Installing the prebuilt hipRAND packages requires a ROCm-enabled platform. See the `ROCm documentation <https://docs.amd.com/>`_ for more information. After installing ROCm or enabling the ROCm repositories, hipRAND can be obtained using the system package manager.

For Ubuntu and Debian::

    sudo apt-get install hiprand

For CentOS::

    sudo yum install hiprand

For SLES::

    sudo dnf install hiprand

This will install hipRAND into the ``/opt/rocm`` directory.

Building hipRAND From Source
----------------------------

Requirements
^^^^^^^^^^^^

To build hipRAND, CMake version 3.10 or later is required.

Additionally, to build hipRAND for ROCm software, the following software are required:

* AMD ROCm Software (version 5.0.0 or later).
* `rocRAND <https://github.com/ROCmSoftwarePlatform/rocRAND.git>`_

To build hipRAND for the CUDA platform instead, the following software is required:

* The CUDA Toolkit
* cuRAND (included in the CUDA Toolkit)

Obtaining Sources
^^^^^^^^^^^^^^^^^

The hipRAND sources are available from the `hipRAND GitHub Repository <https://github.com/ROCmSoftwarePlatform/hipRAND>`_. Use the branch that matches the system-installed version of ROCm. For example on a system that has ROCm 5.4 installed, use the following command to obtain hipRAND sources::

    git checkout -b release/rocm-rel-5.4 https://github.com/ROCmSoftwarePlatform/hipRAND.git

Building the Library
^^^^^^^^^^^^^^^^^^^^

After obtaining the sources and dependencies, hipRAND can be built for ROCm software using the installation script::

    cd hipRAND
    ./install --install

This automatically builds all required dependencies, excluding HIP and Git, and installs the project to ``/opt/rocm`` if everything went well. See ``./install --help`` for further information.

Building with CMake
^^^^^^^^^^^^^^^^^^^

For a more elaborate installation process, hipRAND can be built manually using CMake. This enables certain configuration options that are not exposed to the ``./install`` script. In general, hipRAND can be built using CMake by configuring as follows::

    cd hipRAND; mkdir build; cd build
    # Configure the project
    CXX=<compiler> cmake [options] ..
    # Build
    make -j$(nproc)
    # Optionally, run the tests
    ctest --output-on-failure
    # Install
    [sudo] make install

Where ``<compiler>>`` should be set to ``hipcc`` on ROCm software, or to a regular C++ compiler such as ``g++`` on a CUDA platform.

* ``BUILD_WITH_LIB`` controls whether to build hipRAND with the rocRAND or cuRAND backend. If set to ``CUDA``, hipRAND will be built using the cuRAND backend. Otherwise, the rocRAND backend will be used.
* ``BUILD_FORTRAN_WRAPPER`` controls whether to build the Fortran wrapper. Defaults to ``OFF``.
* ``BUILD_TEST`` controls whether to build the hipRAND tests. Defaults to ``OFF``.
* ``BUILD_BENCHMARK`` controls whether to build the hipRAND benchmarks. Defaults to ``OFF``.
* ``BUILD_ADDRESS_SANITIZER`` controls whether to build with address sanitization enabled. Defaults to ``OFF``.
* ``ROCRAND_PATH`` specifies a rocRAND install other than the default system installed one.
* ``DOWNLOAD_ROCRAND`` specifies that rocRAND will be downloaded and installed in the build directory.

If using ``ROCRAND_PATH`` or ``DOWNLOAD_ROCRAND`` and rocRAND is installed on the system in the default location, ``CMAKE_NO_SYSTEM_FROM_IMPORTED=ON`` must be passed.

Building the Python API Wrapper
-------------------------------

Requirements
^^^^^^^^^^^^

The hipRAND Python API Wrapper requires the following dependencies:

* hipRAND
* Python 3.5
* NumPy (will be installed automatically as a dependency if necessary)

Note: If hipRAND is built from sources but not installed or installed in
non-standard directory, set the ``ROCRAND_PATH`` or ``HIPRAND_PATH`` environment variable to the path containing ``libhiprand.so``. For example::

    export HIPRAND_PATH=~/hipRAND/build/library/

Installing
^^^^^^^^^^

The Python hipRAND module can be installed using pip::

    cd hipRAND/python/hiprand
    pip install .

The tests can be executed as follows::

    cd hipRAND/python/hiprand
    python tests/hiprand_test.py
