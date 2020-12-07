<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math xd"
    version="3.0">
    
    <!--2020-12-3 ebb: I added an XHTML namespace line to your root element so you will output this as good HTML for your website. 
    And I've also added an <xsl:output> line below for the same reason. 
    -->
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Nov 29, 2020</xd:p>
            <xd:p><xd:b>Author:</xd:b>Ben Simon and Joel "Pie" Watson</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:template match = "/">
        <html>
            <head>
                <style>
                    table
                    {
                        
                        background-color:aliceblue;
                    }
                    td
                    {
                        text-align:center;
                        padding-top: 5px;
                        padding-bottom: 5px;
                    }
                    h1{margin:auto;}
                 
                </style>
            </head>
            <body>
                <h1>The Dharma Bums Comparison</h1>
                <p align="center">This is a DIGIT 110 PROJECT made by BEN SIMON and JOEL "PIE" WATSON. This is a comparative view of the lines of the original version of The Dharma Bums versus how it was published. Yes.</p>
                <table align="center" border="1">
                    <!--ebb: HTML/CSS no longer uses align:center. Instead
                   you center using the CSS property margin:auto; 
                    To make sure your HTML is coming out valid, you want to 
                    remove all the align="center" attributes and go up and edit
                    your CSS above. I started this with the h1 element. 
                    
                    Read more about this at https://www.w3schools.com/css/css_align.asp 
                    
                    Basically you want to open your HTML output in oXygen and make sure it's green and valid.
                    It isn't right now because you have a lot of styling properties embedded in your HTML tags. 
                    
                    If you want ALL of your <td> widths to be set to 500px, there's no need to code that in the HTML.
                    Put it in the CSS as 
                    td {width:500px;}
                   
                    -->  
                    <xsl:apply-templates/>
                </table>    
            </body>
            
        </html>
    </xsl:template>
    
    
    <xsl:template match = "s">
        <tr><td><b><xsl:value-of select="@num"/></b></td><td width="500px"><xsl:apply-templates select="original"/></td><td width="500px"><xsl:apply-templates select="edit"/></td></tr>
    </xsl:template>
    
    <xsl:template match = "original">
            <xsl:apply-templates/>
    </xsl:template>
    <!--ebb: This is a great start. How about outputting more of the interesting markup you did in the original?
    You could output HTML <sup> or <sub> elements to show stuff up above or below the line to call attention to some of the handwritten stuff you marked in the original.
   You could also use the HTML <span> element with some @class attributes that you work on styling with CSS to yield some visible HTML output about some other kinds of marks you've coded
   
   One way I do this in some of my projects is output the attribute values as text in a special <span> that I style so it stands out from the normal text. 
    I'd recommend something like this:
    
    <xsl:template match="mark[@location='aboveline']">
    <sup><xsl:value-of select="@color"/> <xsl:value-of select="@shape"/></span>

    </xsl:template>
    
   That would literally output: <sup>blue swoosh</sup>, and it would render those words a little above the line. I would give that a special font and color,
   and explain somewhere on your page that this is info about marks left on the original. 
    
    Think about how to output marks that are literally crossing out text: that should be featured here. There's super easy CSS to give you a strike-through
    I would suggest where you have <mark shape="slash"> that you want to output <span class="slash">...</span>, and style that 
    with the CSS property text-decoration: line-through;
    
    Check out some examples of the CSS text-decoration property in action here: https://www.w3schools.com/cssref/tryit.asp?filename=trycss_text-decoration 
    -->
    <xsl:template match = "edit">
            <xsl:apply-templates/>
    </xsl:template>
    
</xsl:stylesheet>