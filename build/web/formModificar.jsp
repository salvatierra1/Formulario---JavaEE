<%-- 
    Document   : formModificar
    Created on : 3 jun. 2022, 3:55:10 p. m.
    Author     : Usuario
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="logicaa.Persona"%>
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
        <div class="container">
            <form name="carga" id="entre" action="PersonaSvModificar" method="get">
                <%
                    String datePattern = "yyyy-MM-dd";
                    SimpleDateFormat dateFormatter = new SimpleDateFormat(datePattern);

                    HttpSession misession = request.getSession();
                    Persona persona = (Persona) misession.getAttribute("persona");
                    String fechaNac = dateFormatter.format(persona.getFechaNaci());
                    {%>
                <div class="caja"> 
                    <h2 class="titulo">Persona</h2>
                    <div class="carga">
                        <input name="nombre" type="text" id="nombre"  value="<%=persona.getNombre()%>"></p>
                    </div>
                    <div class="carga">
                        <input name="apellido" type="text" id="apellido"  value="<%=persona.getApellido()%>"></p>
                    </div>
                    <div class="carga">
                        <input name="dni" type="text" id="dni"  value="<%=persona.getDni()%>"></p>
                    </div>
                    <div class="carga">
                        <input name="direccion" type="text" id="direccion"  value="<%=persona.getDireccion()%>"></p>
                    </div>
                    <div class="carga">
                        <input name="fechaNaci" type="text" id="fechaNacimiento" " value="<%=fechaNac%>"></p>
                    </div>
                    <input type="hidden" name="id" value="<%=persona.getId()%>">
                    <div class="carga">
                        <button class="btn btn-primary" type="submit">Guardar</button>
                    </div>
                    <%}%>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    </body>
</html>
