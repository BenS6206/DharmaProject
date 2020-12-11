<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs math xd"
    version="3.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 11, 2020</xd:p>
            <xd:p><xd:b>Author:</xd:b> jo3lp</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:template match="/">
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
    <xsl:template match = "s">
        <tr><td><b><xsl:value-of select="@num"/></b></td>
            <td width="500px"><xsl:apply-templates select="original"/></td>
            <td width="500px"><xsl:apply-templates select="edit"/></td></tr>
    </xsl:template>

            </body>
        </html>
    </xsl:template>
    

    
    
    
</xsl:stylesheet>