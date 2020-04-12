<h1 align="center">V8 Reference</h1>

<p align="center"><a href="https://lbwa.github.io/v8-reference">Online</a></p>

This project is an API reference for Google's open-source [v8](https://github.com/v8/v8) `JavaScript` engine.

<!-- TOC -->

- [Install](#install)
- [Core components](#core-components)
  - [Compiler pipeline](#compiler-pipeline)
- [Further readings](#further-readings)
  - [Articles](#articles)
  - [Videos](#videos)

<!-- /TOC -->

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

## Core components

### Compiler pipeline

> [related](https://youtu.be/p-iiEDtpy6I?t=726)

- baseline compiler(as an interpreter) is called [Ignition](https://v8.dev/docs/ignition)

- optimizing compiler is called [TurboFan](https://v8.dev/docs/turbofan).

## Further readings

### Articles

- [You don't known JS yet - Compiled vs. Interpreted](https://github.com/getify/You-Dont-Know-JS/blob/2nd-ed/scope-closures/ch1.md#compiled-vs-interpreted)

### Videos

- [JavaScript engines - how do they even?](https://youtu.be/p-iiEDtpy6I)

  - [Just in time compilation](https://youtu.be/p-iiEDtpy6I?t=510), abbr as `JIT`, 即时编译, just compiling the source code just in time as we need it

  - re-compile `hot` functions with **type information** from previous execution, de-optimize if the type has changed<sup>[#](https://youtu.be/p-iiEDtpy6I?t=588)</sup>

    > 虽然 JS 是动态类型，但 `v8` 内部仍然是根据类型信息来优化代码实现 JIT 优化。<sup>[#](https://youtu.be/p-iiEDtpy6I?t=787)</sup>

    [How to optimize JS code with a concrete example](https://youtu.be/p-iiEDtpy6I?t=810)

- [JavaScript Engine Internals for JavaScript Developers](https://youtu.be/-lt6a9kbc_k)
- [JavaScript engine fundamentals: optimizing prototypes](https://mathiasbynens.be/notes/prototypes)
- [JavaScript engine fundamentals: Shapes and Inline Caches](https://mathiasbynens.be/notes/shapes-ics)
