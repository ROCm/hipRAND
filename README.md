# hipRAND

hipRAND is a RAND marshalling library, with multiple supported backends. 
It sits between the application and the backend RAND library, 
marshalling inputs into the backend and results back to the application.
hipRAND exports an interface that does not require the client to change, regardless of the chosen backend.
Currently, hipRAND supports either [rocRAND](https://github.com/ROCmSoftwarePlatform/rocRAND) 
or [cuRAND](https://developer.nvidia.com/curand).

## Documentation

Information about the library API and other topics can be found in the [hipRAND Documentation](https://hiprand.readthedocs.io/en/latest/).

### How to build documentation

Run the steps below to build documentation locally.

```
cd docs

pip3 install -r .sphinx/requirements.txt

python3 -m sphinx -T -E -b html -d _build/doctrees -D language=en . _build/html

cd ../python/hiprand

python setup.py build_sphinx
```

## Installing pre-built packages
Download pre-built packages from 
[ROCm's package servers](https://rocm.github.io/install.html#installing-from-amd-rocm-repositories), or by clicking 
the github releases tab and manually downloading, which could be newer. 
Release notes are available for each release on the releases tab.

- `sudo apt update && sudo apt install hiprand`

## Quickstart hipRAND build

### Requirements
- CMake (3.16 or later)
- For AMD GPUs:
  - AMD ROCm platform (5.0.0 or later)
  - rocRAND library
- For NVIDIA GPUs:
  - CUDA Toolkit
  - cuRAND library

#### Bash helper build script (Ubuntu only)
The root of this repository has a helper bash script `install` to build and install hipRAND on Ubuntu with a single command.  It does not take a lot of options and hard-codes configuration that can be specified through invoking cmake directly, but it's a great way to get started quickly and can serve as an example of how to build/install. A few commands in the script need sudo access, so it may prompt you for a password.
*  `./install -h`  -- shows help
*  `./install -id` -- build library, build dependencies and install (-d flag only needs to be passed once on a system)

## Manual build (all supported platforms)
If you use a distro other than Ubuntu, or would like more control over the build process, the [hipRAND build wiki](https://github.com/ROCmSoftwarePlatform/hipRAND/wiki/Build) has helpful information on how to configure cmake and manually build.

### Functions supported
A list of [exported functions](https://github.com/ROCmSoftwarePlatform/hipRAND/wiki/Exported-functions) from hipRAND can be found on the wiki

## hipRAND interface examples
The hipRAND interface is compatible with rocRAND and cuRAND-v2 APIs. Porting a CUDA application which originally calls the cuRAND API to an application calling hipRAND API should be relatively straightforward. For example, creating a generator is

### Host API
```c
hiprandStatus_t
hiprandCreateGenerator(
  hiprandGenerator_t* generator,
  hiprandRngType_t rng_type
)
```

### Device API
Here is one example of generating a log-normally distributed float from a generator (these functions are templated for all generators).
```c
__device__ double 
hiprand_log_normal_double(
  hiprandStateSobol64_t* state,
  double mean,
  double stddev
)
```
