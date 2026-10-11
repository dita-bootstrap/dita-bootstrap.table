<?xml version="1.0" encoding="utf-8"?>
<!--
  This file is part of the DITA Bootstrap Table plug-in for DITA Open Toolkit.
  See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  version="2.0"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  xmlns:xhtml="http://www.w3.org/1999/xhtml"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  exclude-result-prefixes="xs dita-ot"
>

  <xsl:param name="defaultLanguage" select="'en'" as="xs:string"/>

  <xsl:variable
    name="BOOTSTRAP_TABLE_SUPPORTED_LANGUAGE"
    select="'((af|ar|ca|cs|da|de|el|en|es|et|eu|fa|fi|fr|he|hr|hu|id|it|ja|ka|ko|ms|nb|nl|pl|pt|ro|ru|sk|sv|th|tr|uk|ur|uz|vi|zh)(\-|$))'"
  />

  <xsl:include href="../Customization/xsl/tables.xsl"/>

  <xsl:template match="/ | @* | node()" mode="processHDF" priority="5">
      <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"/>
      <xsl:next-match/>
      <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-table@1.27.3/dist/bootstrap-table.min.css"
      integrity="sha384-ITZ/KDfTyAobiSNOWQXtckidYWnjwp8fYQqwl+M6568KJKzh4PDqusbhoyr7wT4D"
      crossorigin="anonymous"
    />
      <script
      src="https://cdn.jsdelivr.net/npm/bootstrap-table@1.27.3/dist/bootstrap-table.min.js"
      integrity="sha384-PCXzD9+BIZBoxHYpm07NqcdbtJylL7UwcCMs2OonBgci8qeEZq7KXZ3obEHwrwZM"
      crossorigin="anonymous"
    />
    <xsl:if test="matches($defaultLanguage,$BOOTSTRAP_TABLE_SUPPORTED_LANGUAGE)">
      <script
        src="https://cdn.jsdelivr.net/npm/bootstrap-table@1.27.3/dist/bootstrap-table-locale-all.min.js"
        integrity="sha384-ZEVxFFy97dV5j5wisZ74aXKOT6uci5AKM2Ud4M9xAs2K51KOh/4QW7iti/Ll8Cxz"
        crossorigin="anonymous"
      />
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
