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
        
        String sql =  "insert into produtos(codigodebarras, descricao, preco, marca, fornecedor) values (?, ?, ?, ?, ?)";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setDouble(1, prod.getCodigoDeBarras());
        comando.setString(2, prod.getDescricao());
        comando.setDouble(3, prod.getPreco());
        comando.setString(4, prod.getMarca());
        comando.setString(5, prod.getFornecedor());
        
        comando.execute();
        
        comando.close();
    }
    public Produto ConsultarById(Produto prod) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();

        String sql =  "select id, descricao, preco from produtos where id = ?";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setInt(1, prod.getCodigoDeBarras());
        
        ResultSet resultado = comando.executeQuery(); 
        Produto p  = new Produto();
        if(resultado.next()){
            p.setCodigoDeBarras(resultado.getInt("codigoDeBarras"));
            p.setDescricao(resultado.getString("descricao"));
            p.setPreco(resultado.getDouble("preco"));
            p.setMarca(resultado.getString("marca"));
            p.setFornecedor(resultado.getString("fornecedor"));
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
            Produto p = new Produto();
            p.setCodigoDeBarras(resultado.getInt("codigoDeBarras"));
            p.setDescricao(resultado.getString("descricao"));
            p.setPreco(resultado.getDouble("preco"));
            p.setMarca(resultado.getString("marca"));
            p.setFornecedor(resultado.getString("fornecedor"));
            listaProdutos.add(p);
        }
        return listaProdutos;
    }
    public void Deletar(Produto prod) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        String sql =  "delete from produtos where id = ?";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setInt(1, prod.getCodigoDeBarras());
        comando.execute();
        
        comando.close();
    }
    public void alterar(Produto prod) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        String sql =  "UPDATE produtos SET preco = ?, descricao = ?, marca = ?, fornecedor = ? WHERE codigodebarras = ?";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setDouble(1, prod.getPreco());
        comando.setString(2, prod.getDescricao());
        comando.setString(3, prod.getMarca());
        comando.setString(4, prod.getFornecedor());
        comando.setInt(5, prod.getCodigoDeBarras());
        comando.execute();
        
        comando.close();
    }
}
