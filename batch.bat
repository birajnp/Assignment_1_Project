:: Generate document in html and pdf formats
quarto.exe render ./src/qmd/population-dynamics.qmd  --to html,pdf

:: Move output to appropriate location
move /y .\src\qmd\*.html .\doc
move /y .\src\qmd\*.pdf  .\doc

:: Extract code from qmd file into a self-contained R script
R.exe CMD BATCH --vanilla .\src\R\population_code.R