<%-- 
    Document   : alterarProduto
    Created on : Oct 28, 2020, 5:27:10 PM
    Author     : guifg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <% String id = (String) request.getParameter("id"); 
                    if(id==null){ 
                        id = "";
                    }
                    %>
        <div class="card">
            <div class="card-header">
                <br>
                <center><h1>Alterar produtos</h1></center>
            </div>
            <br>
            <div class="card-body">
                <center>
                    <form method="post" action="manterProduto">
                        
                        <br />
                        <input placeholder="Descricao" type="text" name="txtdescricao">
                        <br />
                        <input placeholder="Preço" type="text" name="txtpreco">
                        <br />
                        <br>
                        <a class="btn btn-dark mr-5" href="Escolha.jsp">Voltar</a>
                        <input type="submit" class="btn btn-outline-primary" name="btnoperacao" value="Alterar">
                    </form>
                </center>
            </div>
    </body>
</html>
