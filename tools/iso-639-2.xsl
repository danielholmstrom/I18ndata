<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Extracts ISO-639-2 data with ISO-639-1 and ISO-639-3 references
         from http://en.wikipedia.org/wiki/List_of_ISO_639-2_codes
         -->
    <xsl:output
        encoding="UTF-8"
        method="xml"
        indent="yes"
        />

    <xsl:template match="/">
        <languages>

            <xsl:apply-templates select="//*[@id='iso-codes']/tr[position()>1]"/>

        </languages>
    </xsl:template>

    <xsl:template match="tr">
        <language>
            <iso-639-2_5>
                <xsl:apply-templates select="td[1]"/>
            </iso-639-2_5>
            <iso-639-3>
                <xsl:apply-templates select="td[2]"/>
            </iso-639-3>
            <iso-639-1>
                <xsl:apply-templates select="td[3]"/>
            </iso-639-1>
            <name language="en">
                <xsl:apply-templates select="td[4]"/>
            </name>
            <scope>
                <xsl:apply-templates select="td[5]"/>
            </scope>
            <type>
                <xsl:apply-templates select="td[6]"/>
            </type>
        </language>
    </xsl:template>

</xsl:stylesheet>
