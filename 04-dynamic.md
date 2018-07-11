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
authentication token from ORCID.  In the document go to the section called
'Principal Investigators Biosketch'.  Click the green arrow to run the code
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
will be read every time you use R.

Previous: [Getting Started with Markdown](00-getting-started.html) Next: [Github Pages](02-gh-pages.html)
