# example of building a single markdown file into a standalone .html.
# TODO: convert to a python script that will operate over the markdown
# (probably with some prepas steps for custom macros/etc.)
pandoc test.md -o index.html --standalone --embed-resources --highlight-style=pygments
