<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs math xd"
    version="3.0">
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
                </style>
            </head>
            <body>
                <h1 align="center">The Dharma Bums Comparison</h1>
                <p align="center">This is a DIGIT 110 PROJECT made by BEN SIMON and JOEL "PIE" WATSON. This is a comparative view of the lines of the original version of The Dharma Bums versus how it was published. Yes.</p>
                <table align="center" border="1">
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
    
    <xsl:template match = "edit">
            <xsl:apply-templates/>
    </xsl:template>
    
</xsl:stylesheet>