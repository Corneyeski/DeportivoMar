
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Centro Deportivo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/main.css" rel="stylesheet" type="text/css"/>
        <link href="../css/deportivo.css" rel="stylesheet" type="text/css"/>
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>    </head>
     <body id="relleno">
        <nav class="titulo">
            <p align="center">Bienvenido al Acceso de Usuarios</p>
        </nav>
            <div id="fondo-01">
                <div id="user">
                    <br>
                    <form action="../Login" method="POST">
                        <table class="form">
                            <tr>
                                <td>Usuario :</td>
                                <td>
                                    <input type="text" name="nombre">
                                </td>
                            </tr>
                            <tr>
                                <td>Password :</td>
                                <td><input type="password" name="password"></td>
                            </tr>
                        </table>
                        <input type="submit" value="Acceder" class="btn btn-primary">
                    </form>
                    <br>
                </div>
            </div>
        <hr>
        <div align="center">
            <table>
                <tr>
                    <td id="boton_10">
                        <form action="index.jsp" method="post">
                            <input type="submit" value="Anterior"/>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>
