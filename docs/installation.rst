.. meta::
   :description: A wrapper library that allows you to easily port CUDA applications that use the cuRAND library to the HIP layer
   :keywords: hipRAND, ROCm, library, API, tool

.. _installation:

============
Installation
============

To install hipRAND, you can choose between the following two methods:

-   Using prebuilt packages from the ROCm repositories
-   Building from source   

Both the methods are described below.

Install using prebuilt packages
--------------------------------

To install the prebuilt hipRAND packages, you require a ROCm-enabled platform. For information on ROCm installation, see the `ROCm installation for Linux <https://rocm.docs.amd.com/projects/install-on-linux/en/latest/>`_ page. After installing ROCm or enabling the ROCm repositories, you can install hipRAND using the system package manager.

For Ubuntu and Debian:

.. code-block:: shell

    sudo apt-get install hiprand

For CentOS:

.. code-block:: shell

    sudo yum install hiprand

For SLES:

.. code-block:: shell

    sudo dnf install hiprand

This installs hipRAND in the ``/opt/rocm`` directory.

Build hipRAND from source
----------------------------

This section provides the information required to build hipRAND from source.

Requirements
^^^^^^^^^^^^

To build hipRAND, CMake version 3.10 or later is required.

Additionally, to build hipRAND for ROCm software, the following softwares are required:

* `AMD ROCm Software <https://rocm.docs.amd.com/projects/install-on-linux/en/latest/>`_ (version 5.0.0 or later).
* `rocRAND <https://github.com/ROCm/rocRAND.git>`_

To build hipRAND for the CUDA platform instead, the following softwares are required:

* The CUDA toolkit
* cuRAND (included in the CUDA Toolkit)

Obtaining sources
^^^^^^^^^^^^^^^^^

You can find the hipRAND sources in the `hipRAND GitHub Repository <https://github.com/ROCm/hipRAND>`_. Use the branch that matches the system-installed version of ROCm. For example, on a system with ROCm 5.4 installed, use the following command to obtain hipRAND sources:

.. code-block:: shell

    git checkout -b release/rocm-rel-5.4 https://github.com/ROCm/hipRAND.git

Building library
^^^^^^^^^^^^^^^^^^^^

After obtaining the sources and dependencies, build hipRAND for ROCm software using the installation script:

.. code-block:: shell

    cd hipRAND
    ./install --install

This automatically builds all required dependencies, excluding Git and the requirements listed above, and installs the project to ``/opt/rocm`` if everything went well. See ``./install --help`` for further information. The clients, enabled by option ``--clients``, consist of the hipRAND tests and add the additional dependency of `googletest <https://github.com/google/googletest>`_.

Building with CMake
^^^^^^^^^^^^^^^^^^^

For a more elaborate installation process, build hipRAND manually using CMake. This enables certain configuration options that are not exposed to the ``./install`` script. In general, you can build hipRAND using CMake with the following configuration:

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

Where ``<compiler>`` should be set to ``hipcc`` or ``amdclang`` on ROCm software or to a regular C++ compiler such as ``g++`` on a CUDA platform. The default build configuration is ``Release``.

Here are the CMake options:

* ``BUILD_WITH_LIB`` decides whether to build hipRAND with the rocRAND or cuRAND backend. If set to ``CUDA``, hipRAND is built using the cuRAND backend. Otherwise, the rocRAND backend is used.
* ``BUILD_FORTRAN_WRAPPER`` builds the Fortran wrapper when set to ``ON``. Defaults to ``OFF``.
* ``BUILD_TEST`` builds the hipRAND tests when set to ``ON``. Defaults to ``OFF``.
* ``BUILD_BENCHMARK`` builds the hipRAND benchmarks when set to ``ON``. Defaults to ``OFF``.
* ``BUILD_ADDRESS_SANITIZER`` builds with address sanitization enabled when set to ``ON``. Defaults to ``OFF``.
* ``ROCRAND_PATH`` specifies a rocRAND install other than the default system installed one.
* ``DOWNLOAD_ROCRAND`` downloads and installs rocRAND in the build directory when set to ``ON``. Defaults to ``OFF``.
* ``DEPENDENCIES_FORCE_DOWNLOAD`` downloads and builds the dependencies instead of using system-installed dependencies when set to ``ON``. Defaults to ``OFF``.

If using ``ROCRAND_PATH`` or ``DOWNLOAD_ROCRAND`` when rocRAND is already installed in the default location in the system then, use ``CMAKE_NO_SYSTEM_FROM_IMPORTED=ON`` while configuring the project.
Failing to do so might resolve the rocRAND headers to the system-installed version instead of the specified version, leading to errors or missing functionalities.

Common build errors
"""""""""""""""""""""

*   
  .. code-block:: shell

      Could not find a package configuration file provided by "rocrand" with any of the following names:

      rocrandConfig.cmake
      rocrand-config.cmake

  Solution: install `rocRAND <https://github.com/ROCm/rocRAND.git>`_.
* 
  .. code-block:: shell

      Could not find a package configuration file provided by "ROCM" with any of the following names:

      ROCMConfig.cmake
      rocm-config.cmake

  Solution: install `ROCm CMake modules <https://github.com/RadeonOpenCompute/rocm-cmake>`_.

Building Python API wrapper
-------------------------------

This section provides information required to build the hipRAND Python API wrapper.

Requirements
^^^^^^^^^^^^

The hipRAND Python API Wrapper requires the following dependencies:

* hipRAND
* Python 3.5
* NumPy (will be installed automatically as a dependency if necessary)

.. note::
    
    If hipRAND is built from sources but not installed or rather installed in a
    non-standard directory, then set the ``ROCRAND_PATH`` or ``HIPRAND_PATH`` environment variable to the path containing ``libhiprand.so`` as shown below:

    .. code-block:: shell

        export HIPRAND_PATH=~/hipRAND/build/library/

Installation
^^^^^^^^^^^^^

To install Python hipRAND module using ``pip``:

.. code-block:: shell

    cd hipRAND/python/hiprand
    pip install .

To execute the tests:

.. code-block:: shell

    cd hipRAND/python/hiprand
    python tests/hiprand_test.py
