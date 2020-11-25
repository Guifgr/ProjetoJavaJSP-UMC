<%-- 
    Document   : alterarProduto
    Created on : Oct 28, 2020, 5:27:10 PM
    Author     : guifg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alterar Produto</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="_navBar.jsp" />
        
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
                        <input placeholder="Codigo De Barras" type="text" name="txtcodigodebarras">
                        <br />
                        <input placeholder="Nome do produto" type="text" name="txtdescricao">
                        <br />
                        <input placeholder="Preço" type="text" name="txtpreco">
                        <br />
                        <input placeholder="Marca" type="text" name="txtmarca">
                        <br />
                        <input placeholder="Fornecedor" type="text" name="txtfornecedor">
                        <br />
                        <br>
                        <a class="btn btn-outline-dark mr-5" href="Escolha.jsp">Voltar</a>
                        <input type="submit" class="btn btn-outline-primary" name="btnoperacao" value="Alterar">
                    </form>
                </center>
            </div>
    </body>
</html>