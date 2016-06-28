<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<root>

    <xsl:for-each select="root/obj">
<objektid> <xsl:value-of select="a5000"/></objektid>
   
     <objektname> <xsl:value-of select="a5200"/></objektname>
<name>  <xsl:value-of select="aob40/a8000"/></name>     
<birth> <xsl:value-of select="aob40/asz1a"/></birth>   
<death> <xsl:value-of select="aob40/asz2a"/></death>
<location><xsl:value-of select="a5007/a5012"/></location>   
    
    </xsl:for-each>
</root>
</xsl:template>
</xsl:stylesheet>