# Publishing this page

The public overview lives in [`README.md`](README.md). [`index.md`](index.md) includes that file, so GitHub Pages renders the same overview at the site URL. Edit the README for content changes; it links to the reports, example source files, and compiler visualizations.

In the repository's **Settings → Pages**, select **Deploy from a branch**, **main**, and **/(root)**. GitHub Pages uses Jekyll to render `index.md`. Once Pages is enabled, each push to `main` updates the site at <https://ryanmaxin.github.io/java-compiler-public/>.
