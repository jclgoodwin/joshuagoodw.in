---
---
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
  <xsl:output method="html" indent="yes" version="4.0" />
  <xsl:variable name="title" select="/rss/channel/title" />

  <xsl:template match="/">
    <html>
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>RSS feed &#8211; <xsl:value-of select="$title" /></title>
        <link rel="stylesheet" href="/css/muesli.css" />
      </head>
      <body>
        <div id="page">
          {% include header.html %}
          <xsl:apply-templates select="rss/channel" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="channel">
    <h1>RSS feed</h1>
    <p>It might not look like it, but this is the RSS feed for <code><xsl:value-of select="link" /></code></p>
    <p>You can subscribe (for free!) using any good feed reader like NetNewsWire, NewsBlur or Feedbin.</p>
    <p>The following items (with their full text) currently appear in this RSS feed:</p>
    <ul>
      <xsl:apply-templates select="item" />
    </ul>
  </xsl:template>

  <xsl:template match="item">
    <li><a href="{link}" class="item"><xsl:value-of select="title" disable-output-escaping="yes" /></a>     </li>
  </xsl:template>

</xsl:stylesheet>
