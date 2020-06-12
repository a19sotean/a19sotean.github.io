<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" />
    <xsl:template match="/vueltamundo">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Vuelta al mundo</title>
      

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"/>
        <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link rel="alternate" type="application/rss+xml" title="Vuelta al mundo. Andrea Solís Tejada" href="./canal.rss" />

        <link rel="icon" href="./vectores/ship.svg" type="image/svg"/>
    </head>
    <body>
        <nav class="coral" role="navigation">
          <div class="nav-wrapper container">
            <ul class="right hide-on-med-and-down">
              <li><a href="../../index.html">Página web principal</a></li>
            </ul>
            <ul id="nav-mobile" class="sidenav">
                <li><a href="../../index.html">Página web principal</a></li>
              </ul>
              <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            </div>
          </nav>
          <div id="index-banner" class="parallax-container">
            <div class="section no-pad-bot">
              <div class="container">
                <br></br>
                <h1 class="header center red-text text-lighten-2">Vuelta al mundo en 80 días</h1>
                <div class="row center">
                  <img src="images/vuelta.jpg"/></div>
                  <br></br>
                </div>
                <br></br>
        
              </div>
            </div>
            <div class="parallax">
          </div>
          <div class="container"/>
            <div class="section"/>
          
          <br></br>

                  <div class="mapita">
                    <h4>Ruta del recorrido completo. Pulsa
                      <i class="medium material-icons">location_on</i>para +info</h4>
                    
                  
                      <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1YPRMO1hhdrQQmF29-FkkCKmzczLwbeVx" width="640" height="480"></iframe>
                  </div>
          

            <div class="container separador">
              <xsl:for-each select="etapa">
          <div class="row">
              <div class="col s12 m7">
                <div class="card">
                  <div class="card-image">
                      <img>
                          <xsl:attribute name="src">
                          <xsl:value-of select="img_salida"/>
                          </xsl:attribute>
                      </img>
          
                    <span class="card-title"><h4 class="h4color">
                      Etapa <xsl:value-of select="@numero"></xsl:value-of>
                    </h4></span>
                  </div>
                  <div class="card-content">
                      <ul>
                          <li>Ciudad de salida: <xsl:value-of select="ciudad_salida"></xsl:value-of> </li>
                          <br></br>
                          
                          <li>Ciudad de paso: <xsl:value-of select="ciudad_paso"></xsl:value-of> </li>
                          <br></br>
                          <li>Imagen de ciudad de paso: <br></br><img>
                            <xsl:attribute name="src">
                            <xsl:value-of select="img_paso"/>
                            </xsl:attribute>
                          </img> </li>
                          <br></br>
                          <br></br>
                          <li>Ciudad de llegada: <xsl:value-of select="ciudad_llegada"></xsl:value-of> </li>
                          <br></br>
                          <li>Imagen ciudad de llegada: <br></br><img>
                            <xsl:attribute name="src">
                            <xsl:value-of select="img_llegada"/>
                            </xsl:attribute>
                          </img> </li>
                          <br></br>
                          <li>Transporte/transportes utilizados durante la etapa: <xsl:value-of select="transporte"></xsl:value-of> </li>
                          <br></br>
                          <li>Descripción de la etapa: <xsl:value-of select="descripcion"></xsl:value-of> </li>
                          <br></br>
                        </ul>
                </div>
              </div>
            </div>
            </div>
          </xsl:for-each>
          </div>
          
          <br></br>

          


            <footer class="page-footer red">
                <div class="container">
                  <div class="row">
                    <div class="col l6 s12">
                      <h5 class="white-text">Biografía</h5>
                      <p class="grey-text text-lighten-4">Mi nombre es Andrea y soy estudiante del I.E.S. Gran capitán.</p>
            
            
                    </div>
                    <div class="col l3 s12">
                      <h5 class="white-text">Twitter</h5>
                      <ul>
                        <li><a class="white-text" target="_blank" href="https://twitter.com/Andyin_">@Andyin_</a></li>
                      </ul>
                    </div>
                    <div class="col l3 s12">
                      <h5 class="white-text">Github</h5>
                      <ul>
                        <li><a class="white-text" target="_blank" href="https://github.com/a19sotean">a19sotean</a></li>
                      </ul>
                    </div>
                    <div class="col l3 s12">
                      <h5 class="white-text">RSS</h5>
                      <ul>
                        <li><a class="white-text" target="_blank" type="application/rss+xml" href="./canal.rss">Canal RSS</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </footer>


            </body>
    </xsl:template>
</xsl:stylesheet>
