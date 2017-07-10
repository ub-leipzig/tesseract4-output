<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns:xhtml="http://www.w3.org/1999/xhtml">
    <xsl:template match="/">
        <root>
            <xsl:for-each select="xhtml:html/xhtml:body/xhtml:div">
                <page>
                    <id>
                        <xsl:value-of select="./@id"/>
                    </id>
                    <xsl:apply-templates select="."/>
                </page>                
            </xsl:for-each>
            
        </root>
    </xsl:template>
    <xsl:template match="xhtml:html/xhtml:body/xhtml:div">
        <xsl:apply-templates select="xhtml:div/xhtml:p/xhtml:span[@class='ocr_line']"></xsl:apply-templates>        
    </xsl:template>
    <xsl:template match="xhtml:div/xhtml:p/xhtml:span[@class='ocr_line']">
        <xsl:if test="normalize-space(string(.)) != ''">
        <xsl:for-each select=".">
            <line>
                <xsl:for-each select="./xhtml:span[@class='ocrx_word']">
                    <xsl:value-of select="normalize-space()"/>&#160;                    
                </xsl:for-each>
            </line>
        </xsl:for-each>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
