<%-- 
    Document   : pesquisarProduto
    Created on : Oct 28, 2020, 5:31:26 PM
    Author     : guifg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pesquisar Produto</title>
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
                <center><h1>Sucesso</h1></center>
            </div>
            <br>
            <div class="card-body">
                <center>
                    <div class="card-body">
                        <form method="post" action="ControleCliente">
                            <input type="submit" class="btn btn-outline-dark mr-5" name="acao" value="Listar">
                        </form>
                    </div>
                </center>
            </div>
    </body>

</html>
