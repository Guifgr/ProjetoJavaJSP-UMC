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
                <center><h1>Pesquisa de produtos</h1></center>
            </div>
            <br>
            <div class="card-body">
                <center>
                    <form method="post" action="manterProduto">
                        <input placeholder="Codigo De Barras" type="text" name="txtcodigodebarras">
                        <br>
                        <br>
                        <a class="btn btn-outline-dark mr-5" href="Escolha.jsp">Voltar</a>
                        <input type="submit" class="btn btn-outline-warning" name="btnoperacao" value="Consultar">
                    </form>
                </center>
            </div>
    </body>

</html>
