<%-- 
    Document   : formularioEliminarMarca
    Created on : 6 jul. 2020, 12:01:07
    Author     : Juan Manuel
--%>

<%@page import="Dao.CatalogoBD"%>
<%@page import="Dao.Catalogo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    int idMarca = 0;
    if (request.getParameter("idMarca") != null) {
        idMarca = Integer.valueOf(request.getParameter("idMarca"));
%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Eliminar Marca</title>
    </head>
    <body>

        <br><br>

        <div class="col">
            <div class="alert alert-danger alert-block" style="text-align: center">
                ¿Seguro que quiere eliminar la marca?
            </div>
        </div>

        <form action="eliminarMarca.jsp" method="post" style="text-align: center">

            <div class="col">
                <input type="hidden" value="<%=idMarca%>" class="form-control" name="idMarca" readonly>
            </div>

            <div class="col">
                <input type="submit" class="btn btn-success btn-block" value="Eliminar"/>
                <a class="btn btn-danger btn-block" href="catalogo.jsp">Cancelar</a>
            </div>

        </form>

    </body>
</html>
<%}%>