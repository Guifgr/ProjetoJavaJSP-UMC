<%-- 
    Document   : pesquisarProduto
    Created on : Oct 28, 2020, 5:31:26 PM
    Author     : guifg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisa</title>
    </head>
     <body>
        <div class="card">
            <div class="card-header">
                <br>
                <center><h1>Pesquisa de produtos</h1></center>
            </div>
            <br>
            <div class="card-body">
                <center>
                    <form method="post" action="manterProduto">
                        <input placeholder="ID" type="text" name="txtid">
                        <br />
                        <br />
                        <a class="btn btn-dark mr-5" href="Escolha.jsp">Voltar</a>
                        <input type="submit" class="btn btn-outline-warning" name="btnoperacao" value="Consultar">
                    </form>
                </center>
            </div>
    </body>

</html>
