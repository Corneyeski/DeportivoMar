
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <form action="../NewUser">
                    <div class="form-group" method="POST">
                        <label for="email">Email address</label>
                        <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" name="nombre" class="form-control" placeholder="nombre">
                    </div>
                    <div class="form-group">
                        <label for="apellido">apellido</label>
                        <input type="text" name="apellido" class="form-control" placeholder="apellido">
                    </div>
                    <div class="form-group">
                        <label for="telefono">telefono</label>
                        <input type="number" name="telefono" class="form-control" placeholder="telefono">
                    </div>
                    <div class="form-group">
                        <label for="direccion">direccion</label>
                        <input type="text" name="direccion" class="form-control" placeholder="direccion">
                    </div>
                    <div class="form-group">
                        <label for="cp">cp</label>
                        <input type="number" name="cp" class="form-control" placeholder="cp">
                    </div>
                    <div class="form-group">
                        <label for="password">password</label>
                        <input type="password" name="password" class="form-control" placeholder="pass">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </body>
</html>
