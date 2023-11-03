# hipRAND

hipRAND is a RAND marshalling library with multiple supported backends. It sits between your
application and the backend RAND library, where it marshals inputs to the backend and results to the
application. hipRAND exports an interface that doesn't require the client to change, regardless of the
chosen backend.

hipRAND supports [rocRAND](https://github.com/ROCmSoftwarePlatform/rocRAND) and
[cuRAND](https://developer.nvidia.com/curand).

You can find our documentation at
[https://rocm.docs.amd.com/projects/hipRAND/en/latest/](https://rocm.docs.amd.com/projects/hipRAND/en/latest/).

## Documentation

To build our documentation, use the following code:

```bash
# Go to hipRAND docs directory
cd hipRAND; cd docs

# Install Python dependencies
python3 -m pip install -r .sphinx/requirements.txt

# Build the documentation
python3 -m sphinx -T -E -b html -d _build/doctrees -D language=en . _build/html

# E.g. serve the HTML docs locally
cd _build/html
python3 -m http.server
```

## Requirements

You must have the following installed to use hipRAND:

* CMake (3.16 or later)
* For AMD GPUs:
  * AMD ROCm platform (5.0.0 or later)
  * rocRAND library
* For NVIDIA GPUs:
  * CUDA Toolkit
  * cuRAND library

## Build and install

You can download pre-built packages from
[ROCm's package servers](https://rocm.github.io/install.html#installing-from-amd-rocm-repositories),
or by clicking the github releases tab (this option could have a newer version).

Once downloaded, use the following code to install hipRAND:

`sudo apt update && sudo apt install hiprand`

To build hipRAND, you can use the bash helper script (Ubuntu only) or build manually (for all
supported platforms):

* Bash helper build script:

  The helper script `install` is located in the root repository. Note that this method doesn't take many
  options and hard-codes a configuration that you can specify by invoking CMake directly.

  A few commands in the script need sudo access, so it may prompt you for a password.

  * `./install -h`: Shows help
  * `./install -id`: Builds library, dependencies, and installs (the `-d` flag only needs to be passed once on
    a system)

* Manual build:

  If you use a distribution other than Ubuntu, or want more control over the build process, the
  [hipRAND build wiki](https://github.com/ROCmSoftwarePlatform/hipRAND/wiki/Build) has helpful
  information on how to configure CMake and build manually.

### Supported functions

You can find a list of
[exported functions](https://github.com/ROCmSoftwarePlatform/hipRAND/wiki/Exported-functions) on
the wiki.

## Interface examples

The hipRAND interface is compatible with rocRAND and cuRAND-v2 APIs. Porting a CUDA application
that calls the cuRAND API to an application that calls the hipRAND API is relatively straightforward. For
example, to create a generator:

### Host API

```c
hiprandStatus_t
hiprandCreateGenerator(
  hiprandGenerator_t* generator,
  hiprandRngType_t rng_type
)
```

### Device API

Here is an example that generates a log-normally distributed float from a generator (these functions
are templated for all generators).

```c
__device__ double
hiprand_log_normal_double(
  hiprandStateSobol64_t* state,
  double mean,
  double stddev
)
```
