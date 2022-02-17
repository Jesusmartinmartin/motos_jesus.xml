<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

<xsl:template match="/">

<html lang="en">

<head>
    <title>Motos_jesus</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>

<body>
    <div class="container shadow bg-light">
        <nav class="navbar navbar-expand-sm navbar-danger bg-danger">
            <a class="navbar-brand" href="#"><img src="img/casco-hebo-enduro-mx-legend-carbon-rojo.png" alt="casco" width="70" /></a>
            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <img src="img/eslogan.png" alt="" width="300" />
                    </li>
                </ul>
            </div>
        </nav>



        <div class="row d-flex justify-content-center">
			<xsl:for-each select="motos/row">	
            <div class="col-md-6 fill-flex">
            <div class="card mt-3">
                <img class="card-img-top" src="{imagen}" alt="" />
                <div class="card-body">
                    <h4 class="card-title"><xsl:value-of select="nombre"/></h4>
					<p class="card-text"><xsl:value-of select="precio"/></p>
                    <p class="card-text"><xsl:value-of select="lugar"/></p>
                    <p class="card-text"><xsl:value-of select="combustible"/></p>
                    <p class="card-text"><xsl:value-of select="anio"/></p>
                    <p class="card-text"><xsl:value-of select="estado"/></p>
                    <p class="card-text"><xsl:value-of select="publicacion"/></p>
                </div>
            </div>        
            </div>
		</xsl:for-each>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>


</xsl:template>
</xsl:stylesheet>