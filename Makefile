##
# Project Title
#
# @file
# @version 0.1


doc:
	../jnw-actions/doc/gendoc
	cd docs && pandoc schematic.md -o schematic.html -s --katex --self-contained --css=../style.css
	cd docs && pandoc index.md -o index.html -s --katex --self-contained --css=../style.css
	cd docs && pandoc simulations.md -o simulations.html -s --katex --self-contained --css=../style.css

# end
