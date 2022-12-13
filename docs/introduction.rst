=============
Introduction
=============

.. toctree::
   :maxdepth: 4
   :caption: Contents:

Overview
========

The hipRAND project provides wrappers which allow users to write code for either CUDA or ROCm.

The hipRAND library is a wrapper library which allows users to easily port CUDA applications that use the cuRAND library to the `HIP <https://github.com/ROCm-Developer-Tools/HIP>`_ layer. In a `ROCm <https://rocm.github.io/>`_ environment hipRAND uses rocRAND, however in a CUDA environment cuRAND is used instead.

hipRAND provides both C/C++ and Python API wrappers.
