# Change Log for hipRAND

Full documentation for rocRAND is available at [https://rocrand.readthedocs.io/en/latest/](https://rocrand.readthedocs.io/en/latest/)

## (Unreleased) hipRAND for ROCm 5.2.0
### Added
- rocRAND backend support for Sobol 64, Scrambled Sobol 32 and 64, and MT19937.
- `hiprandGenerateLongLong` for generating 64-bits uniformly distributed integers with Sobol 64 and Scrambled Sobol 64.
### Changed
- Python 2.7 is no longer officially supported.

## (Unreleased) hipRAND for ROCm 5.2.0
### Added
- Backward compatibility for deprecated `#include <hiprand.h>` using wrapper header files.
- Packages for test and benchmark executables on all supported OSes using CPack.

## (Unreleased) hipRAND for ROCm 5.0.0
### Added
- Initial split from rocRAND
