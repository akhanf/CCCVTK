open: cv.pdf
	open cv.pdf

cv.pdf: cv.tex
	pdflatex cv.tex cv.pdf

cv.tex: cv.xml
	php cv-to-latex.php > cv.tex

cv.xml:
	echo "using cv.xml in curr folder"

clean:
	rm -f cv.tex cv.pdf

test: cv.xml
	php cv-to-latex.php

