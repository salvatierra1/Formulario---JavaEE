<%-- 
    Document   : Tabla
    Created on : 2 jun. 2022, 9:12:26 p. m.
    Author     : Usuario
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="logicaa.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <table class="table">
            <thead>
                <tr>
                    <th class="cell100 column2">Persona</th>
                    <th class="cell100 column3">Direccion</th>
                    <th class="cell100 column4">Dni</th>
                    <th class="cell100 column4">F. Nacimiento</th>
                    <th class="cell100 column5">Eliminar</th>
                    <th class="cell100 column7">Editar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String datePattern = "dd/MM/yyyy";
                    SimpleDateFormat dateFormatter = new SimpleDateFormat(datePattern);
                    List<Persona> listaPersona = (List) request.getSession().getAttribute("listaPersona");
                    for (Persona persona : listaPersona) {

                %>    
                <tr class="row100 body">
                    <%String nombreComp = persona.getNombre() + " " + persona.getApellido();%>
                    <td class="cell100 column2"><%= nombreComp%></td>
                    <%String direccion = persona.getDireccion();%>
                    <td class="cell100 column3"><%=direccion%></td>
                    <%String dni = persona.getDni();%>
                    <td class="cell100 column4"><%=dni%></td>
                    <%String fecha = dateFormatter.format(persona.getFechaNaci());%>
                    <td class="cell100 column4"><%=fecha%></td>
                    <%int id = persona.getId();%>
                    <td class="cell100 column5">
                        <form class="cell100 column5" name="borrarEmpleado" action="PersonaSvEliminar" method="post" style="display: inline">
                            <input type="hidden" name="id" value="<%=id%>">
                            <button type="submit" class="btn btn-danger btn-xs" date-title="Delete" style="display:inline">Eliminar</button>
                        </form>
                    </td>

                    <td class="cell100 column6">
                        <form class="cell100 column6" name="borrarModificar" action="PersonaSvModificar" method="post" style="display: inline">
                            <input type="hidden" name="id" value="<%=id%>">
                            <button type="submit" class="btn btn-primary" date-title="Edit" style="display:inline">Modificar</button>
                        </form>
                    </td>
                </tr>
                <%
                    }%>

            </tbody>
        </table>
        <hr>
        <h5>Crear Persona</h5>
        <div class="col-5">
            <form >
                <a href="index.jsp" class="btn btn-outline-primary" href="PersonaSv">Crear</a>  
            </form>
        </div>   
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    </body>
</html>
