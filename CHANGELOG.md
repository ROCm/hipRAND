# Changelog for hipRAND

Documentation for hipRAND is available at
[https://rocm.docs.amd.com/projects/hipRAND/en/latest/](https://rocm.docs.amd.com/projects/hipRAND/en/latest/).

## (Unreleased) hipRAND-x.y.z for ROCm 6.0.0

### Removals

* Removed the option to build hipRAND as a submodule to rocRAND
* Removed references to, and workarounds for, the deprecated `hcc`

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
