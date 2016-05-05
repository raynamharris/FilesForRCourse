### This function checks that all the plot IDS (listed in the 'plots.csv' file)
### are found in the survey file ('surveys.csv')
### If all are found, the function prints "TRUE". 
### Otherwise, the function prints and error message and "FALSE"

check_plots <- function(survey_file="../data/surveys.csv",
                        plot_file="../data/plots.csv") {
  ## load files
  srvy <- read.csv(file=survey_file, stringsAsFactors = FALSE)
  plts <- read.csv(file=plot_file, stringsAsFactors = FALSE)
  
  ## Get unique plot id
  unique_srvy_plots <- unique(srvy$plot_id)
  
  if (all(unique_srvy_plots %in% plts$plots_id)) {
    message("Everything looks good.")
    return(TRUE)
  } else {
    warning("Something is wrong.")
    return(FALSE)
  }
}

check_plots()

surveys <- read.csv(file="../data/surveys.csv", stringsAsFactors = FALSE)
plots <- read.csv(file="../data/plots.csv", stringsAsFactors = FALSE)

nrow(surveys)
ncol(surveys)

dim(plots)

unique(surveys$species)

