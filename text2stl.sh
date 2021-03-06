#!/bin/sh

# To get a list of available fonts use this command: identify -list font
convert -size 360x360 -bordercolor transparent -border 20x20 -background transparent -fill black -gravity center -font Helvetica-Bold label:"$1" tmp.png

autotrace -output-file=tmp.eps tmp.png

pstoedit -dt -f dxf:-polyaslines tmp.eps tmp.dxf

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -m make -s text.stl text2stl.scad

rm tmp.png
rm tmp.eps
rm tmp.dxf

