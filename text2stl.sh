#!/bin/sh

convert -size 400x400 -background transparent -fill black -stroke black -gravity center -kerning -30 -font Helvetica-Bold caption:"$1" tmp.png

autotrace --output-file=tmp.eps tmp.png

pstoedit -dt -f dxf:-polyaslines tmp.eps tmp.dxf

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -m make -s text.stl text2stl.scad

rm tmp.png
rm tmp.eps
rm tmp.dxf

