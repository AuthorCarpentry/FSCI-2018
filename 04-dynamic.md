#  Dynamic Content in the Reproducible Report

3 hours

---------------------------------------------------

In a reproducible report, elements in the `Rmarkdown` file affect not only how your documents look, but also how they render and behave when output to a final format. That is because the coded text and scripts within the `Rmarkdown` file are **computationally actionable**. A computer is operating on the document to combine and render its content, providing you more power than you would have working manually as a human author.

In this lesson we'll add a set of dynamic features to the exercise file and knit it to evaluate the outputs in HTML and Word.   


## Learning Objectives

* Integrate dynamic content from an `R` script so the output is continually updated 
* Distinguish between dynamic elements that will (and won't) work in multiple output formats (HTML, Word)
* Add an HTML widget to allow user interaction in an output HTML document
* Parameterize a document to permit efficient and powerful customized HTML reports
* Demonstrate the power of integrating content from the Web into your reproducible report

----------------------------------------------------

## Content generated from `R` scripts

Up to now, you have manually entered three dates referenced in this document. Let's replace them with dynamically generated dates that will auto-update by the computer!

1. Open the file `insert_4a_dates.R`  
2. Copy the code into the 3 different sections of the exercise file, as directed in the comments included in`insert_4a_dates.R`  
3. Close the file `insert_4a_dates.R`


Another section of the exercise file that can be populated by the computer is the number of journals in the *DOAJ Seal* dataset. Let's replace manually composed text with computer code!

1. Open the file `insert_4a_jnls.txt`
2. Copy the code into the **Data being collected** section of the exercise file, making it the first sentence. 
3. Close the file `insert_4a_jnls.txt`

Save the changes to the exercise file and knit to HTML and Word. Can you find where the dynamic-generated inline text now appears?

## Auto-generate bibliography files

Have you wondered why the YAML in the exercise file contains two separate bibliography files (`oajournals.bib` and `packages.bib`)? Why not make one concatenated file?

The reason for the two files is that some of the references cited in the report represent `R` packages used to generate the report. These are continually updated in the [The Comprehensive R Archive Network, CRAN](https://cran.r-project.org/). If we manually maintained the bibliography file we'd be editing it continually to reflect the new version of any `R` package we use.

Alternatively, we can use the `write_bib.R` function in `knitr` to dynamically generate a `packages.bib` file for all the packages referenced in the report. This more powerful and efficient form of literature programming provides certainty that the references are always up-to-date!

In this exercise, let's add the citation for the `rorcid` package that we'll be using later on in this lesson.  

1. Open `packages.bib` file to see that it currently does not include a citation for`rorcid`. Close that file.
2. Open the script file `write_bib.R` and on the third line -- the one that starts with `write_bib(c("tidyverse"...)` add "`rorcid`" in quotes to the list.
3. Save the changes to `write_bib.R`
4. Select all of the code in  `write_bib.R` with your mouse. Once it is all highlighted, press `command+enter` to execute the code. You can watch the code run in your console window.
5. Open `packages.bib` file again to see that it now includes a citation for`rorcid`. Close that file.

## Building in User Interaction (Part 1)

`Rmarkdown` offers multiple ways to build in user interactivity into your reproducible report. Enhancing documents in this way allows readers of your report to interact with, inspect, and evaluate the data and code you've published. 

Let's start by adding a `code folding` option in our HTML output. This small interactive feature allows readers to see or hide the code chunks embedded in your report.

1. In the YAML header of the exercise file, add a new line below the `output:` and `html:` lines. 

`code_folding: hide`

This line should be at the same indent as other html options such as `css`, `toc`, `number_sections`, etc.

2. Save the changes to the exercise file and knit to HTML and Word. 

What difference do you see in how `code folding` renders in the HTML and Word outputs? You can ponder this question as you enjoy a morning break!

---------------------------------------------------

## Building in User Interaction (Part 2)

The data underlying this report is a table showing _DOAJ Seal_ journals as rows, and the characteristics of those data as the columns. Let's make all of that data fully accessible and reuseable for the readers of this report. 

To accomplish this enhancement, we need to copy a code chunk that formats the underlying dataset using the Datatable package. This code chunk relies on an [HTML Widgets](https://www.htmlwidgets.org/) package that enables JavaScript visualization libraries  in `Rmarkdown`. HTML widgets are a more advanced `R` object to build and are not covered in this course. However, we can insert a pre-built data table for our report to illustrate the power of interactive features in reproducible reporting!

1. Open the R script `insert_4b_DTtable.R` and copy all of the code with your mouse. Close the file.

2. In the exercise file, scroll down to the **Annexes** heading and paste in the code chunk. Save the change and knit the document to HTML to see the dynamic data table generated in your report.

3. Let's tidy up this section of the report by adding some additional text and a link from the static table located in an earlier section.

* Open the file `insert_4b_table.txt` and copy the first line of text (marked with a ## header). Keep the file open...
* In the exercise file, paste the copied text under the heading **Annexes** and above the data-table code chunk.







## Pull from an ORCID profile
In order to dynamically pull from an ORCID profile, we have to get an
authentication token from ORCID.  In the document find the section called
'Principal Investigators Biosketch'.  We'll be doing a three step process to
connect our document with our ORCID account.

Open the file `insert_4b_orcid.R`. Copy the first code chunk to the 'Principal
Investigators Biosketch' section of your document.

Click the green arrow to run the code
chunk.  This will open up a web browser to the ORCID web site, where you'll log
in as normal.  In your R environment you'll see a variable called 'token'.
This is what provides access to ORCID.

In the R console type `token`.  This will print the token value to the console.
Next copy and paste the following code chunk:

```
if(!file.exists("~/.Renviron")) # only create if not already there
  file.create("~/.Renviron")    # (don't overwrite it)
file.edit("~/.Renviron")
```

This will open up a text file in Rstudio.  In this file you'll want to type

```
ORCID_TOKEN="1c7..."
```

where `1c7...` is replaced by the long string that we printed to the R console
earlier.  You'll want to copy everything after `BEARER`. Save this file, which
will be read every time you use R.  This file will show up in your home
directory, which is different from your current directory.

Now go back to the document.  Edit the text to say 'This is auto-populated..'
and then add the text '`r bio`' which will place your bio in the
document.  Then knit and you'll see your biography from ORCID in the document.

Now go to your ORCID account and make a change to your biography.  Now all you need to update the
biosketch in your document is to click the knit button.

Previous: [Getting Started with Markdown](00-getting-started.html) Next: [Github Pages](02-gh-pages.html)
