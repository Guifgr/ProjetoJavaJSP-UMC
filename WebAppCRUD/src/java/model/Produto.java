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
    private int codigoDeBarras;
    private String descricao;
    private double preco;
    private String marca;
    private String fornecedor;

    public int getCodigoDeBarras() {
        return codigoDeBarras;
    }

    public void setCodigoDeBarras(int codigoDeBarras) {
        this.codigoDeBarras = codigoDeBarras;
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

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getFornecedor() {
        return fornecedor;
    }

    public void setFornecedor(String fornecedor) {
        this.fornecedor = fornecedor;
    }


    
    public void cadastrarProduto(Produto prod) throws ClassNotFoundException, SQLException{
        Produto produto = new Produto();
        produto.setCodigoDeBarras(prod.codigoDeBarras);
        produto.setDescricao(prod.descricao);
        produto.setPreco(prod.preco);
        produto.setMarca(prod.marca);
        produto.setFornecedor(prod.fornecedor);
        
        ProdutoDAO produtodao = new ProdutoDAO();
        produtodao.cadastrar(produto);
        
    }
    
    public Produto pesquisarProduto(Produto prod) throws ClassNotFoundException, SQLException{
        Produto produto = new Produto();
        produto.setCodigoDeBarras(produto.getCodigoDeBarras());
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
