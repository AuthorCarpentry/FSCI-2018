#  Dynamic Content in the Reproducible Report

3 hours

---------------------------------------------------

In an open authoring workflow, elements in the Rmarkdown file not only affect how your documents look but also how they render and behave when output to final version. That is because the coded text and scripts within the Rmarkdown file are **computationally actionable**. A computer is operating on the document to combine and render its content, providing you more power than you would have working manually as a human author.

In this lesson we'll add a set of dynamic features to the exercise file and knit to evaluate the outputs in HTML and Word.   


## Learning Objectives

* Integrate dynamic content from an R script so the output is continually updated 
* Distinguish between dynamic elements that will (and won't) work in multiple output formats (HTML, Word)
* Add an HTML widget to allow user interaction in an output document
* Parameterize a document to permit efficient and powerful customized HTML reports
* Demonstrate the power of integrating content from the Web into your reproducible report

----------------------------------------------------
## Content generated from R scripts

Up to now, you have manually entered three dates referenced in this document. Let's replace them with dynamically generated dates that will auto-update by the computer!

* Open the file `insert_4a_dates.R`
* Copy the code into the 3 different sections of the document, as directed in the comments of this file
* Close the file `insert_4a_dates.R`


Another section of the exercise file that can be more accurately and efficiently entered by the computer is the number of journals in the DOAJ Seal dataset. Let's replace manually crafted text with computer code!

* Open the file `insert_4a_jnls.txt`
* Copy the code into the **Data being collected** section, making it the first sentence. 
* Close the file `insert_4a_jnls.txt`

Save the changes to the exercise file and knit to HTML and Word. Can you find where the dynamic-generated inline text now appears?

## Auto-generate bibliography files for content that is subject to continued change

Have you wondered why the YAML in the exercise file contains two separate bibliography files (`.bib`)? Why not make one concatenated file?

The reason for the two files is that some of the references cited in the report -- the R packages used to generate the report -- are continually updated in the [The Comprehensive R Archive Network, CRAN](https://cran.r-project.org/). We can use the `write_bib.R` function in `knitr` to dynamically generate a `packages.bib` file for all the packages referenced with the certainty the references are always up-to-date!

In this exercise, let's add the citation for the `rorcid` package that we'll be using later on.  

1. Open `packages.bib` file to see that it currently does not include a citation for`rorcid`. Close that file.
2. Open the script file `write_bib.R` and on the third line -- the one that starts with `write_bib(c("tidyverse"`... add the "`rorcid`" in quotes to the list.
3. Save the changes to `write_bib.R`
4. Select all of the code in  `write_bib.R` with your mouse and once it is all highlighted, press `command+enter` to execute the code. You can watch the code run in your console window.
5. 





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
