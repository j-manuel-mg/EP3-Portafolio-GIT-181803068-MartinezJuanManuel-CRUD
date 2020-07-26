<%-- 
    Document   : consolaVendida
    Created on : 26 jul. 2020, 1:36:14
    Author     : Juan Manuel
--%>

<%@page import="Dao.Consola"%>
<%@page import="Dao.ConsolaBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consola de videojuegos vendida</title>
    </head>
    <body>

        <%
            boolean executeUpdate;
            ConsolaBD consola = new ConsolaBD();
            executeUpdate = consola.editarStock(new Consola(Integer.parseInt(request.getParameter("stock")),Integer.parseInt(request.getParameter("idConsola"))));

            if (executeUpdate) {
        %>

        <br>
        <br>
        <div class="col">
            <div class="alert alert-success" role="alert">
                Transaccion realizada exitosamente
            </div>
        </div>
        <%
        } else {
        %>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                No se pudo completar la compra, intentelo de nuevo
            </div>
        </div>
        <%
            }
        %>
        <br>
        <div class="col">
            <a  href="vender.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
        </div>

    </body>
</html>
