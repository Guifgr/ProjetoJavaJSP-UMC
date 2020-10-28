/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import util.FabricaConexao;
import model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author guifg
 */
public class ProdutoDAO {
    public void cadastrar(Produto prod) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        
        String sql =  "insert into produtos(descricao, preco) values (?, ?)";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setString(1, prod.getDescricao());
        comando.setDouble(2, prod.getPreco());
        
        comando.execute();
        
        comando.close();
    }
    public Produto ConsultarById(Produto prod) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();

        String sql =  "select id, descricao, preco from produtos where id = ?";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setInt(1, prod.getId());
        
        ResultSet resultado = comando.executeQuery(); 
        Produto p  = new Produto();
        if(resultado.next()){
            p.setId(resultado.getInt("id"));
            p.setDescricao(resultado.getString("descricao"));
            p.setPreco(resultado.getDouble("preco"));
        }
        return p;
    }
    public List ConsultarTodos() throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        String sql =  "select id, descricao, preco from produtos";
        PreparedStatement comando = con.prepareStatement(sql);
        
        ResultSet resultado = comando.executeQuery(); 
        List<Produto> listaProdutos = new ArrayList<>();
        while(resultado.next()){
            Produto novoProduto = new Produto();
            novoProduto.setId(resultado.getInt("id"));
            novoProduto.setDescricao(resultado.getString("descricao"));
            novoProduto.setPreco(resultado.getDouble("preco"));
            listaProdutos.add(novoProduto);
        }
        return listaProdutos;
    }
    public void Deletar(Produto prod) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        String sql =  "delete from produtos where id = ?";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setInt(1, prod.getId());
        comando.execute();
        
        comando.close();
    }
    public void alterar(Produto prod) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        String sql =  "UPDATE produtos SET preco = ?, descricao = ? WHERE id = ?";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setDouble(1, prod.getPreco());
        comando.setString(2, prod.getDescricao());
        comando.setInt(3, prod.getId());
        comando.execute();
        
        comando.close();
    }
}
