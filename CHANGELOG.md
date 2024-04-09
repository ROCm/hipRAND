# Changelog for hipRAND

Documentation for hipRAND is available at
[https://rocm.docs.amd.com/projects/hipRAND/en/latest/](https://rocm.docs.amd.com/projects/hipRAND/en/latest/).

## hipRAND-2.11.0 for ROCm 6.2.0

### Additions

* Added support for setting generator output ordering in C and C++ API
* `hiprandCreateGeneratorHost` dispatches to the host generator in the rocRAND backend instead of returning with `HIPRAND_STATUS_NOT_IMPLEMENTED`
* Added the option to create a host generator to the Fortran wrapper
* Added the option to create a host generator to the Python wrapper

### Changes

* For internal testing with HMM the environment variable `ROCRAND_USE_HMM` was used in previous
  versions, it is now changed to `HIPRAND_USE_HMM`.
* The device API documentation is improved in this version.

### Removals

* Removed the option to build hipRAND as a submodule to rocRAND
* Removed references to, and workarounds for, the deprecated `hcc`
* Support for finding rocRAND based on the environment variable `ROCRAND_DIR` has been removed
  `ROCRAND_PATH` can be used instead.

### Fixes

* Build error when using Clang++ directly due to unsupported references to `amdgpu-target`

## hipRAND-2.10.17 for ROCm 5.6.0

### Fixes

* Fixed benchmark and unit test builds on Windows

## hipRAND-2.10.16 for ROCm 5.5.0

### Additions

* rocRAND backend support for Sobol 64, Scrambled Sobol 32 and 64, and MT19937
* `hiprandGenerateLongLong` for generating 64-bit uniformly distributed integers with Sobol 64 and
  Scrambled Sobol 64
* Accessor methods for Sobol 32 and 64 direction vectors and constants:
  * Enum `hiprandDirectionVectorSet_t` for direction vector set selection
  * `hiprandGetDirectionVectors32(...)`
  * `hiprandGetDirectionVectors32(...)`
  * `hiprandGetScrambleConstants32(...)`
  * `hiprandGetScrambleConstants32(...)`

### Changes

* Python 2.7 is no longer officially supported.

## hipRAND for ROCm 5.2.0

### Additions

* Backward compatibility for the deprecated `#include <hiprand.h>` using wrapper header files
* Packages for test and benchmark executables on all supported operating systems using CPack

## hipRAND for ROCm 5.0.0

### Additions

* Initial split from rocRAND
