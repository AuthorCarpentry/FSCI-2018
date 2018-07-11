#  Introduction to Reproducible Reporting using RMarkdown 

90 minutes 

**Still in draft as of Wed 4:20 pm!**

---------------------------------------------------

## Learning Objectives

* Identify characteristics of reproducible reports based on a published example provided in class
* Review the evolution of the computational narrative (aka literate programming) as a precursor to reproducible reporting
* Create a simple Rmarkdown document with code chunks in RStudio (as a first building block of a reproducible report) 
* Explain the technology stack used to create a reproducible report in RStudio



----------------------------------------------------

## Anatomy of an RMarkdown Reproducible Report

It's time to start building your own Reproducible Report! The course instructors have prepared all the content as text and script files, so you can focus on learning Rmarkdown. Let's go step by step:

Step 1. In RStudio, navigate through the Files directory to the `FSCI-2018/data` subfolder and open the exercise file `Base_2013_day2_in.Rmd`. Immediately save it as `Base_2013_day2_out.Rmd` and continue to work on the 'out' file during this Lesson.

Step 2. Note that this file has three main components, as follows:

a. `YAML Header` set off with three dashes `---` above and below and a blank line following the three dashes at the bottom

b. The main body of the text

c. Code chunks that contain R code that is executed when the document is knit to HTML or another output format (*Please ignore the code chunks for now -- we will master them in the next Lesson!*)


Step 3. With the *Rmarkdown Cheatsheet* and *Reference Guide* at your fingertips, edit the exercise file per the following instructions 


**YAML Header**

In the `author` field, enter your own Name and Institution surrounded by quotes  
In the `date` field, enter today's date


**Text Document**


Scholarly publishing requires us to format our text documents to clarify
meaning. For example,

* Headings and subheadings represent document structure, such as Sections
* White space represents paragraphs or other text blocks with different content
* Block quotes represent text that came from a third-party source
* Font styles such as italic and bold represent emphasis
* Font styles representing non-proportional text, such as examples of computer code
* Lists and Tables represent concisely summarized information or data
* Hyperlinks represent refernces to related information elsewhere within the document, or outside of the document
* Inline images illustrate points made in the text
* Footnotes represent commentary on the main text


**Let's add RMarkdown syntax to our report to better communicate it's meaning.** 


1. Create headings and subheadings by inserting one or more \# symbols at the beginning of a line, followed by a space. One \# is for a level one header, \#\# for a level two header and so on. 

For this Exercise, assign Level 1, 2, and 3 headers so the exercise file reflects the sections of a Data Management Plan per the Digital Curation Centre's checklist (see the printed model in your packet)

2. Add emphasis to the text, where appropriate, using single or double asterisks. Examples of text passages in want of emphasis are:  the phrase "Not Applicable"; the title of the Project; titles of publications.

3. To set-off code or technical terminology, use the backtick symbol. A single \` on both sides works for short bits, and  three backticks \`\`\` in a separate line above and below is best for larger codeblocks. You can decide what text represents code in the exercise file.

4. Bulleted lists

To make unnumbered bullet lists , just start lines with a single asterisk \* or \ _ underscore and a space for the bullet item.  Numbered lists work the same way using 1. 2. 3. or a. b. c.  

To make a nested list, indent four spaces below the first level bullet and add another bullet using \+ 

For this Exercise, find the list bullets in need of formatting and add the relevant Rmarkdown syntax. Bullets appear in  'Related Policies'; 'Data Being Collected'; and 'Ethics'.



- Quote text using > at the beginning of the line (maybe you remember this from old e-mail programs?)

  ```
  > This is a Quote
  ```

- A link is set putting the text that you want to highlight in square brackets followed by the link in round brackets. Don't forget to include http:// or https:// at the beginning of the link

  ```
  [This is a link](http://www.example.com)
  ```
- You can find more markdown formatting options [here](https://guides.github.com/features/mastering-markdown/). Note that markdown comes in different dialects, referred to as "flavors". We are mainly going to be using elements that are part of a consensus referred to as [Common Markdown](http://commonmark.org/), though you can use any other components of the github flavored markdown linked above.



## Code samples
Here is how to use `curl` to get a bibliographic reference for a DOI in APA style:
```
curl -LH "Accept: text/x-bibliography; style=apa" https://doi.org/10.1126/science.169.3946.635
```

---
**Solution**: If you run into trouble, you can check the syntax for the above [here](GITHUBLINK).

---

## Markdown and html
Now let's look at how the markdown you wrote corresponds to html. Right-click on the preview window, select "Save as HTML" and save the file myresume.md.html somewhere on your computer. Now open a browser (Firefox or Chrome) and open that file. Right-click somewhere in the web document that open and select "Inspect Element".

> ## Challenge
> Can you match markdown and html elements? How are they different? What do you think are the advantages of each format?
> 
> > ## Solution
> > Markdown and html translate neatly: e.g. the headings are the same as h1, h2, h3, italics are the same as &lt;i&gt; tags, etc.
> > But note how hard the html is to right, with the need to get all the tags right, and how hard to read it is for you.
> > On the other hand, note all the additional information the HTML is able to include that isn't printed. That can be very useful, e.g. to include even more structure in a page or to add metadata.

Previous: [Getting Started with Markdown](00-getting-started.html) Next: [Github Pages](02-gh-pages.html)
