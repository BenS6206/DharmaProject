## Dharma Bums: Project Review


* Site publication: <https://argynarg.github.io/DharmaProject/>
* GitHub: <https://github.com/argynarg/DharmaProject>
* Developers: Ben Simon and Joel Watson
* Date of Evaluation: 2020-12-26
* Evaluated by: @ebeshero

### General
This project was an interesting experiment in seeing what you could do with a single heavily marked page that combined typescript with handwritten annotation, and comparing it to a published version of the same page. I selected it for an assignment option deliberately thinking it would make for a concise but intensive immersion in text encoding. You did some intelligent work here in organizing the complexity of the page in your XML code and in figuring out a way to represent your findings, mainly using tables in HTML.

### Digital Document Curation
Some of your most interesting work was in your initial decisions for encoding your photo facsimile page in XML. You made a decision to set up a hierarchy holding each sentence as represented in the hand-marked page vs. the published version of *Dharma Bums*. This was a smart decision for breaking the document into manageable units for comparison, which you were later able to translate into HTML tables, row by row representing sentence by sentence. 

In table after table on this page, <https://argynarg.github.io/DharmaProject/DharmaBums.html>, you seem to be experimenting with different ways to display the information you curated in the XML. You didn’t only try to display this in *just one* way, but considered alternatives. I like the open-minded adventurousness of this; you are exploring possibilities and demonstrating how one document (your source XML) can serve multiple purposes to show different kinds of information.

That said, if you were to revise this page for, say, a presentation about what we could learn about the passage of an author’s typescript through an editor’s hands on its way to publication, what might you want to change? (There is an event called DIGIT Fest coming up, for example, to which we might be inviting speakers with interesting projects to share with a wider audience, and there might well be a conference or two in the future, or an opportunity to reference this work in a job or graduate school application.) One of you, Ben, mentions an interest in storytelling on your Credits page. That is what is missing on the website: *storytelling*, the story that this one page can tell us thanks to your work, and also the story of your encounter with this document, and why you made the decisions you did. If you are taking this project beyond simply the occasion of completing an assignment for a class and making it a demonstration for your portfolios of serious work you have done as DIGIT students, you should take a moment to tell the stories that this website is right now only hinting to us. This means, probably, expanding the short statements on the Home (index.html) page, possibly adding a new page (maybe about.html?) and/or maybe just writing some paragraphs to accompany the page views on the Original Documents page. 

What you say to *frame* your project on the Home page is sensible: you inform your visitors what they can find in the site. I am recommending simply to build on that to talk to us a little more about what is interesting here, what conclusions you drew. Tell the stories. 

### Telling the story about the code
What we see on the “Our Code” page are screen shots taken in oXygen, which are not very easy to read unless you expect people to zoom in. There are better ways to feature your work, and that includes linking to your code files directly in the GitHub repo where people can more easily explore them *as* code. This page could be telling us the story of your decisions in preparing the XML markup and drafting the schema. It could point out some decisions you made for encoding handwriting you saw on the page. It could discuss how you figured out a way to classify the marks you saw. It is rarely ever helpful just to *display* code without any discussion of things you'd like people to notice. What do you want us to notice about your code, if you were taking us through your code repository like you were showing people through a house? 

One of the best examples I know for writing a good "coding methodology" page was written up by some of my former students on the Emily Dickinson project team: <http://dickinson.newtfire.org/methodology.html>
Now, that project went on over two semesters and took on an afterlife of its own (one of the student developers, Nicole Lottig, has since graduated but still works on this project and wants to expand that project to cover all of Dickinson’s poetry!) I mention this because, you wouldn't have *nearly* as much to write as the Dickinson team, but you could write something in a similar style to discuss how you worked out your strategies for coding, how you designed your schema (linking to your code in your GitHub repo), what you were doing with XSLT to structure the reading view, how you worked with CSS styling... I know this takes time and you were short on that at the end of the semester, but you can add more now—as an investment in sharing this very real, and potentially influential public-facing project you launched in a class once.

### HTML and CSS issues
Okay, there are numerous issues with the HTML and CSS in the project that seem to reflect a tension between old-fashioned inline styling properties and working with a separate CSS file. There is a lot of clean-up to do here to remove the inline styling and simplify your work. Current standards of the Worldwide Web Consortium (w3C) have deprecated reliance on inline styling and strongly recommend separating the CSS from the HTML, and it is important that you as DIGIT students understand *why*. The reason is simply for accessibility to the widest range of readers and technologies. HTML (and all markup) needs to be human-readable as well as machine-readable, and some readers may be accessing your work in nonstandard ways that involve translating your HTML into formats they can more easily access through screen-reader technologies or braille browsers. For the widest range of access, you want the simplest HTML you can provide. The table gives meaningful structure, it does not in its own code need to supply a set width. 

Consider, too, a more flexible approach to styling, attending more to simply making things reliably readable than controlling exactly how and where they appear. Sometimes your styling decisions get in the way of legibility, as with the representation of Joel Watson’s name on website banner. Separate the styling from the content, so *all* the styling is together in one place, your CSS file, and check that the values you are using are valid. Just because the page displays in browsers does not mean they will always support things when you decide to use 1000 as a font-weight (that's not a legal value). 

That said I am impressed with your ingenuity in finding your way to the tooltip feature you supplied in that last table in the so-called “Final Tables” page. That was some smart design work and it is using HTML’s capacities in a helpful way to share your transcription data about the handwritten marks on the page. But why is that page on your website called “Final Tables”? What is “Final” about them, exactly? (Is that a gesture to some story of a process that you have not told us yet?) Also couldn't you move that last table up so that its display simply becomes the left column of your first table? It appears to be a more complete rendering of the source typescript.

One more thing: your tables need header cells to tell us what we are seeing in each column. That is easily provided in your XSLT in the template in which you declare the table in the first place. Where you have:

```xml
<xsl:template match="/">
   <table>
      <xsl:apply-templates select="//chapter/s"/>     
  </table>
</xsl:template>
```
simply add a single table row along the top containing special `<th>` (or table heading) cells, like this:

```xml
<xsl:template match="/">
   <table>
        <tr>
            <th>Sentence number</th>        
            <th>Hand-marked typescript</th>
            <th>Viking Press version</th>           
        </tr>        
      <xsl:apply-templates select="//chapter/s"/>     
  </table>
</xsl:template>
```

### Closing Comments
It is inevitable that a project launched inside a semester will not be exactly perfect. The most important thing is that you learned about text encoding and what you can do with it, and your project admirably represents a learning process. It can be more than that, if this is a project you want to feature in your portfolios and as a path to helping to demonstrate your capacities with document data curation and website development. I hope you will make this site tell more stories, and tell them in a simpler style, on the way to sharing those interesting data tables. 

