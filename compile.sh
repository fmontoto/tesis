#!/bin/sh

#file="$1"
file="/Users/fmontoto/Projects/tesis/memoria"
W_DIR="/Users/fmontoto/Projects/tesis/"
CDW=$(pwd)
cd ${W_DIR}
BIN_PATH="/usr/local/texlive/2014/bin/x86_64-darwin/"

#pdflatex
${BIN_PATH}pdflatex -synctex=1 -interaction=nonstopmode ${file}.tex

#bibtex
${BIN_PATH}bibtex ${file}.aux

#index/glossarie
#${BIN_PATH}makeindex ${file}.idx

#${BIN_PATH}makeindex -s  ${file}.ist -t ${file}.glg -o ${file}.gls ${file}.glo

#${BIN_PATH}makeglossaries ${file}

#acronym:
#${BIN_PATH}makeindex -s ${file}.ist -t ${file}.alg -o ${file}.acr ${file}.acn

#pdflatex
${BIN_PATH}pdflatex -synctex=1 -interaction=nonstopmode ${file}.tex
${BIN_PATH}pdflatex -synctex=1 -interaction=nonstopmode ${file}.tex

cd${CWD}
