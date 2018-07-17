# Add the rorcid package to the function so the packages.bib file has the Chamberlain reference we need for the ORCID integration.

library(tidyverse)
library(knitr)
write_bib(c("tidyverse", "rmarkdown", "knitr"), file = "packages.bib"
)
