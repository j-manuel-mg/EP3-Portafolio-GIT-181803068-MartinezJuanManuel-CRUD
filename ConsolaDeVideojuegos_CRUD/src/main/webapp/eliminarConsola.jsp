<%-- 
    Document   : eliminarConsola
    Created on : 5 jul. 2020, 21:41:04
    Author     : Juan Manuel
--%>

<%@page import="Dao.Consola"%>
<%@page import="Dao.ConsolaBD"%>
<%@page import="Dao.ConsolaBD"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Consola de Videojuegos</title>
    </head>
    <body>

        <%
            boolean executeUpdate;
            ConsolaBD consola = new ConsolaBD();
            executeUpdate = consola.eliminarConsola(new Consola(Integer.parseInt(request.getParameter("idConsola"))));

            if (executeUpdate) {
        %>
        <br>
        <br>
        <div class="col">
            <div class="alert alert-success" role="alert">
                Consola de videojuegos Eliminado exitosamente
            </div>
        </div>
        <%
        } else {
        %>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                No se pudo eliminar la consola de videojuegos, intentelo de nuevo
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
