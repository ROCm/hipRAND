====================
Python API Reference
====================

This chapter describes the hipRAND Python module API.

This wrapper has API similar to **pyculib.rand**
(http://pyculib.readthedocs.io/en/latest/curand.html).

.. default-domain:: py
.. py:currentmodule:: hiprand

class PRNG
----------

.. autoclass:: hiprand.PRNG
   :inherited-members:
   :members:


class QRNG
----------

.. autoclass:: hiprand.QRNG
   :inherited-members:
   :members:

Exceptions
----------

.. autoexception:: hiprand.HipRandError
   :members:

.. autoexception:: hiprand.HipError
   :members:

Utilities
---------

.. autoclass:: hiprand.DeviceNDArray
   :members:

.. autofunction:: hiprand.empty

.. autofunction:: hiprand.get_version
