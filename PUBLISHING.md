# Publishing this page

The public overview lives in [`README.md`](README.md). [`index.md`](index.md) includes that file, so GitHub Pages renders the same overview at the site URL. Edit the README for content changes; it links to the reports and the `getDensity` source, diagrams, and assembly.

The `getDensity` source in `examples/get-density/Main.java` was reconstructed from the supplied AST and assembly files because the original source was not present in the portfolio folders available in this workspace. It passes the compiler's semantic checks. Replace it with the original file if that becomes available.

In the repository's **Settings → Pages**, select **Deploy from a branch**, **main**, and **/(root)**. GitHub Pages uses Jekyll to render `index.md`. Once Pages is enabled, each push to `main` updates the site at <https://ryanmaxin.github.io/java-compiler-public/>.
