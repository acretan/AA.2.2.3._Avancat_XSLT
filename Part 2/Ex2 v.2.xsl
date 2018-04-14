<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <Teams>
            <xsl:for-each select="equipos/equipo">
                <xsl:sort select='.' order='ascending' />
                <Team>
                    <Name>
                        <xsl:value-of select="nombre"/>
                    </Name>
                    <Members>
                        <xsl:for-each select="integrantes">
                            <Coach>
                                <xsl:value-of select="coach"/>
                            </Coach>
                        </xsl:for-each>
                    </Members>
                </Team>
            </xsl:for-each>
        </Teams>
    </xsl:template>
</xsl:stylesheet>
