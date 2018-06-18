# Dotnet Engine Knitr
#
# This is a engine to run dotnet gists in an R presentation
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

eng_dotnet <- function(options) {
  # create a temporary file

  f <- basename(tempfile("dotnet", '.', paste('.', "dotnet", sep = '')))
  on.exit(unlink(f)) # cleanup temp file on function exit
  writeLines(options$code, f)

  out <- ''
  # if eval != FALSE compile/run the code, preserving output
  if (options$eval) {
    # https://github.com/filipw/dotnet-script :
    # choco install dotnet.script
    # or
    # dotnet tool install -g dotnet-script (preferred)
    out <- system(sprintf('dotnet script %s', paste(f, options$engine.opts)), intern=TRUE)
  }
  # spit back stuff to the user
  engine_output(options, options$code, out)
}

knitr::knit_engines$set(dotnet=eng_dotnet)
