
<%@page import="java.util.List"%>
<%@page import="entities.Actividad"%>
<%@page import="entities.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../../css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Registro empleado</h1>
                <form action="../../NewEmpleado" method="POST">
                    <div class="form-group">
                        <label for="dni">dni</label>
                        <input type="text" name="dni" class="form-control" id="dni" required="">
                    </div>
                    <div class="form-group">
                        <label for="salario">Salario</label>
                        <input type="number" name="salario" class="form-control" placeholder="salario">
                    </div>
                    <div class="form-group">
                        <label for="categoria">categoria</label>
                        <select class="form-control" id="categoria" name="categoria">
                            <% List<Categoria> cats = (List<Categoria>) request.getAttribute("categorias");
                                for (Categoria categoria : cats) { %>
                            <option value="<%= categoria.getIdcategoria() %>"><%= categoria.getDescripcion()%></option>
                            <% } %>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <div class="row">
                <h1>Registro actividad</h1>
                <form action="../../NewActivity"  method="POST">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" name="nombre" class="form-control" placeholder="nombre">
                    </div>
                    <div class="form-group">
                        <label for="descripcion">descripcion</label>
                        <input type="text" name="descripcion" class="form-control" placeholder="descripcion">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <div class="row">
                <h1>Registro sala</h1>
                <form action="../NewSala"  method="POST">
                    <div class="form-group">
                        <label for="descripcion">descripcion</label>
                        <input type="text" name="descripcion" class="form-control" id="descripcion">
                    </div>
                    <div class="form-group">
                        <label for="actividad">Actividad</label>
                        <select class="form-control" id="categoria" name="categoria">
                            <% List<Actividad> activ = (List<Actividad>) request.getAttribute("actividades");
                                for (Actividad actividad : activ) { %>
                            <option value="<%=actividad.getIdactividad() %>"><%=actividad.getActividad() %></option>
                            <% }%>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <div class="row">
                <h1>Registro categoria</h1>
                <form action="../NewCategory">
                    <div class="form-group">
                        <label for="descripcion">Descripcion</label>
                        <input type="text" name="descripcion" class="form-control" placeholder="descripcion">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <div class="btn btn-default"><a href="/changeA">Cambiar Datos</a></div>
        </div>
    </body>
</html>
