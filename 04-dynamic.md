#  Dynamic Content

3 hours

---------------------------------------------------

In an open publishing workflow formatting
elements can also cause changes in how your documents look.

## Learning Objectives

* Add an HTML widget
* Explore some Shiny reports
* Parameterize a report
* Integrate dynamic content from a web resource

----------------------------------------------------
## Creating a Markdown Document

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
