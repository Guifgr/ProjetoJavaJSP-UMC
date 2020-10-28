<%-- 
    Document   : sucessoProduto
    Created on : Oct 27, 2020, 5:23:25 PM
    Author     : guifg
--%>

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
        <% List lista = (List) request.getAttribute("lista"); %>
        
        <h1><%= mensagem %></h1>
        <a href="cadProduto.jsp">Voltar</a>
    </body>
</html>
