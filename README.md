<h1><img alt="Pluto.jl" src="assets/logo.svg" width=300 height=74 ></h1>

Lightweight ***reactive*** notebooks for Julia ⚡ - welcome to Pluto!

_**Explore models and share results** in a notebook that is_
- **_reactive_** - when changing a function or variable, Pluto automatically updates all affected cells.
- **_lightweight_** - Pluto is written in pure Julia and is an installable package.
- **_modern_** - responsive, intuitive user experience; beautiful exported documents; custom themes.

<img alt="reactivity screencap" src="demo/plutodemo.gif" >


## Input

The central idea is that Pluto notebooks are ***reactive***, just like [Observable notebooks](https://observablehq.com/@observablehq/observables-not-javascript), but using Julia instead of JavaScript. Cells can be placed in any order - our intelligent AST parser figures out the dependencies between them and takes care of execution. When you change a variable, Pluto automatically re-runs the cells that refer to it.

Unlike Jupyter or Matlab, there is **no mutable workspace**, but rather a _one-to-one corresponce_ between variables and code. In a Pluto notebook, the value of a variable _always_ corresponds to the code that defines it.

## Output

Cell output is simple: one cell outputs one variable, which is displayed using the richest available formatter. We believe that this limitation actually [_makes programming easier_](https://medium.com/@mbostock/a-better-way-to-code-2b1d2876a3a0)!

Your notebooks are saved as pure Julia files, which you can then import as if you had been programming in a regular editor all along. You can also export your notebook with output as attractive HTML and PDF documents. By reordering cells and hiding code, you have full control over how you tell your story.

<img alt="formatting screenshot" src="demo/formatting.png" width="50%">

## Installation

_(To developers: follow [these instructions](https://github.com/fonsp/Pluto.jl/blob/master/dev_instructions.md) to start working on the package.)_

After [installing julia](https://julialang.org/), add the package:
```julia
julia> ]
(v1.0) pkg> add Pluto
```

To run the notebook server:
```julia
julia> using Pluto
julia> Pluto.run(1234)
```

Then go to [`http://localhost:1234/`](http://localhost:1234/) to start coding!

<img alt="plotting screencap" src="demo/plutoODE.gif" >

## Note

This package is still in its early days - go to the [issue tracker](https://github.com/fonsp/Pluto.jl/issues) to see what's up!

Let us know what you think! 😊

<img alt="feedback screencap" src="https://user-images.githubusercontent.com/6933510/78135402-22d02d80-7422-11ea-900f-a8b01bdbd8d3.png" >

Questions? Have a look at the [FAQ](https://github.com/fonsp/Pluto.jl/wiki).

_Created by [**Fons van der Plas**](https://github.com/fonsp) and [**Mikołaj Bochenski**](https://github.com/malyvsen). Inspired by [Observable](https://observablehq.com/)._
