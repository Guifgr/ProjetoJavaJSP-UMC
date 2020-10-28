/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProdutoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;

/**
 *
 * @author guifg
 */
public class manterProduto extends HttpServlet {

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
        String mensagem = "";
        List lista = null;
        try {
            String opcao = request.getParameter("btnoperacao");
            switch (opcao) {
                case "cadastrar":
                    {
                        String descricao = request.getParameter("txtdescricao");
                        double preco = Double.parseDouble(request.getParameter("txtpreco"));
                        Produto prod = new Produto();
                        prod.setDescricao(descricao);
                        prod.setPreco(preco);
                        ProdutoDAO pdao = new ProdutoDAO();
                        pdao.cadastrar(prod);
                        mensagem = "cadastrado com sucesso";
                        break;
                    }
                case "deletar":
                    {
                        int id = Integer.parseInt(request.getParameter("txtid"));
                        Produto prod = new Produto();
                        prod.setId(id);
                        ProdutoDAO pdao = new ProdutoDAO();
                        pdao.Deletar(prod);
                        mensagem = "Deletado com sucesso";
                        break;
                    }
                case "alterar":
                    {
                        int id = Integer.parseInt(request.getParameter("txtid"));
                        String descricao = request.getParameter("txtdescricao");
                        double preco = Double.parseDouble(request.getParameter("txtpreco"));
                        Produto prod = new Produto();
                        prod.setId(id);
                        prod.setDescricao(descricao);
                        prod.setPreco(preco);
                        ProdutoDAO pdao = new ProdutoDAO();
                        pdao.alterar(prod);
                        mensagem = "Alterado com sucesso";
                        break;
                    }
                case "consultar":
                    {
                        int id = Integer.parseInt(request.getParameter("txtid"));
                        Produto prod = new Produto();
                        prod.setId(id);
                        ProdutoDAO pdao = new ProdutoDAO();
                        Produto resposta = pdao.ConsultarById(prod);
                        mensagem = resposta.getId() +" "+ resposta.getDescricao()+" "+ resposta.getPreco();
                        break;
                    }
                default:
                    break;
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException ex) {
            mensagem = "Erro " + ex.getMessage();
        }
        request.setAttribute("mensagem", mensagem);
        request.setAttribute("lista", lista);
        request.getRequestDispatcher("sucessoProduto.jsp").forward(request, response);

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
