<%-- 
    Document   : manterProduto
    Created on : Oct 27, 2020, 4:56:24 PM
    Author     : guifg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar produto</title>
    </head>
    <body>
        <div class="card">
            <div class="card-header">
                <br>
                <center><h1>Cadastro de produtos</h1></center>
            </div>
            <br>
            <div class="card-body">
                <center>
                    <form method="post" action="manterProduto">
                        <input placeholder="Descricao" type="text" name="txtdescricao">
                        <br />
                        <input placeholder="Preço" type="text" name="txtpreco">
                        <br />
                        <br>
                        <a class="btn btn-dark mr-5" href="Escolha.jsp">Voltar</a>
                        <input type="submit" class="btn btn-outline-success" name="btnoperacao" value="Cadastrar">
                    </form>
                </center>
            </div>
    </body>
</html>
      