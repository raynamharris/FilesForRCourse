### This function checks that all the plot IDS (listed in the 'plots.csv' file)
### are found in the survey file ('surveys.csv')
### If all are found, the function prints "TRUE". 
### Otherwise, the function prints and error message and "FALSE"

check_pasilla <- function(samples="../data/pasillaSamples.csv",
                        genes="../data/pasillaGenes.csv") {
  ## load files
  samples <- read.csv(file=samples, stringsAsFactors = FALSE)
  genes <- read.csv(file=genes, stringsAsFactors = FALSE)
  
  ## Get unique plot id
  unique_samples <- unique(samples$x)
  
  if (all(unique_samples %in% genes$x)) {
    message("Everything looks good.")
    return(TRUE)
  } else {
    warning("Something is wrong.")
    return(FALSE)
  }
}

check_pasilla()

samples <- read.csv("../data/pasillaSamples.csv", sep= ",", stringsAsFactors = FALSE)
genes <- read.csv("../data/pasillaGenes.csv", sep= "," , stringsAsFactors = FALSE)

nrow(samples)
ncol(samples)

dim(genes)

unique(samples$x)

