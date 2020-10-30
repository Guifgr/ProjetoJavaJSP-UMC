<%-- 
    Document   : DeletarProduto
    Created on : Oct 28, 2020, 5:24:35 PM
    Author     : guifg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar</title>
    </head>
    <body>
        <div class="card">
            <div class="card-header">
                <br>
                <center><h1>Deletar produtos</h1></center>
            </div>
            <br>
            <div class="card-body">
                <center>
                    <% String id = (String) request.getParameter("id"); 
                    if(id==null){ 
                        id = "";
                    }
                    %>
                    <form method="post" action="manterProduto">
                        <input placeholder="ID" type="text" name="txtid" value="<%= id %>">
                        <br>
                        <br>
                        <a class="btn btn-outline-dark mr-5" href="Escolha.jsp">Voltar</a>
                        <input type="submit" class="btn btn-outline-danger" name="btnoperacao" value="Deletar">
                    </form>
                </center>
            </div>
    </body>
</html>
