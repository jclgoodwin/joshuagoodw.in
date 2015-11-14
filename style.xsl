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
        <style>
          {% capture include_to_scssify %}
            {% include muesli.scss %}
          {% endcapture %}
          {{ include_to_scssify | scssify }}
        </style>
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
    <p>You can subscribe using any good feed reader, including these popular ones:</p>
    <ul>
      <li><a href="http://www.feedly.com/" id="feedly">Feedly</a></li>
      <li><a href="http://www.newsblur.com/" id="newsblur">NewsBlur</a></li>
      <li><a href="http://theoldreader.com/" id="theoldreader">The Old Reader</a></li>
      <li><a href="http://feedwrangler.net/" id="feedwrangler">Feed Wrangler</a></li>
      <li><a href="https://feedbin.me/" id="feedbin">Feedbin</a></li>
    </ul>
    <script>
      document.getElementById('feedly').href = 'http://cloud.feedly.com/#subscription/feed/' + window.location;
      document.getElementById('newsblur').href = 'http://www.newsblur.com/?url=' + window.location;
      document.getElementById('theoldreader').href = 'http://theoldreader.com/feeds/subscribe?url=' + window.location;
      document.getElementById('feedbin').href = 'https://feedbin.me/?subscribe=' + window.location;
    </script>
    <p>The following items (with their full text) currently appear in this RSS feed:</p>
    <ul>
      <xsl:apply-templates select="item" />
    </ul>
  </xsl:template>

  <xsl:template match="item">
    <li><a href="{link}" class="item"><xsl:value-of select="title" disable-output-escaping="yes" /></a>     </li>
  </xsl:template>

</xsl:stylesheet>
