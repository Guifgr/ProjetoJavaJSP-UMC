/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import util.FabricaConexao;
import model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author guifg
 */
public class ClienteDAO {
    public void cadastrar(Cliente cli) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        
        String sql =  "insert into cliente(cpf, nome, telefone, endereco) values (?, ?, ?, ?)";
        try (PreparedStatement comando = con.prepareStatement(sql)) {
            comando.setString(1, cli.getNome());
            comando.setString(2, cli.getCpf());
            comando.setString(3, cli.getTelefone());
            comando.setString(4, cli.getEndereco());
            
            comando.execute();
            comando.close();
        }
    }
    public List<Cliente> ConsultarTodos() throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        String sql =  "select id, nome, cpf, telefone, endereco from cliente";
        PreparedStatement comando = con.prepareStatement(sql);
        
        ResultSet resultado = comando.executeQuery(); 
        List<Cliente> listaProdutos = new ArrayList<>();
        while(resultado.next()){
            Cliente c = new Cliente();
            c.setId(resultado.getInt("id"));
            c.setNome(resultado.getString("nome"));
            c.setCpf(resultado.getString("cpf"));
            c.setEndereco(resultado.getString("endereco"));
            c.setTelefone(resultado.getString("telefone"));
            listaProdutos.add(c);
        }
        comando.close();
        return listaProdutos;
    }
    
    public void Deletar(Cliente prod) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        String sql =  "delete from cliente where id = ?";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setInt(1, prod.getId());
        comando.execute();
        
        comando.close();
    }
    
    public void alterar(Cliente prod) throws ClassNotFoundException, SQLException{
        Connection con = FabricaConexao.getConexao();
        String sql =  "UPDATE cliente SET nome = ?, cpf = ?, telefone = ?, endereco = ? WHERE id = ?";
        PreparedStatement comando = con.prepareStatement(sql);
        comando.setString(1, prod.getNome());
        comando.setString(2, prod.getCpf());
        comando.setString(3, prod.getTelefone());
        comando.setString(4, prod.getEndereco());
        comando.setInt(5, prod.getId());
        comando.execute();
        comando.close();
    }
    
}
