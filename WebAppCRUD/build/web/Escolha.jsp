<%-- 
    Document   : Escolha
    Created on : Oct 28, 2020, 1:37:57 PM
    Author     : guifg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bem vindo</title>
    </head>
    <body>
        <div class="card">
            <div class="card-header">
                <br>
                <center><h1>O que você deseja fazer?</h1></center>
            </div>
            <br>
            <div class="card-body">
                <center>
                    <form action="manterProduto" method="post">
                    <a class="btn btn-outline-success" href="cadastrarProduto.jsp">Cadastrar</a>
                    <a class="btn btn-outline-danger" href="deletarProduto.jsp">Deletar</a>
                    <a class="btn btn-outline-primary" href="alterarProduto.jsp">Alterar</a>
                    <a class="btn btn-outline-warning" href="pesquisarProduto.jsp">Pesquisar</a>
                    <input class="btn btn-outline-dark" type="submit" name="btnoperacao" value="Listar">
                    </form>
                </center>
            </div>

    </body>
</html>
