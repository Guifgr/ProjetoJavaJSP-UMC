/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ProdutoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author guifg
 */
public class Produto {
    private int id;
    private String descricao;
    private double preco;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    public void cadastrarProduto(Produto prod) throws ClassNotFoundException, SQLException{
        Produto produto = new Produto();
        produto.setDescricao(prod.descricao);
        produto.setPreco(prod.preco);
        ProdutoDAO produtodao = new ProdutoDAO();
        produtodao.cadastrar(produto);
        
    }
    
    public Produto pesquisarProduto(Produto prod) throws ClassNotFoundException, SQLException{
        Produto produto = new Produto();
        produto.setId(2);
        ProdutoDAO produtodao = new ProdutoDAO();
        produto = produtodao.ConsultarById(produto);
        return produto;
    }
    
    public List<Produto> ListarProdutos() throws ClassNotFoundException, SQLException{
        ProdutoDAO pdao = new ProdutoDAO();
        List<Produto> lp = pdao.ConsultarTodos();
        return lp;
    }
    
}
