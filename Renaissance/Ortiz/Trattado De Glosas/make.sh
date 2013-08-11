#!/bin/sh
#rm libro2.pdf
#lilypond-book --output out --pdf libro2.lytex
#cd out
#pdflatex libro2.tex
#cp libro2.pdf ..
#cd ..

rm libro2.pdf
rm libro2-urtext.pdf

lilypond -o libro2-modern -durtext=#f libro2.ly
lilypond -o libro2-urtext -durtext=#t libro2.ly
