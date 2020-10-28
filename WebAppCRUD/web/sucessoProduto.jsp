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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Response</title>
    </head>
    <body>
        <% String mensagem = (String) request.getAttribute("mensagem"); %>
        <% ArrayList<Produto> list = (ArrayList<Produto>) request.getAttribute("lista"); %>
        <% for(Produto category : list) {
            out.println(category.getId());
            out.println(category.getDescricao());
            out.println(category.getPreco());
        }%>
        <h1><%= mensagem %></h1>
        <a href="cadProduto.jsp">Voltar</a>
    </body>
</html>
