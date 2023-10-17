[book]
authors = ["Demian"]
language = "zh"
multilingual = false
src = "src"
title = "promised land"

[preprocessor.katex]
after = ["links"]
macros = "macros.txt" # ref from https://github.com/Trapdoor-Tech/Halo2-Book/blob/master/book/macros.txt

# To automatically reload the book when you change the po/xx.po file
[build]
extra-watch-dirs = ["po"]


[preprocessor.toc]
command = "mdbook-toc"
renderer = ["html"]
marker = "[TOC]"
max-level = 4




# This will run mdbook-gettext on the source after things like {{ #include }} has been executed
[preprocessor.gettext]
after = ["links"]


[output.html]
#additional-css = ["theme/css/mdbook-admonish.css", "theme/pagetoc.css", "theme/css/open-in.css"]
#additional-js  = ["theme/pagetoc.js", "theme/mermaid.min.js", "theme/mermaid-init.js"]
git-repository-url = "https://github.com/zkp-co-learning/zkp-co-learning.github.io"
edit-url-template = "https://github.com/zkp-co-learning/zkp-co-learning.github.io/edit/main/{path}"
git-branch = "main"
open-on-text = "Found a bug? [Edit this page on GitHub.]"