<nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span> <a class="navbar-brand">Opções</a>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Cadastrar Clientes</a>
            </li>
            <li class="nav-item">
                    <form method="post" action="ControleCliente">
                        <input type="submit" class="btn btn-dark" name="acao" value="Listar">
                    </form>
            </li>
        </ul>
    </div>  
</nav>