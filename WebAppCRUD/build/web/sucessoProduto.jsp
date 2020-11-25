<%-- 
    Document   : sucessoProduto
    Created on : Oct 27, 2020, 5:23:25 PM
    Author     : guifg
--%>

<%@page import="model.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Response</title>
    </head>
    <body>

        <jsp:include page="_navBar.jsp" />
        
        <div class="card">
            <div class="card-header">
                <br>
                <center>
                    <% String mensagem = (String) request.getAttribute("mensagem"); %>
                    <% String result = (String) request.getAttribute("result");
                        if (result == null) {
                            result = "";
                        }
                    %>
                    <h1><%= mensagem%></h1>
                </center>
            </div>
            <center>
                
                <h2><%= result%></h2>
                <% ArrayList<Produto> list = (ArrayList<Produto>) request.getAttribute("lista"); %>
                <% for (Produto category : list) {
                %>  
                <div class="card mt-2" style="width: 18rem;">
                    <div class="card-body">
                        <form method="post" action="manterProduto">
                            Código de barras
                            <br />
                            <input placeholder="Codigo De Barras" type="text" name="txtcodigodebarras" value="<%= category.getCodigoDeBarras()%>" readonly>
                            <br />
                            Descrição
                            <br />
                            <input placeholder="Nome do produto" type="text" name="txtdescricao" value="<%= category.getDescricao()%>">
                            <br />
                            Preço
                            <br />
                            <input placeholder="Preço" type="text" name="txtpreco" value="<%= category.getPreco()%>">
                            <br />
                            Marca
                            <br />
                            <input placeholder="Marca" type="text" name="txtmarca" value="<%= category.getMarca()%>">
                            <br />
                            Fornecedor
                            <br />
                            <input placeholder="Fornecedor" type="text" name="txtfornecedor" value="<%= category.getFornecedor()%>">
                            <br><br>
                            <input type="submit" class="btn btn-outline-primary" name="btnoperacao" value="Alterar">
                            <a class="btn btn-outline-danger" href="http://localhost:8084/WebAppCRUD/manterProduto?btnoperacao=Deletar&txtcodigodebarras=<%= category.getCodigoDeBarras()%>">Deletar</a>
                        </form>
                    </div>
                </div>
                <%}%>
                <br />
                <a class="btn btn-outline-dark" href="Escolha.jsp">Voltar</a>
                <br />
                <br />
                
            </center>
        </div>
    </body>
</html>
