<%-- 
    Document   : formularioConsola
    Created on : 30 jun. 2020, 19:43:46
    Author     : Juan Manuel
--%>

<%@page import="Dao.CatalogoBD"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Catalogo"%>

<%
    List<Catalogo> catalogo = new CatalogoBD().listadoCatalogo();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Agregar Consola de Videojuegos</title>
    </head>
    <body>

        <br>
        <br>
        
        <h3 style="color: darkorange; text-align: center">Agregar consola de videojuegos</h3><br>

        <div class="container">
            <form action="agregarConsola.jsp" method="get">
                <div class="col">
                    <input type="text" class="form-control" placeholder="Plataforma" name="plataforma" required>
                </div>

                <br>

                <div class="col">
                    <input type="text" class="form-control" placeholder="Modelo" name="modelo" required>
                </div>

                <br>

                <div class="col">
                    <input type="text" class="form-control" placeholder="Almacenamiento" name="almacenamiento" required>
                </div>

                <br>

                <div class="col">
                    <input type="text" class="form-control" placeholder="Color" name="color" required>
                </div>

                <br>

                <div class="col">
                    <input type="number" class="form-control" placeholder="Precio" name="precio" required>
                </div>

                <br>

                <div class="col">
                    <select class="form-control" name="marca" required>
                        <option value=""> Seleccione una marca</option>
                        <%
                            for (Catalogo j: catalogo ) {
                        %>
                        <option value="<%=j.getIdMarca()%>"><%=j.getMarca()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                    
                <br>
                
                <div class="col">
                    <input type="number" class="form-control" placeholder="Stock" name="stock" min="0" required>
                </div>
                
                <br>
                
                <div class="col">
                    <input type="submit" class="btn btn-success btn-block"   value="Agregar Consola de Videojuegos">
                </div>

                <br>

                <div class="col">
                    <a href="index.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
                </div>
            </form>
        </div>

    </body>
</html>
