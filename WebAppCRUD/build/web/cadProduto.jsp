<%-- 
    Document   : manterProduto
    Created on : Oct 27, 2020, 4:56:24 PM
    Author     : guifg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar produto</title>
    </head>
    <body>
        <h1>Cadastro de produtos</h1>
        <form method="post" action="manterProduto">
            <input placeholder="ID" type="text" name="txtid">
            <br />
            <input placeholder="Descricao" type="text" name="txtdescricao">
            <br />
            <input placeholder="Preço" type="text" name="txtpreco">
            <br />
            <input type="submit" name="btnoperacao" value="cadastrar">
            <input type="submit" name="btnoperacao" value="deletar">
            <input type="submit" name="btnoperacao" value="alterar">
            <input type="submit" name="btnoperacao" value="consultar">
        </form>
    </body>
</html>
