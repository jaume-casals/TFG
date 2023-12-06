set AUX_DIR=output
set OUTPUT=output

pdflatex -interaction=nonstopmode -synctex=1 -file-line-error -max-print-line=10000 -output-directory=%OUTPUT% -aux-directory=%AUX_DIR% -shell-escape 00-main.tex
biber --output-directory %AUX_DIR% %AUX_DIR%\00-main
pdflatex -interaction=nonstopmode -synctex=1 -file-line-error -max-print-line=10000 -output-directory=%OUTPUT% -aux-directory=%AUX_DIR% -shell-escape 00-main.tex
