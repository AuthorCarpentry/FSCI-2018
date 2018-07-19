#  Introduction to Reproducible Authorship and Publishing
2 Hours

-------------------------

## Learning Objectives

* Meet instructors and other learners
* Describe ways of creating a research report
* Explore a reproducible document
* Install software needed for this workshop
* Test generating a content in multiple formats in Rstudio

----------------------------------------------------

## Introductions

Instructors and learners

Paper hasn't changed much in 400 years.

Review requirements of the scholarly record.

    1. Notification
    2. Dissemination
    3. Certification
    4. Preservation

## Exercise about publishing

What are the issues with the current publication system?  Join small groups
and come up with as many things as you can (77 characters or less).  We'll get 
back together in 10 minutes and listoff items.  If a group comes up with the 
same thing as you, cross it out.  The group with the last unique item wins!

## What can authors do?

How can the actual publication.

Now we'll show you the final result (on our machine).  

The first step in getting this dynmaic document is installing some software!

## Software Installation

R is a programming language that is especially powerful for data exploration,
visualization, and statistical analysis. To interact with R, we use RStudio.
For this workshop you'll need to install both R (version 3.4.3 or newer) and
RStudio on your computer.  

### Windows
Install R by downloading and running this
[.exe](https://cran.r-project.org/bin/windows/base/release.htm) file from CRAN. 
Also, please install the [RStudio
IDE](https://www.rstudio.com/products/rstudio/download/#download). 
Note that if you have separate user and admin accounts, you should run the 
installers as administrator (right-click on .exe file and select "Run as administrator" 
instead of double-clicking). Otherwise problems may occur later, for example when installing R packages.

### macOS
Install R by downloading and running this
[.pkg](https://cran.r-project.org/bin/macosx/R-latest.pkg) file from CRAN. Also, 
please install the [RStudio
IDE](https://www.rstudio.com/products/rstudio/download/#download).

### Linux
You can download the binary files for your distribution from
[CRAN](https://cran.r-project.org/index.html). Or you can use your package 
manager (e.g. for Debian/Ubuntu run sudo apt-get install r-base and for 
Fedora run sudo dnf install R). Also, please install the [RStudio
IDE](https://www.rstudio.com/products/rstudio/download/#download).


## Workshop Files

You also need to download some files for this workshop:

1. Download [this zip file]({{ page.root }}/data/FSCI-2018-files.zip) and move
the file to your desktop.
2. If it's not unzipped yet, double-click on it to unzip it. You should end up
with a new folder called `FSCI-2018-files`.

Install dependencies

tidyverse
rmarkdown
DT
rorcid
httpur

## Intro to RStudio and knitting documents

RStudio has four panels.  

Open 'Base_2013_day1.Rmd' in Rstudio.  Change the name in the document to your name.  

Then hit the Knit button to generate a formatted version of the document. 

You can output this single file in multiple formats.  By default we've been
generating .html files, but we can also output to a word document.

To output to slides, change the output format in the header to
slidy_presentation.  You can then open this up in your web browser and tab
through the presentation.

Next: [Basic Markdown](02-markdown.html)
