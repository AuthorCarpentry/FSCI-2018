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

Gail to Add

## Integrated Code

The benefit of using Rstudio to do document creation is that you have the
ability to do computation, live within the journal.  First, let's load some
data into our notebook.  Look at the top of the notebook with in a
code chunk.  Code chunks are demarcated by three tics \`\`\`.  The first group
of tics is followed by a label that indicates the type of code and a
description.  So, for R code this label cound be `{r add_dataset}`.  You'll see
RStudio generates 

```{r plot_country, echo= FALSE, fig.width=10,fig.height=11}

doaj <- read.csv(file = "DOAJ_Seal.csv", header = TRUE)
ggplot(data=doaj, aes(doaj$PubCountry, fill=doaj$PubCountry)) + stat_count() + labs(x="Country", y="Count") + theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))
```

## Embedded Sub-Documents and Math



Previous: [Getting Started with Markdown](02-markdown.html) Next: [Dynamic Documents](04-dynamic.html)
