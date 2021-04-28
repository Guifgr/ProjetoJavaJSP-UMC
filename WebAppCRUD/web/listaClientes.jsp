<%-- 
    Document   : sucessoProduto
    Created on : Oct 27, 2020, 5:23:25 PM
    Author     : guifg
--%>
<%@page import="model.Cliente"%>
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
    <center>
        <h1>Clientes</h1>
        <center>
            <% ArrayList<Cliente> list = (ArrayList<Cliente>) request.getAttribute("lista"); %>
            <% for (Cliente category : list) {
            %>  
            <div class="card mt-2" style="width: 18rem;">
                <div class="card-body">
                    <form method="post" action="ControleCliente">
                        ID
                        <br />
                        <input placeholder="id" type="text" name="txtId" value="<%= category.getId()%>" readonly>
                        <br />
                        Nome
                        <br />
                        <input placeholder="Nome" type="text" name="txtNome" value="<%= category.getNome()%>">
                        <br />
                        CPF
                        <br />
                        <input placeholder="Cpf" type="text" name="txtCpf" value="<%= category.getCpf()%>">
                        <br />
                        Telefone
                        <br />
                        <input placeholder="Telefone" type="text" name="txtTelefone" value="<%= category.getTelefone()%>">
                        <br />
                        Endereco
                        <br />
                        <input placeholder="Endereco" type="text" name="txtEndereco" value="<%= category.getEndereco()%>">
                        <br />
                        <br>
                        <input type="submit" class="btn btn-outline-primary" name="acao" value="Alterar">
                        <input type="submit" class="btn btn-outline-Danger" name="acao" value="Deletar">
                    </form>
                </div>
            </div>
            <%}%>
            <a class="nav-link" href="index.jsp">Cadastrar Clientes</a>
        </center>
    </div>
</body>
</html>
