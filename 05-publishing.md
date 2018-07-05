#  Markdown Syntax

20 minutes

---------------------------------------------------

## Learning Objectives

* Take one document and use it to generate slides

----------------------------------------------------
## Creating a Markdown Document

So far, you have just written markdown in an online editor. Start by creating a local file. The file extension for markdown is .md. You can just open a text editor and create a file or do this from the commandline. use `cd` to go to the folder you want to work in. Then use `atom myresume.md` to create a markdown file.

## Working with Markdown in Atom
*You can skip this section if you are using a different text editor*.

Type some text into markdown. Now put some text into italics and bold using \* as you learned in the last lesson. What do you notice? One of the benefits of using Atom is that it gives you this *syntax highlighting* to make it easier for you to spot any problems in your text formatting.

Now press `ctrl+shift+m` (or select "Toggle Preview" under "Markdown Preview Plus" in the "Packages" menu). You will see your text formatted, just like you did in the online editor during the last lesson.


## Markdown syntax
You have already learned the two commands for bold and italics. Let's look at some other basics:

- To create headings, put one or more \# symbols at the beginning of a line, followed by a space. One \# is for a level one header, \#\# for a level two header, etc.
- To make bullet lists (such as this one), just start lines with a -; you can get additional levels by starting a line a couple of spaces or a tab in. Numbered lists work the same way using 1. 2. 3.
  
   ```
    - Topic 1
    - Topic 2  
    - Topic 3
      - Topic 3a
  ```
- To cite code (including markdown syntax as above) use \` on both sides for short bits and  \`\`\` in a separate line above and below larger codeblocks.
- Quote text using > at the beginning of the line (maybe you remember this from old e-mail programs?)

  ```
  > This is a Quote
  ```

- A link is set putting the text that you want to highlight in square brackets followed by the link in round brackets. Don't forget to include http:// or https:// at the beginning of the link

  ```
  [This is a link](http://www.example.com)
  ```
- You can find more markdown formatting options [here](https://guides.github.com/features/mastering-markdown/). Note that markdown comes in different dialects, referred to as "flavors". We are mainly going to be using elements that are part of a consensus referred to as [Common Markdown](http://commonmark.org/), though you can use any other components of the github flavored markdown linked above.


## Excercise
Now let's try this. Create your Resume using markdown following the template below. Fill in the data relevant to you.

----

# Resume of John Doe
* ORCID: https://orcid.org/0000-0001-8249-7388  
* [ScienceOpen Profile](https://www.scienceopen.com/user/fe25273d-b2ef-4843-b3a5-23ea6ae9f5e8)

## Objective
> To boldly go where no author has gone before


## Experience
* **Job 1**
  * *Dates*
  * Description/Accomplishment
* **Job 2**
  * *Dates*
  * Description/Accomplishment  
* **Job 3**
  * *Dates*
  * Description/Accomplishment

## Publications

(paste the output from DOI content negotiation here and mark it up with italics as appropriate)

Karcher, S., & Steinberg, D. A. (2013). Assessing the Causes of Capital Account Liberalization: How Measurement Matters. *International Studies Quarterly, 57(1)*, 128–137. https://doi.org/10.1111/isqu.12001


Karcher, S., & Schneider, B. R. (2012). Business politics in Latin America: Investigating structure, preferences, and influence. In P. R. Kingstone & D. J. Yashar (Eds.), *Routledge Handbook of Latin American Politics* (pp. 273–284). New York, NY: Routledge.

Schneider, B. R., & Karcher, S. (2010). Complementarities and Continuities in the Political Economy of Labor Markets in Latin America. *Socio-Economic Review, 8(4)*, 623–651. https://doi.org/10.1093/ser/mwq022

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
