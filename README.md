<h1 align="center">V8 Reference</h1>

<p align="center"><a href="https://lbwa.github.io/v8-reference">Online</a></p>

This project is an API reference for Google's open-source [v8](https://github.com/v8/v8) `JavaScript` engine.

<!-- TOC -->

- [Install](#install)
- [Core components](#core-components)
  - [Mental model](#mental-model)
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

### Mental model

> Recommend: [You don't know JS yet - compiling code](https://github.com/getify/You-Dont-Know-JS/blob/2nd-ed/scope-closures/ch1.md)

JavaScript is in fact parsed/compiled in a separate phase before execution begins. Scope is primarily determined during compilation.

In class compiler theory, a program is processed by a compiler in three basic stages:

1. **Tokenizing/Lexing**: breaking up a string of characters into meaningful (to the language) chunks, called **tokens**.

1. **Parsing**: taking a stream(array) of tokens and turning it init a tree of nested elements. This is called an **`abstract syntax tree(abbr, AST)`**.

1. **Code generation**: taking an AST and turning it into **executable code**.

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

  - re-compile **`hot`** functions with **type information** from previous execution, de-optimize if the type has changed<sup>[#](https://youtu.be/p-iiEDtpy6I?t=588)</sup>

    > 虽然 JS 是动态类型，但 `v8` 内部仍然是根据类型信息来优化代码实现 JIT 优化。<sup>[#](https://youtu.be/p-iiEDtpy6I?t=787)</sup>

    [How to optimize JS code with a concrete example](https://youtu.be/p-iiEDtpy6I?t=810)

  - As a **engine-level performance** tip, always construct the same type of objects.<sup>[#](https://youtu.be/p-iiEDtpy6I?t=1190)</sup>

    ```ts
    function load(obj: { x: number, a: number, b: number}) {
      return obj.x
    }

    load(x: undefined, a: 3, b: 9)
    load(x: 3, a: undefined, b: 9)
    load(x: 4, a: 7, b: undefined)
    ```

  - Write code that looks like statically typed.

    > Because JIT optimization depends on type information.

- [JavaScript Engine Internals for JavaScript Developers](https://youtu.be/-lt6a9kbc_k)
- [JavaScript engine fundamentals: optimizing prototypes](https://mathiasbynens.be/notes/prototypes)
- [JavaScript engine fundamentals: Shapes and Inline Caches](https://mathiasbynens.be/notes/shapes-ics)
