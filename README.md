<h1 align="center">V8 Reference</h1>

<p align="center"><a href="https://lbwa.github.io/v8-docs">Online</a></p>

This project is an API reference for Google's open-source [v8](https://github.com/v8/v8) `JavaScript` engine.

## Install

1. Fetch the latest version `v8` source code:

   ```bash
   $ git submodule init
   $ git submodule foreach git pull
   ```

1. Download [doxygen](https://github.com/doxygen/doxygen) binaries into `doxygen` directory.

1. Run command for generating documentations:

   ```bash
   $ ./doxygen/doxygen.exe
   ```

1. Done. All output `HTML` files are in the `docs` directory.
