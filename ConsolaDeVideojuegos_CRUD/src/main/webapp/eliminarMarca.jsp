<%-- 
    Document   : eliminarMarca
    Created on : 6 jul. 2020, 12:09:34
    Author     : Juan Manuel
--%>

<%@page import="Dao.Catalogo"%>
<%@page import="Dao.CatalogoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Marca</title>
    </head>
    <body>
        
        <%
            boolean executeUpdate;
            CatalogoBD marca = new CatalogoBD();
            
            executeUpdate = marca.eliminarMarca(new Catalogo(Integer.parseInt(request.getParameter("idMarca"))));
            
            if (executeUpdate) {
        %>
        
        <br>
        <br>
        <div class="col">
            <div class="alert alert-success" role="alert">
                Marca Eliminada exitosamente
            </div>
        </div>
        <%
        } else {
        %>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                No se pudo eliminar la marca, intentelo de nuevo
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
