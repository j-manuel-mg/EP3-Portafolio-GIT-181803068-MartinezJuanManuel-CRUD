<%-- 
    Document   : agregarMarca
    Created on : 6 jul. 2020, 10:02:39
    Author     : Juan Manuel
--%>

<%@page import="Dao.Catalogo"%>
<%@page import="Dao.CatalogoBD"%>
<%
    boolean executeUpdate;
    CatalogoBD marca = new CatalogoBD();
    executeUpdate = marca.agregarMarca(new Catalogo(request.getParameter("marca")));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Marca</title>
    </head>
    <body>

        <%
            if (executeUpdate) { //Compara si el executeUpdate fue exitoso
        %>
        <br>
        <br>
        <div class="col">
            <div class="alert alert-success" role="alert">
                Marca agregada exitosamente a la Base de Datos
            </div>
        </div>
        <%
        } else { //Si no muestra un mensaje de error
        %>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                La Marca no se agrego correctamente a la Base de Datos
            </div>
        </div>
        <%
            }
        %>
        <br>
        <div class="col">
            <a  href="catalogo.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
        </div>

    </body>
</html>
