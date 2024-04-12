============
Installation
============

Introduction
------------

This chapter describes how to obtain hipRAND. There are two main methods: the easiest way is to install the prebuilt packages from the ROCm repositories. Alternatively, this chapter also describes how to build hipRAND from source.

Prebuilt Packages
-----------------

Installing the prebuilt hipRAND packages requires a ROCm-enabled platform. See the `ROCm documentation <https://rocm.docs.amd.com/>`_ for more information. After installing ROCm or enabling the ROCm repositories, hipRAND can be obtained using the system package manager.

For Ubuntu and Debian:

.. code-block:: shell

    sudo apt-get install hiprand

For CentOS:

.. code-block:: shell

    sudo yum install hiprand

For SLES:

.. code-block:: shell

    sudo dnf install hiprand

This will install hipRAND into the ``/opt/rocm`` directory.

Building hipRAND From Source
----------------------------

Requirements
^^^^^^^^^^^^

To build hipRAND, CMake version 3.10 or later is required.

Additionally, to build hipRAND for ROCm software, the following software are required:

* AMD ROCm Software (version 5.0.0 or later).
* `rocRAND <https://github.com/ROCm/rocRAND.git>`_

To build hipRAND for the CUDA platform instead, the following software is required:

* The CUDA Toolkit
* cuRAND (included in the CUDA Toolkit)

Obtaining Sources
^^^^^^^^^^^^^^^^^

The hipRAND sources are available from the `hipRAND GitHub Repository <https://github.com/ROCm/hipRAND>`_. Use the branch that matches the system-installed version of ROCm. For example on a system that has ROCm 5.4 installed, use the following command to obtain hipRAND sources:

.. code-block:: shell

    git checkout -b release/rocm-rel-5.4 https://github.com/ROCm/hipRAND.git

Building the Library
^^^^^^^^^^^^^^^^^^^^

After obtaining the sources and dependencies, hipRAND can be built for ROCm software using the installation script:

.. code-block:: shell

    cd hipRAND
    ./install --install

This automatically builds all required dependencies, excluding Git and the requirements listed above, and installs the project to ``/opt/rocm`` if everything went well. See ``./install --help`` for further information. The clients, enabled by option ``--clients``, consist of the hipRAND tests and add the additional dependency of `googletest <https://github.com/google/googletest>`_.

Building with CMake
^^^^^^^^^^^^^^^^^^^

For a more elaborate installation process, hipRAND can be built manually using CMake. This enables certain configuration options that are not exposed to the ``./install`` script. In general, hipRAND can be built using CMake by configuring as follows:

.. code-block:: shell

    cd hipRAND; mkdir build; cd build
    # Configure the project
    CXX=<compiler> cmake [options] ..
    # Build
    make -j$(nproc)
    # Optionally, run the tests
    ctest --output-on-failure
    # Install
    [sudo] make install

Where ``<compiler>`` should be set to ``hipcc`` or ``amdclang`` on ROCm software, or to a regular C++ compiler such as ``g++`` on a CUDA platform. The default build configuration is ``Release``.

* ``BUILD_WITH_LIB`` controls whether to build hipRAND with the rocRAND or cuRAND backend. If set to ``CUDA``, hipRAND will be built using the cuRAND backend. Otherwise, the rocRAND backend will be used.
* ``BUILD_FORTRAN_WRAPPER`` controls whether to build the Fortran wrapper. Defaults to ``OFF``.
* ``BUILD_TEST`` controls whether to build the hipRAND tests. Defaults to ``OFF``.
* ``BUILD_BENCHMARK`` controls whether to build the hipRAND benchmarks. Defaults to ``OFF``.
* ``BUILD_ADDRESS_SANITIZER`` controls whether to build with address sanitization enabled. Defaults to ``OFF``.
* ``ROCRAND_PATH`` specifies a rocRAND install other than the default system installed one.
* ``DOWNLOAD_ROCRAND`` specifies that rocRAND will be downloaded and installed in the build directory. Defaults to ``OFF``.
* ``DEPENDENCIES_FORCE_DOWNLOAD`` specifices that system-installed dependencies will not be used, they will always be downloaded and built. Defaults to ``OFF``.

If using ``ROCRAND_PATH`` or ``DOWNLOAD_ROCRAND`` and rocRAND is also installed on the system in the default location then ``CMAKE_NO_SYSTEM_FROM_IMPORTED=ON`` should be passed
when configuring the project.
Otherwise the headers of rocRAND might be resolved to the system installed version instead of the specified version, leading to errors or missing functionality.

Common build problems
"""""""""""""""""""""

* CMake error
  
  .. code-block:: shell

      Could not find a package configuration file provided by "rocrand" with any of the following names:

      rocrandConfig.cmake
      rocrand-config.cmake

  Solution: install `rocRAND <https://github.com/ROCm/rocRAND.git>`_.
* CMake error

  .. code-block:: shell

      Could not find a package configuration file provided by "ROCM" with any of the following names:

      ROCMConfig.cmake
      rocm-config.cmake

  Solution: install `ROCm CMake modules <https://github.com/RadeonOpenCompute/rocm-cmake>`_.

Building the Python API Wrapper
-------------------------------

Requirements
^^^^^^^^^^^^

The hipRAND Python API Wrapper requires the following dependencies:

* hipRAND
* Python 3.5
* NumPy (will be installed automatically as a dependency if necessary)

Note: If hipRAND is built from sources but not installed or installed in
non-standard directory, set the ``ROCRAND_PATH`` or ``HIPRAND_PATH`` environment variable to the path containing ``libhiprand.so``. For example:

.. code-block:: shell

    export HIPRAND_PATH=~/hipRAND/build/library/

Installing
^^^^^^^^^^

The Python hipRAND module can be installed using pip:

.. code-block:: shell

    cd hipRAND/python/hiprand
    pip install .

The tests can be executed as follows:

.. code-block:: shell

    cd hipRAND/python/hiprand
    python tests/hiprand_test.py
