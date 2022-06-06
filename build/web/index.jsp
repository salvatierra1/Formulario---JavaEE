<%-- 
    Document   : Formulario
    Created on : 2 jun. 2022, 2:55:06 p. m.
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="Web/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br>

        <div class="container">
            <h5>Crear Persona</h5>
            <hr>
            <form name="crearPeresona" id="form" action="PersonaSv" method="POST">
                <div class="caja">       
                    <h3 class="titulo">Persona</h3>
                    <div class="carga">
                        <input name="nombre" type="text" id="nombre" placeholder="Nombre">
                    </div>
                    <div class="carga">
                        <input name="apellido" type="text" id="apellido" placeholder="Apellido">
                    </div>
                    <div class="carga">
                        <input name="dni" type="text" id="dni" placeholder="DNI">
                    </div>
                    <div class="carga">
                        <input name="direccion" type="text" id="direccion" placeholder="Dirección">
                    </div>
                    <div class="carga">
                        <input name="fechaNE" type="date" id="fechaNacimiento" placeholder="Fecha Nacimiento">
                    </div>

                    <div class="carga">
                        <input type="submit" value="Guardar"  class="btn btn-primary" > 
                    </div>
                </div>
            </form>
            <hr>
            <h5>Lista de Personas</h5>
            <div class="col-5">
                <form action="PersonaSv" method="GET">
                    <a class="btn btn-outline-info" href="PersonaSv">Ver</a>  
                </form>
            </div>           
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    </body>
</html>
