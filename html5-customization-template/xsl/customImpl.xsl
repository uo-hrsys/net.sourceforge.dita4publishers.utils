<xsl:stylesheet 
  xmlns:df="http://dita2indesign.org/dita/functions"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:relpath="http://dita2indesign/functions/relpath"
  xmlns:htmlutil="http://dita4publishers.org/functions/htmlutil"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  exclude-result-prefixes="df xs relpath htmlutil xd dc"
  version="2.0">


  
  <!--xsl:param name="MY.PARAM" select="'whatever'" /-->
  
  <!--xsl:template match="*" mode="generate-html5-page">
    <html>   
      <xsl:attribute name = "lang" select="$TEMPLATELANG" />    
      <xsl:apply-templates select="." mode="generate-head"/>     
      <xsl:apply-templates select="." mode="generate-body"/>
    </html>
  </xsl:template-->  
   


  <!-- used to defined initial content if javascript is off -->
  <!--xsl:template match="*" mode="set-initial-content">
    <noscript>
      <p><xsl:call-template name="getString">
                    <xsl:with-param name="stringName" select="'turnJavascriptOn'"/>
                </xsl:call-template>
      </p>
    </noscript>
  </xsl:template-->
  
  <!-- used to output the html5 header -->
  <!--xsl:template match="*" mode="generate-header">
    <xsl:param name="documentation-title" as="xs:string" select="''" tunnel="yes" />
    
    <div data-role="header" data-position="fixed">
       <a href="#" data-icon="home">Home</a>
    <h1><xsl:value-of select="$documentation-title"/></h1>
  </div>
    
  </xsl:template-->
  
  
   <!-- used to output the head -->  
    <!--xsl:template match="*" mode="generate-head">
      <head>

        
    </head>
    <xsl:sequence select="'&#x0a;'"/>
  </xsl:template-->
  
  <!-- generate body -->
  <!--xsl:template match="*" mode="generate-body">
    
    <body>

      <xsl:apply-templates select="." mode="set-body-class-attr" />
    
      <xsl:apply-templates select="." mode="gen-user-body-top" />
             
      <xsl:apply-templates select="." mode="generate-main-container"/>
  
    <xsl:apply-templates select="." mode="gen-user-body-bottom" />
    
    </body>
    
    <xsl:sequence select="'&#x0a;'"/>
    
  </xsl:template-->
    
  <!-- generate main container -->
  <!--xsl:template match="*" mode="generate-main-container">
    
  <xsl:apply-templates select="." mode="generate-header"/>
      
      <xsl:apply-templates select="." mode="generate-section-container"/>
      
      <xsl:apply-templates select="." mode="generate-footer"/>

  </xsl:template-->
  
  <!-- generate section container -->
   <!--xsl:template match="*" mode="generate-section-container">
       <xsl:param name="navigation" as="element()*"  tunnel="yes" />
       <xsl:param name="is-root" as="xs:boolean"  tunnel="yes" select="false()" />
   
   
       <div data-role="content">
      <xsl:choose>
          <xsl:when test="$is-root">
            <xsl:sequence select="$navigation"/>
          </xsl:when>
          <xsl:otherwise>
            
          </xsl:otherwise>
        
        </xsl:choose>
        
        <xsl:apply-templates select="." mode="generate-main-content"/>
    </div>
   </xsl:template--> 
  
  
   <!-- generate main content -->
  <!--xsl:template match="*" mode="generate-main-content"> 
     <xsl:param name="is-root" as="xs:boolean"  tunnel="yes" select="false()" />
     <xsl:param name="content" tunnel="yes" as="node()*" />
            
      <xsl:choose>
      
          <xsl:when test="$is-root">
            <xsl:apply-templates select="." mode="set-initial-content"/>
          </xsl:when>
          <xsl:otherwise>        
  
            <xsl:sequence select="$content"/>

          </xsl:otherwise>
        
        </xsl:choose>  
  </xsl:template-->
  
 
  <!-- generate html5 footer -->
  <!--xsl:template match="*" mode="generate-footer">  
   <footer">
  
  </footer>
  </xsl:template-->    

      
  <!-- 
      template declared for extention point purpose 
   -->
  <xsl:template match="*" mode="gen-user-top-head">
    <!-- to allow insertion into the head -->
  </xsl:template>
  
  <xsl:template match="*" mode="gen-user-bottom-head">
    <!-- to allow insertion into the head -->
  </xsl:template>
  
  <xsl:template match="*" mode="gen-user-body-class">
    <!-- to to append class class to the body element 
         to override class use xsl:template match="*" mode="set-body-class-attr"
    -->
  </xsl:template>
  
  <xsl:template match="*" mode="gen-user-body-top">
    <!-- to to append class class to the body element 
         to override class use xsl:template match="*" mode="set-body-class-attr"
    -->
  </xsl:template>
  
  <xsl:template match="*" mode="gen-user-body-bottom">
    <!-- to to append class class to the body element 
         to override class use xsl:template match="*" mode="set-body-class-attr"
    -->
  </xsl:template>



</xsl:stylesheet>
