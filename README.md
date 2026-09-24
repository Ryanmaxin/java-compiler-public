# Joos 1W compiler

An OCaml compiler for Joos 1W, built by Arnav Tripathi, Andreja Japundzic, and Ryan Maxin for CS 444 at the University of Waterloo. It takes Java-like source through scanning, parsing, semantic checks, and code generation, then emits 32-bit x86 assembly.

The front end uses a hand-built scanner DFA and an LALR(1) parser. After AST construction and weeding, a series of passes resolves names across files, checks inheritance and types, and finds unreachable code. The back end computes object layouts, method dispatch, and runtime type data before writing assembly. We used OCaml's pattern matching and explicit data types to keep those passes manageable.

I'm Ryan. I worked on the scanner and parser infrastructure, AST construction and visualization, symbol binding and hierarchy checking, runtime metadata and dispatch tables, and the test and debug workflow. The three reports below cover the team's full design and each person's contributions.

**[View the project page](https://ryanmaxin.github.io/java-compiler-public/)**

## Design reports

- [Scanner, parser, AST, and weeder](docs/reports/a1-scanner-parser-ast-weeder.pdf)
- [Name resolution, type checking, and static analysis](docs/reports/a2-a4-semantic-analysis.pdf)
- [Code generation](docs/reports/a5-code-generation.pdf)

The project page also includes an AST visualization produced by the compiler. The [Joos 1W language reference](https://student.cs.uwaterloo.ca/~cs444/joos.html) describes the Java subset we targeted.

The compiler source remains private under the course's academic integrity rules. This repository contains only the project overview, reports, and visualization.

## Publishing

This is a static GitHub Pages site. The public files live in [`docs/`](docs/). In the repository's **Settings → Pages**, set **Source** to **Deploy from a branch**, then select **main** and **/docs**. This is a one-time setting. After that, each push to `main` updates the site; there is no build step.
