# Change Log for hipRAND

Full documentation for rocRAND is available at [https://rocrand.readthedocs.io/en/latest/](https://rocrand.readthedocs.io/en/latest/)

## (Unreleased) hipRAND-2.10.13 for ROCm 5.1.0
### Changed
- Header file installation location changed to match other libraries.
  - Using the `hiprand.h` header file should now use `#include <hiprand/hiprand.h>`, rather than `#include <hiprand.h>`
  - Symlinks are included for backwards compatibility

## (Unreleased) hipRAND for ROCm 5.0.0
### Added
- Initial split from rocRAND
