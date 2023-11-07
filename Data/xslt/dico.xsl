<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : dico.xsl
    Created on : 7 novembre 2023, 15:45
    Author     : Hippolyte Djegomdé
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet 
            version="1.0"
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            xmlns:tux="http://myGame/tux"
            
            >
    
<xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Dictionnaire Tux</title>
            </head>
            <body>
                <h1>DICTIONNAIRE TUX</h1>
                <ol>
                    <xsl:apply-templates select="//tux:mot">
                         <xsl:sort  select="text()" order="ascending"/> 
                        <br/>
                    </xsl:apply-templates>
                   
                </ol>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tux:mot" >
            <li> <xsl:value-of  select="text()"/></li>
    </xsl:template>

</xsl:stylesheet>
