<%-- 
    Document   : venderConsola
    Created on : 25 jul. 2020, 23:55:12
    Author     : Juan Manuel
--%>

<%@page import="java.util.List"%>
<%@page import="Dao.Consola"%>
<%@page import="Dao.ConsolaBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vender Consola</title>
    </head>
    <body>
        <%
            int idConsola = 0;
            int cantidadSolicitada;
            int cantidadStock = 0;

            if (request.getParameter("idConsola") != null && request.getParameter("cantidad") != null) {
                idConsola = Integer.parseInt(request.getParameter("idConsola"));
                cantidadSolicitada = Integer.parseInt(request.getParameter("cantidad"));

                List< Consola> consola = new ConsolaBD().buscarConsola(idConsola);
                for (Consola i : consola) {
                    cantidadStock = i.getStock();
                }

                if (cantidadSolicitada <= cantidadStock) {

                    Consola cantidad = new Consola();
                    cantidadStock = cantidad.resta(cantidadStock, cantidadSolicitada);
        %>
        
        <br>
        <br>

        <div class="col">
            <div class="alert alert-info alert-block" style="text-align: center">
                ¿Seguro que quiere comprar este articulo?
            </div>
        </div>
        <form action="consolaVendida.jsp" method="post">
            <div class="col">
                <input type="hidden" class="form-control" value="<%=idConsola%>" name="idConsola" readonly>
            </div>
            <div class="col">
                <input type="hidden" class="form-control" value="<%=cantidadStock%>" name="stock" readonly>
            </div>
            <div class="col">
                <input type="submit" class="btn btn-success btn-block"   value="Comprar"/>
                <a class="btn btn-danger btn-block" href="vender.jsp">Cancelar</a>
            </div>
        </form>
            
        <%} else {%>

        <br>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                No contamos con el numero de consolas de videojuegos solicitado
                <br><br>Numero de consola de videojuego existentes: <%=cantidadStock%>
            </div>
        </div>

        <div class="col">
            <a  href="vender.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
        </div>


        <%
            }
        %>


    </body>
</html>
<%}%>