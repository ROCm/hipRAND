# Change Log for hipRAND

Full documentation for rocRAND is available at [https://rocrand.readthedocs.io/en/latest/](https://rocrand.readthedocs.io/en/latest/)

## (Unreleased) hipRAND-x.x.x for ROCm 6.0.0
### Changed
- Removed the option to build hipRAND as a submodule for rocRAND.
- Removed references to and workarounds for deprecated hcc

## (Unreleased) hipRAND-2.10.17 for ROCm 5.6.0
### Fixed
- Fixed benchmark and unit test builds on Windows.

## (Unreleased) hipRAND-2.10.16 for ROCm 5.5.0
### Added
- rocRAND backend support for Sobol 64, Scrambled Sobol 32 and 64, and MT19937.
- `hiprandGenerateLongLong` for generating 64-bits uniformly distributed integers with Sobol 64 and Scrambled Sobol 64.
- Accessor methods for sobol 32 and 64 direction vectors and constants:
    - Enum `hiprandDirectionVectorSet_t` for direction vector set selection
    - `hiprandGetDirectionVectors32(...)` 
    - `hiprandGetDirectionVectors32(...)`
    - `hiprandGetScrambleConstants32(...)`
    - `hiprandGetScrambleConstants32(...)`

### Changed
- Python 2.7 is no longer officially supported.

## hipRAND for ROCm 5.2.0
### Added
- Backward compatibility for deprecated `#include <hiprand.h>` using wrapper header files.
- Packages for test and benchmark executables on all supported OSes using CPack.

## hipRAND for ROCm 5.0.0
### Added
- Initial split from rocRAND
