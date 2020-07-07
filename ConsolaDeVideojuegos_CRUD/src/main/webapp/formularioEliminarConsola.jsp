<%-- 
    Document   : formularioEliminar
    Created on : 5 jul. 2020, 21:33:01
    Author     : Juan Manuel
--%>

<%@page import="Dao.CatalogoBD"%>
<%@page import="Dao.ConsolaBD"%>
<%@page import="Dao.Catalogo"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Consola"%>

<%
    int idConsola = 0;
    if (request.getParameter("idConsola") != null) {
        idConsola = Integer.valueOf(request.getParameter("idConsola"));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Eliminar Consola de Videojuegos</title>
    </head>
    <body>

        <br><br>

        <div class="col">
            <div class="alert alert-danger alert-block" style="text-align: center">
                ¿Seguro que quiere eliminar la consola de videojuegos?
            </div>
        </div>

        <form action="eliminarConsola.jsp" method="post" style="text-align: center">

            <div class="col">
                <input type="hidden" value="<%=idConsola%>" class="form-control" name="idConsola" readonly>
            </div>

            <div class="col">
                <input type="submit" class="btn btn-success btn-block" value="Eliminar"/>
                <a class="btn btn-danger btn-block" href="index.jsp">Cancelar</a>
            </div>

        </form>

    </body>
</html>
<%}%>