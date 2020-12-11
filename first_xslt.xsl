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
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/> 
    
    <xsl:template match = "/">
        <html>
            <table>
                <xsl:apply-templates/>
            </table>
        </html>
    </xsl:template>
    
    
    <xsl:template match = "s">
        <p>
            <tr><td><xsl:apply-templates select="original"/></td><td><xsl:apply-templates select="edit"/></td></tr>
        </p>
    </xsl:template>
    

    
</xsl:stylesheet>