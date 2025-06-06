# hipRAND

## The hipRAND repository is retired, please use the [ROCm/rocm-libraries](https://github.com/ROCm/rocm-libraries) repository

hipRAND is a RAND marshalling library with multiple supported backends. It sits between your
application and the backend RAND library, where it marshals inputs to the backend and results to the
application. hipRAND exports an interface that doesn't require the client to change, regardless of the
chosen backend.

hipRAND supports [rocRAND](https://github.com/ROCm/rocRAND) and
[NVIDIA CUDA cuRAND](https://developer.nvidia.com/curand).

## Requirements

You must have the following installed to use hipRAND:

* CMake (3.16 or later)
* For AMD GPUs:
  * AMD ROCm Software (5.0.0 or later)
  * rocRAND library
* For NVIDIA GPUs:
  * CUDA Toolkit 11.5.1 or newer
  * cuRAND library

## Documentation

> [!NOTE]
> The published hipRAND documentation is available [here](https://rocm.docs.amd.com/projects/hipRAND/en/latest/) in an organized, easy-to-read format, with search and a table of contents. The documentation source files reside in the `docs` folder of this repository. As with all ROCm projects, the documentation is open source. For more information on contributing to the documentation, see [Contribute to ROCm documentation](https://rocm.docs.amd.com/en/latest/contribute/contributing.html).
