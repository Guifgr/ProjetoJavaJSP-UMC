/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cliente;

/**
 *
 * @author guifg
 */
public class ControleCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        try {
           String acao = request.getParameter("acao");
           if(acao.toUpperCase().equals("CADASTRAR")){
               String nome = request.getParameter("txtNome");
               String cpf = request.getParameter("txtCpf");
               String telefone = request.getParameter("txtTelefone");
               String endereco = request.getParameter("txtEndereco");
               
               Cliente cliente = new Cliente();
               cliente.setNome(nome);
               cliente.setCpf(cpf);
               cliente.setTelefone(telefone);
               cliente.setEndereco(endereco);
               
               ClienteDAO clienteDAO = new ClienteDAO();
               clienteDAO.cadastrar(cliente);
               
               response.sendRedirect("sucesso.jsp");
           }else if (acao.equals("Alterar")) {
                int id = Integer.parseInt(request.getParameter("txtId"));
                String nome = request.getParameter("txtNome");
                String cpf = request.getParameter("txtCpf");
                String telefone = request.getParameter("txtTelefone");
                String endereco = request.getParameter("txtEndereco");

                Cliente cliente = new Cliente();
                cliente.setId(id);
                cliente.setNome(nome);
                cliente.setCpf(cpf);
                cliente.setTelefone(telefone);
                cliente.setEndereco(endereco);
                
                ClienteDAO clienteDAO = new ClienteDAO();
                clienteDAO.alterar(cliente);
                
                List<Cliente> lista = new ArrayList<Cliente>();
                lista = clienteDAO.ConsultarTodos();
                request.setAttribute("lista", lista);
                RequestDispatcher rd = request.getRequestDispatcher("listaClientes.jsp");
                rd.forward(request, response);
            }else if (acao.equals("Deletar")) {
                int id = Integer.parseInt(request.getParameter("txtId"));
                String nome = request.getParameter("txtNome");
                String cpf = request.getParameter("txtCpf");
                String telefone = request.getParameter("txtTelefone");
                String endereco = request.getParameter("txtEndereco");

                Cliente cliente = new Cliente();
                cliente.setId(id);
                cliente.setNome(nome);
                cliente.setCpf(cpf);
                cliente.setTelefone(telefone);
                cliente.setEndereco(endereco);
                
                ClienteDAO clienteDAO = new ClienteDAO();
                clienteDAO.Deletar(cliente);
                
                List<Cliente> lista = new ArrayList<Cliente>();
                lista = clienteDAO.ConsultarTodos();
                request.setAttribute("lista", lista);
                RequestDispatcher rd = request.getRequestDispatcher("listaClientes.jsp");
                rd.forward(request, response);
            }else{
                ClienteDAO clienteDAO = new ClienteDAO();
                List<Cliente> lista = new ArrayList<Cliente>();
                lista = clienteDAO.ConsultarTodos();
                request.setAttribute("lista", lista);
                RequestDispatcher rd = request.getRequestDispatcher("listaClientes.jsp");
                rd.forward(request, response);
           }
        } catch (ClassNotFoundException | NumberFormatException | SQLException ex) {
            request.setAttribute("erro", ex);
            RequestDispatcher rd = request.getRequestDispatcher("erro.jsp");
            rd.forward(request, response);
            
        }
        try (PrintWriter out = response.getWriter()) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
