<%-- 
    Document   : agregarConsola
    Created on : 30 jun. 2020, 19:43:01
    Author     : Juan Manuel
--%>

<%@page import="Dao.Consola"%>
<%@page import="Dao.ConsolaBD"%>

<%
    boolean executeUpdate;
    ConsolaBD consola = new ConsolaBD();
    executeUpdate = consola.agregarConsola(new Consola(request.getParameter("plataforma"), request.getParameter("modelo"), request.getParameter("almacenamiento"), request.getParameter("color"), Integer.parseInt(request.getParameter("precio")), Integer.parseInt(request.getParameter("marca")),Integer.parseInt(request.getParameter("stock")) ));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Consola de Videojuegos</title>
    </head>
    <body>
        
        <%
            if (executeUpdate) { //Compara si el executeUpdate fue exitoso
        %>
        <br>
        <br>
        <div class="col">
            <div class="alert alert-success" role="alert">
                Consola de videojuegos agregada exitosamente a la Base de Datos
            </div>
        </div>
        <%
        } else { //Si no muestra un mensaje de error
        %>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                La consola de videojuegos no se agrego correctamente a la Base de Datos
            </div>
        </div>
        <%
            }
        %>
        <br>
        <div class="col">
            <a  href="index.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
        </div>
        
    </body>
</html>
