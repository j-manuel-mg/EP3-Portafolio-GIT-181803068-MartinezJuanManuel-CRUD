<%-- 
    Document   : Catalogo
    Created on : 5 jul. 2020, 22:11:18
    Author     : Juan Manuel
--%>

<%@page import="Dao.CatalogoBD"%>
<%@page import="Dao.Catalogo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    List<Catalogo> catalogo = new CatalogoBD().listadoCatalogo();
%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catalago</title>
    </head>
    <body>

    <body style="background-image: url(https://i.pinimg.com/originals/53/d5/f4/53d5f4a5a8632cfe3cdc470b5e1fbf2a.jpg)">

        <br><h3 style="color: darkorange; text-align: center">Registros de la Base de Datos Catalogo de Marcas</h3><br>
        
        <div class="container">
            
            <div class="col" >
                <a  href="index.jsp" class="btn btn-primary float-left" >Regresar al menu principal</a>
                <a  href="formularioAgregarMarca.jsp" class="btn btn-success float-right"> Agregar Marca </a>
            </div>
            
            <br><br>
            
            <table class="table table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>id_marca</th>
                        <th>Marca</th>
                        <th colspan="2" style="text-align: center">Acciones</th>
                    </tr>
                </thead>
                <tbody style="background-color: white">
                    <%
                        for (Catalogo j : catalogo) {
                    %>
                    <tr>
                        <td><%=j.getIdMarca()%></td>
                        <td><%=j.getMarca()%></td>

                        <td> <a href="formularioEliminarMarca.jsp?idMarca=<%=j.getIdMarca()%>" class="btn btn-danger btn-block"> Eliminar Marca</a></td>
                    </tr>
                    <%
                        }
                    %>

                </tbody>
            </table>
        </div>
    </body>
</html>
