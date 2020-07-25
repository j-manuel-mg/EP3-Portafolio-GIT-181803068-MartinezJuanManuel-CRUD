
<%@page import="Dao.ConsolaBD"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Consola"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    List<Consola> consola = new ConsolaBD().listadoConsola();
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
        <title>Vender Consola</title>
    </head>
    <body style="background-image: url(https://i.pinimg.com/originals/53/d5/f4/53d5f4a5a8632cfe3cdc470b5e1fbf2a.jpg)">

        <br><h3 style="color: darkorange; text-align: center">Vender videojuegos</h3><br>

        <div class="container">

            <div class="col" >
                <a  href="index.jsp" style="margin: 3px" class="btn btn-primary float-left" >Regresar al menu</a>
            </div>

            <br><br>

            <table class="table table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>id_consola</th>
                        <th>Plataforma</th>
                        <th>Modelo</th>
                        <th>Almacenamiento</th>
                        <th>Color</th>
                        <th>Precio</th>
                        <th>Marca</th>
                        <th>Stock</th>
                        <th colspan="3" style="text-align: center">Acciones</th>
                    </tr>
                </thead>
                <tbody style="background-color: white">
                    <%
                        for (Consola i : consola) {
                    %>
                    <tr>
                        <td><%=i.getIdConsola()%></td>
                        <td><%=i.getPlataforma()%></td>
                        <td><%=i.getModelo()%></td>
                        <td><%=i.getAlmacenamiento()%></td>
                        <td><%=i.getColor()%></td>
                        <td><%=i.getPrecio()%></td>
                        <td><%=i.getMarca()%></td>
                        <td><%=i.getStock()%></td>

                        <%if (i.getStock() > 0) {%>
                        <td> <a href="NombreDelJSP.jsp?idConsola=<%=i.getIdConsola()%>" class="btn btn-danger btn-block">Vender consola</a></td>
                        <%}%>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>

        </div>
    </body>
</html>
