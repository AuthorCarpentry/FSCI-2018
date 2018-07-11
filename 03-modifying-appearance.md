#  Markdown Syntax

20 minutes

---------------------------------------------------

In an open publishing workflow formatting
elements can also cause changes in how your documents look.

## Learning Objectives

* Show how to modify document sections
* Modify specific document formatting
* Learn how code can be integrated in a document

----------------------------------------------------
## Document Sections

We have lots of sections in our document; it would be nice if these were
listed in a table of contents and numbered so we could easily refer to a 
specific section.  We don't want to have to manually update the table of
contents or renumber everything when we move sections around; we want knitter
to do everything for us.

In order to customize the appearance of our document, we need to pass
information to knitter about what we want.  We use the YAML header, where we
customized the title and author, in order to set specific options.  

### Table of Contents

In the YAML we have a number of output formats.  You'll notice when you change
the knitter output format that the format you're interested in moves to the top
of the list.  We can make customizations to the format by removing the word
`default` after the format and including an indented list of options.  If we
want to include a table of contents, we add the option `toc: yes` to both the
`word_document` and `html_document` formats.  Then use the knit button to see
the results.

Thee are options that impact the appearance of the TOC.  For example, you can
a layer of sections (like 'Metadata' under Data being collected) by using the
option 'toc_depth: 2'

### Section Numbers and Formatting

Section numbers is where the behavior of different formats starts to diverge.
To add section numbers to our HTML document we just need to add the option
`number_sections: yes`.  We can also have the TOC appear as a document sidebar
by adding `toc_float: yes` to our options.

For the word document, section numbering is controlled by the document theme
(below).

## Document Themes and Custom Formatting

### HTML

Knitr includes some built-in themes that format the overall document. [Cilck
here to view available themes](https://bootswatch.com/3/).  You can control
which theme is used for the document by adding `theme: readable`.  Try
switching our a different theme and see what happens! 

These themes are build using standard web CSS.  If we don't like how any of the
built in themes look, we can use CSS to make specific changes.  In our document
the quotes look to big - they are larger than the surrounding text!  Make a
text file by going to `File/New File/Text File` in RStudio.  This will open up
an editor window where you can paste the following css code chunk:

```
blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 14px;
    border-left: 5px solid #eee;
}
```

This will edit the spacing and fint size of all the quotes in the document. You
can use simmilar standard CSS to modify the appearance of all other elements in
your document; Remember markdown is really just an easy way of indicating HTML
tags and CSS lets you modify those tags.

When you have a completed css file, click the save icon and save the file
as `custom.css`.  Note that you can call the file anything you want, but it's
good to include the css extension.  You can then load this file in your
document by adding the option `css: custom.css` to your YAML header.

### Word

You can customize word document styling, such as fonts, sizing, and section
numbering, within word.  You then provide knitr with the stylized document that
knitr will build the new document from.  Because editing word document styling
is a pain, we've created a document with section numbering that you can use.
You just need to add `reference_docx: "Base_2013_day3_style.docx"` to the YAML
header for the `word_document` type and knit to see the result.

## Integrated Code

The benefit of using Rstudio to do document creation is that you have the
ability to do computation, live within the journal.  First, let's load some
data into our notebook.  Look at the top of the notebook where the DOAJ data is
imported in a code chunk.  Code chunks are demarcated by three tics \`\`\`.  The first group
of tics is followed by a label that indicates the type of code and a
description.  So, the label in this example is `{r add_dataset}`.  You'll see
RStudio makes pretty formatting around the code chunk.  There are options for
each chunk, and you can run the code by clicking the green arrow.  Then you
press the arrow, you'll notice an output message and a change in the right
'Environment' section of RStudio.  The message is the output from the
operation, and the right panel shows that the data file has been loaded.  You
can hide the output message by clickin on the up arror or modifying the options
so that `message=FALSE`.

Let's add a new code chunk that will do something fun! At the bottom of the
'Project Description' add a new code chunk with the label `{r plot_country,echo= FALSE,fig.width=10,fig.height=11}`

and contents:

```
doaj <- read.csv(file = "DOAJ_Seal.csv", header = TRUE)
ggplot(data=doaj, aes(doaj$PubCountry, fill=doaj$PubCountry)) + stat_count() + labs(x="Country", y="Count") + theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))
```

Hit the green button and you'll see a plot appear.  When you knit the document,
this code will also execute and place a plot in the document.  

We can do the same thing to generate additional plots.  Add this code with the
label 'plot_license' before the section on Metadata.

```
doaj <- read.csv(file = "DOAJ_Seal.csv", header = TRUE)
ggplot(data=doaj, aes(doaj$JnlLicense, fill=doaj$JnlLicense)) + stat_count() + labs(x="License", y="Count", title = "DOAJ Seal by Country") 
```

## References

References are another area of document preparation where automation is really
helpful.  References in knitr are handled with BibTex files (.bib), which is a
reasonably standard format that can be produced by most reference managers and
online services.  We've provided a `oajournals.bib` file for you to work with
during this workshop.  There is an entire section of the YAML header that handles
references called `bibliography`. You then provide knitr with the name of the
BibTex file like:

```
bibliography:
- oajournals.bib
``` 

Let's open our `oajournals.bib` file and see what it looks like.  You'll see
citation information about each article in groups indicated by an `@article`
tag, followed by a label (typically the last name of an author and the year of
publication e.g. Yound_2015), followed by citation information.  If you look at
the current document, citations have been written in text (e.g. Castro et al
(2017)).  We'll want to replace them by machine readable tags that knitr will
be able to combine into a bibliography.  We use the @ symbol to indicate a
reference, so replace each reference with the appropriate tag like
`@Castro_2017`.

The reference list is automatically added to the end of the document, so we can
delete the dummy references that were there.  You'll notice that
`Vasilevsky_2017` showed up in the text as `n.d.`, even though it's in the
reference list.  If we look in the BibTex file, we see that no authors and date
are defined for this reference.  Knitr tries its best, but won't work correctly
if the data is not available.

## Embedded Sub-Documents and Math

To date we've been writing everything in one Rmarkdown document.  We can
actually build our document from sub-documents that knitr will integrate into
the output.  Find a document in your folder called `equations-child.Rmd`.  You
can see that this file has a YAML header with a full citation, followed by some
Rmarkdown text.  You'll also see some equations written in LateX.  That's
right; you can write LateX and it will get correctly formatted for the final
document.  

Let's add this to our document at the end of the 'Project Description'.  You
add child documents with a code chunk, and include the document location in the
label like `{r equations, child = "equations-child.Rmd"}`. 

When you knit you get nicely formatted equation in both html and word.  You'll
notice the formatting for the reference is a bit wonky-we'll talk about that
tomorrow.

Previous: [Getting Started with Markdown](02-markdown.html) Next: [Dynamic Documents](04-dynamic.html)
