# Joos 1W compiler

This folder collects the design reports for a compiler built in CS 444 at the University of Waterloo by Arnav Tripathi, Andreja Japundzic, and me, Ryan Maxin. We wrote it in OCaml for Joos 1W, a deliberately smaller version of Java 1.3. The compiler reads a program across multiple `.java` files, checks it, and emits 32-bit x86 assembly.

**[View the project page](https://ryanmaxin.github.io/java-compiler-public/)**

We built it in stages. The front end scans source with a hand-built DFA, parses it with an LALR(1) table, turns the parse tree into an AST, and weeds out programs that the grammar alone cannot reject. The middle end resolves names across files, builds class and interface relationships, disambiguates names, checks types, and runs reachability analysis. The back end lays out objects, arrays, dispatch tables, and subtype data before generating assembly.

The interesting part, for me, was getting the stages to agree on what each name and expression meant. We used symbol IDs and side tables to carry bindings and analysis results between passes without repeatedly changing the AST. Later, the same resolved information fed the runtime layout and code generator. The reports go into the decisions, bugs, and tradeoffs behind that pipeline.

## Reports

| Report | What it covers |
| --- | --- |
| [A1: Scanner, Parser, AST, and Weeder](CS%20444%20A1%20Report%20%28FINAL%29.pdf) | The hand-built scanner DFA, LALR(1) parser, AST construction, weeding, and early test harness. |
| [A2–A4: Name Resolution, Type Checking, and Static Analysis](CS%20444%20A2-4%20Report%20%28FINAL%29.pdf) | Cross-file symbols, hierarchy checks, name disambiguation, type checking, and reachability. |
| [A5: Code Generation](CS%20444%20A5%20Report%20%28FINAL%29.pdf) | 32-bit x86 generation, object and array layouts, dynamic dispatch, runtime type checks, and end-to-end tests. |

The [Joos language reference](https://student.cs.uwaterloo.ca/~cs444/joos.html) explains the subset we targeted. [image.png](image.png) is a type-checked AST visualization from our compiler; its nodes show resolved names, symbol IDs, and expression types.

The compiler source is kept private under the course's academic integrity rules. These reports and the visualization are the public project record.

## Publishing

This directory is the Git checkout for the public project. GitHub Pages serves [index.html](index.html) and the other files here directly. In the repository's **Settings → Pages**, set **Source** to **Deploy from a branch**, then select **main** and **/(root)**. After that one-time setting, pushing to `main` updates the site automatically.
