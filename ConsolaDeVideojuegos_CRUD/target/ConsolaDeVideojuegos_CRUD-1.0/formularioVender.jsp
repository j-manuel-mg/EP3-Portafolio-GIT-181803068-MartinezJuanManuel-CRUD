<%-- 
    Document   : formularioVender
    Created on : 24 jul. 2020, 23:31:04
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario vender consola de videojuegos</title>
    </head>
    <body>

        <br>
        <br>

        <h3 style="color: darkorange; text-align: center">¿Cuantas consolas de videojuegos quiere?</h3><br>

        <div class="container">
            <form action="" method="post">

                <div class="col">
                    <input type="text" class="form-control" placeholder="Cantidad" name="cantidad" required>
                </div>

                <br>

                <div class="col">
                    <input type="submit" class="btn btn-success btn-block"   value="Vender Consola">
                </div>

                <br>

                <div class="col">
                    <a href="vender.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
                </div>

            </form>
        </div>

    </body>
</html>
