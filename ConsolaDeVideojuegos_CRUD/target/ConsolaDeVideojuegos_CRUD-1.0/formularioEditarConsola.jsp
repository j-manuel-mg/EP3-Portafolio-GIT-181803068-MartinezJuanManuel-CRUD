<%-- 
    Document   : formularioEditarConsola
    Created on : 1 jul. 2020, 20:38:58
    Author     : Juan Manuel
--%>
<%@page import="Dao.Consola"%>
<%@page import="Dao.ConsolaBD"%>
<%@page import="Dao.CatalogoBD"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Catalogo"%>

<%
    int idConsola = 0;
    if (request.getParameter("idConsola") != null) {

        idConsola = Integer.valueOf(request.getParameter("idConsola"));

        List<Consola> consolaId = new ConsolaBD().buscarConsola(idConsola);

        List<Catalogo> catalogo = new CatalogoBD().listadoCatalogo();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Editar Consola de Videojuegos</title>
    </head>
    <body>

        <br>
        <br>

        <h3 style="color: darkorange; text-align: center">Editar consola de videojuegos</h3><br>

        <div class="container">

            <%for (Consola i : consolaId) {%>

            <form action="editarConsola.jsp" method="post">
                <div class="col">
                    <label> Plataforma: </label>
                    <input type="text" class="form-control" value="<%=i.getPlataforma()%>" name="plataforma" required>
                </div>

                <br>

                <div class="col">
                    <label> Modelo: </label>
                    <input type="text" class="form-control" value="<%=i.getModelo()%>" name="modelo" required>
                </div>

                <br>

                <div class="col">
                    <label> Almacenamiento: </label>
                    <input type="text" class="form-control" value="<%=i.getAlmacenamiento()%>" name="almacenamiento" required>
                </div>

                <br>

                <div class="col">
                    <label> Color: </label>
                    <input type="text" class="form-control" value="<%=i.getColor()%>" name="color" required>
                </div>

                <br>

                <div class="col">
                    <label> Precio: </label>
                    <input type="number" class="form-control" value="<%=i.getPrecio()%>" name="precio" required>
                </div>

                <br>

                <div class="col">
                    <label> Marca: </label>
                    <select class="form-control" name="marca" value="<%=i.getMarca()%>" required>
                        <option value=""> Seleccione una marca</option>
                        <% for (Catalogo j : catalogo) {%>
                        <option value="<%=j.getIdMarca()%>"><%=j.getMarca()%></option>
                        <%if (i.getMarca().equals(j.getMarca())) {
                        %>
                        <option value="<%=j.getIdMarca()%>" selected="<%=j.getIdMarca()%>"><%=j.getMarca()%></option>
                        <%
                            }%>
                        <%}%>
                    </select>
                </div>

                <br>
                
                <div class="col">
                    <label> Stock: </label>
                    <input type="number" class="form-control" value="<%=i.getStock()%>" name="stock" min="0" required>
                </div>
                
                <br>

                <div class="col">
                    <input type="hidden" class="form-control" value="<%=idConsola%>" name="idConsola" required>
                </div>

                <br>

                <div class="col">
                    <input type="submit" class="btn btn-success btn-block" value="Editar consola">
                </div>

                <br>

                <div class="col">
                    <a href="index.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
                </div>
            </form>

            <%}%>

        </div>
    </body>
</html>
<%}%>
