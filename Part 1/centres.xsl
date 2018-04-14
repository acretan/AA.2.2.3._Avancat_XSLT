<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <Centros_Educativos>
            <Publicos>
                <xsl:for-each select="response/row/row">
                    <xsl:if test="(codi_naturalesa = 1.00) and (codi_postal = 17300.00)">
                        <Centro>
                            <ID>
                                <xsl:value-of select="@_id"/>
                            </ID>
                            <Nombre>
                                <xsl:value-of select="denominaci_completa"/>
                            </Nombre>
                            <Comarca>
                                <xsl:value-of select="nom_comarca"/>
                            </Comarca>
                            <xsl:copy-of select="codi_centre"/>
                            <xsl:if test="tel_fon != ''">
                                <Telefono>
                                    <xsl:value-of select="tel_fon"/>
                                </Telefono>
                            </xsl:if>
                        </Centro>
                    </xsl:if>
                </xsl:for-each>
            </Publicos>
        </Centros_Educativos>
    </xsl:template>
</xsl:stylesheet>
