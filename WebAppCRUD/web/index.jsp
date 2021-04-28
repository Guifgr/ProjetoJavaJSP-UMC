<%-- 
    Document   : manterProduto
    Created on : Oct 27, 2020, 4:56:24 PM
    Author     : guifg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar produto</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="_navBar.jsp" />

        <div class="card">
            <div class="card-header">
                <br>
                <center><h1>Cadastro de Clientes</h1></center>
            </div>
            <br>
            <div class="card-body">
                <center>
                    <form method="post" action="ControleCliente">
                        <input required placeholder="Nome" type="text" name="txtNome">
                        <br>
                        <input required placeholder="Cpf" type="text" name="txtCpf">
                        <br>
                        <input required placeholder="Telefone" type="text" name="txtTelefone">
                        <br>
                        <input required placeholder="Endereco" type="text" name="txtEndereco">
                        <br>
                        <br>
                        <input type="submit" class="btn btn-outline-success" name="acao" value="Cadastrar">
                    </form>
                    <br />
                    <form method="post" action="ControleCliente">
                        <input type="submit" class="btn btn-outline-dark" name="acao" value="Listar">
                    </form>
                </center>
            </div>
    </body>
</html>
