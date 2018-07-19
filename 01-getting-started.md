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

1. Download [this zip file](/data/FSCI-2018-files.zip) and move
the file to your desktop.
2. If it's not unzipped yet, double-click on it to unzip it. You should end up
with a new folder called `FSCI-2018-files`.

## Intro to RStudio and knitting documents

Now open Rstudio (Applications/Rstudio).  Rstudio is the development
environment where we'll be working on our document.  The main panel you'll see
on the left is the Console, where you can run R code.  On the right is two
panels - the upper contains your environment (what R can access), and the lower
contains the files on your computer.  

The first thing to do is install some packages.  RStudio makes it easy to
install new packages to do things you want.  You can find packages by going to
the 'Packages' tab in the lower right panel.  You can install new packages by
clicking the Install button and typing in the package name.  For this workshop
we'll need the following packages:

- tidyverse
- DT
- rorcid
- httpuv

Now let's actually work with a document.  Click in the Files tab in the lower
right panel.  The file view in RStudio is just like
navigating in finder or windows explorer.  Let's find the FSCI-2018-files
folder we downloaded above.  Go to Desktop and FSCI-2018-files.  You'll see
lots of files we'll use during the workshop.  Double click on
'example_document.Rmd'.  

You'll see the document open in a new panel on the left hand side of the
screen.  This is an editor window, and you can change things in the document
here.  For now, just change the name in the document to your name.  

Knitting is a process in Rstudio that takes a text document and turns it into
an output (like html, docx, or slides).  Now click the knit button in the upper
left hand corner of the editor.    The first
time you do this you'll get a message that you need to install some packages.
You'll want to click Yes and wait for the packages to install.  Once the
installation you'll see an interactive demonstration document!

You can output this single file in multiple formats.  By default we've been
generating .html files, but we can also output to a word document.  If you
click on the downward arrow next to the knit button we see some default
formats.  Click on Word, and a word document will appear.  

While pdf is an option, this requires a TeX distribution which is annoying to
install and is not part of this workshop.

You can also select other output forms that aren't listed in the knitr
dropdown.  Tae a look at the document.  You'll see in the top a section called
`output` with sections under it like `html_document`.  If we change the top
output knit will produce a different result.  Try replacing `word_document`
with `slidy_presentation`.  This is a html presentation that you can use in 
any web browser.

Tomorrow we'll start working with actual document text!

Next: [Basic Markdown](02-markdown.html)
