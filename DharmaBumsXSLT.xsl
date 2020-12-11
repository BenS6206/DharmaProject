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
                <title>Dharma Bums Encoded</title>
                <style type="text/css">
                    body
                    {
                    background-color: #b0c0ea;
                    
                    }
                    h1
                    {
                    font-weight: 1000;
                    font-size: 50px;
                    line-height: 40px;
                    text-align: center;
                    font-family: futura, sans-serif;
                    color: #5d5577;
                    }
                    h2
                    {
                    line-height: 5px;
                    text-align: center;
                    font-family: futura, sans-serif;
                    color: #5d5577;
                    }
                    h3
                    {
                    font-weight: 1000;
                    line-height: 0px;
                    text-align: center;
                    font-family: futura, sans-serif;
                    font-size: 30px;
                    color: #3a4376;
                    }
                    table.table1
                    {
                    border-width: 10px;
                    border-color: #171717;
                    background: #3a4376;
                    }
                    td.td1
                    {
                    padding-left: 5px;
                    padding-right: 5px;
                    font-family: helvetica, serif;
                    font-weight: 600;
                    color: #e9ebf6;
                    font-size: 30px;
                    background-color: cornflowerblue;
                    text-align:center;
                    padding-top: 5px;
                    padding-bottom: 5px;
                    border-top: solid #3a4376 10px;
                    border-bottom: solid #3a4376 10px;  
                    border-right: solid #3a4376 10px;
                    border-left: solid #3a4376 10px;
                    line-height: 40px;
                    
                    }
                    table.table2
                    {
                    border-width: 10px;
                    border-color: #171717;
                    background: #3a4376;
                    }
                    td.td2
                    {
                    padding-left: 5px;
                    padding-right: 5px;
                    font-family: helvetica, serif;
                    color: #5d5577;
                    font-size: 20px;
                    background-color: #e9ebf6;
                    text-align:center;
                    padding-top: 5px;
                    padding-bottom: 5px;
                    border-top: solid #3a4376 5px;
                    border-bottom: solid #3a4376 5px;  
                    border-right: solid #3a4376 5px;
                    border-left: solid #3a4376 5px;
                    line-height: 40px;
                    
                    }
                    p
                    {
                    
                    font-family: futura, sans-serif;
                    text-align: center;
                    padding-left: 100px;
                    padding-right: 100px;
                    padding-top: 20px;
                    font-size:20px;
                    color: #6b698f;
                    }
                    a:link
                    {
                    text-decoration: none;
                    color:#3a4376;
                    }
                    a:visited
                    {
                    color:#3a4376;
                    }
                    a:hover
                    {       
                    font-weight: 1000;                
                    }
                    a:active
                    {
                    text-decoration: none;
                    }
                    div.text
                    {
                    background-color: #e9ebf6;
                    top: 200px;
                    border: thick solid #3a4376;
                    margin: auto;
                    width: 70%;
                    padding-bottom: 20px;
                    }
                    div.title
                    {
                    background-color: #e9ebf6;
                    border: thick solid #3a4376;
                    margin: auto;
                    width: 500px;
                    color: #5d5577;
                    }
                </style>
            </head>
            <body>
                
                <div class="title"><h1>Dharma Bums Encoded</h1>
                    
                    <h2>Created by Ben Simon and Joel Watson </h2></div>
                <br/>
                <table align="center" class="table1">
                    <tr></tr>
                    <td class="td1"><a style="background: #d7e6fb;" href="index.html">Home</a></td>
                    <td class="td1"><a style="background: #d7e6fb;" href="Documents.html">Original Documents</a></td>
                    <td class="td1"><a  style="background: #d7e6fb;" href="DharmaBums.html">Final Tables</a></td>    
                    <td class="td1"><a style="background: #d7e6fb;" href="XSLT.html">Our Code</a></td>
                    <td class="td1"><a style="background: #d7e6fb;" href="aboutus.html">Credits</a></td>
                    
                </table>
                
                <br/>
                <div class="Title"><h3>Line Comparison</h3></div>
                <table class="table2" align="center">
                    <xsl:apply-templates/> 
                    
                    
                </table>
                
                <br/>
                
                <div class="Title"><h3>Dialogue</h3></div>
                <table class="table2" align="center">
                    <tr>
                        <td class="td2"><b>Line Number</b></td>
                        <td class="td2" width="500px">Speaker</td>
                        <td class="td2" width="500px">Text</td>
                    </tr>
                    <tr>
                        <td class="td2"><b>[DIALOGUE NUMBER HERE!]</b></td>
                        <td class="td2" width="500px">[SPEAKER HERE!]</td>
                        <td class="td2" width="500px">[DIALOGUE TEXT HERE!]</td>
                    </tr>
                </table>
                
                <br/>
                
                <div class="Title"><h3>Mark Analysis</h3></div>
                <table class="table2" align="center">
                    <tr>
                        <td class="td2"><b>#</b></td>
                        <td class="td2">Mark Location</td>
                        <td class="td2">Mark Color</td>
                        <td class="td2">Mark Shape</td>
                        <td class="td2">Mark Word</td>
                    </tr>
                    <tr>
                        <td class="td2"><b>[INSERT MARK # HERE!]</b></td>
                        <td class="td2">[INSERT MARK LOCATION HERE!]</td>
                        <td class="td2">[INSERT MARK COLOR HERE!]</td>
                        <td class="td2">[INSERT MARK SHAPE HERE!]</td>
                        <td class="td2">[INSERT MARK WORD HERE!]</td>
                    </tr>
                </table>
                
                <br/>
                
                <div class="Title"><h3>Margin Contents</h3></div>
                <table class="table2" align="center" >
                    <tr>
                        <td class="td2">Location</td>
                        <td class="td2">Contents</td>
                        
                    </tr>
                    <tr>
                        <td class="td2"><b>[NOTE LOCATION HERE!]</b></td>
                        <td class="td2">[INSERT NOTE HERE!]</td>
                    </tr>
                </table>
                
                <p xmlns:dct="http://purl.org/dc/terms/" xmlns:cc="http://creativecommons.org/ns#" class="license-text"><a rel="cc:attributionURL" property="dct:title" href="https://argynarg.github.io/DharmaProject/">Dharma Bums Encoded</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/argynarg">Benjamin Simon</a> is licensed under <a rel="license" href="https://creativecommons.org/licenses/by/4.0">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" /><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" /></a></p>
                
            </body>
        </html>
    </xsl:template>

    

    <xsl:template match="mark">
        <xsl:variable name="Property" as="xs:string+" select="@*/string()"/>
        <span class="{$Property}"><xsl:apply-templates/></span> 
    </xsl:template>  
    <!--ebb: Above is a new rule I wrote to simplify your procesing of <mark> and its various attributes.
       This is applying a variable in XSLT to collect all of the attribute values of ANY attributes you have set on a format element anywhere in the document.
       Since you are outputting these all as values of @class in HTML, we can output multiple values so if something is indented
       and capitalized, you get both properties, separated by a space. Multiple @class values just come out like this and are pretty common to use in HTML:
        
        <span class="inline gray scratch">....</em>
       
       
       This way you'll definitely get all the values, and your CSS styling can respond to as many of them as you wish.
       
  
       -->
    
    
    <xsl:template match = "s">
        <tr>
            <td class="td2"><b><xsl:value-of select="@num"/></b></td>
            <td class="td2" width="500px"><xsl:apply-templates select="original"/></td>
            <td class="td2" width="500px"><xsl:apply-templates select="edit"/></td>
        </tr>
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