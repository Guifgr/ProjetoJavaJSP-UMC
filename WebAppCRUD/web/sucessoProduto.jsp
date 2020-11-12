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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Response</title>
    </head>
    <body>


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
                        <h5 class="card-title">id: <%= category.getId()%></h5>
                        <h6 class="card-subtitle mb-2 text-muted"><%= category.getDescricao()%></h6>
                        <p class="card-text">R$<%= category.getPreco()%></p>
                        <form>
                            <a class="btn btn-outline-primary" href="alterarProduto.jsp?id=<%= category.getId()%>">Alterar</a>
                            <a class="btn btn-outline-danger" href="http://localhost:8084/WebAppCRUD/manterProduto?btnoperacao=Deletar&txtid=<%= category.getId()%>">Deletar</a>
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
