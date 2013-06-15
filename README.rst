multisvg2pdf
============

Take a folder of SVG files to produce a single PDF. 

Essentially a makefile; this project is serving as reminder of said makefile (having recreated it several times) and as an excercise in using git(hub).

Requirements:

* `inkscape <http://inkscape.org/>`_ - Convert SVG to PDF. Also excellent for creating SVGs in the first place.
* `pdftk <http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/>`_ - Combining PDFs.
*  `make <http://www.gnu.org/software/make/>`_ - Put it all together.

Instructions
------------

#. Create 1 SVG per page, named such that their sorted names match their intended order in the document.
#. run make. If your have many pages, use `parallel make <http://www.gnu.org/software/make/manual/html_node/Parallel.html>`_.
#. Profit!

Notes
-----

Tested on OSX only, but not for very long.
