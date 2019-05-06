/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

/**
 *
 * @author hp
 */
public class ChartServlet extends HttpServlet {

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
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("page") == null) {
            doPost(request, response);
        } else {
            PrintWriter out = response.getWriter();
            ArrayList<Integer> orderNum = new ArrayList<>();
            HttpSession session = request.getSession();

            int id = Integer.parseInt(request.getParameter("id"));
            orderNum.add(id);
            System.out.println(id + "");
            if (request.getSession().getAttribute("orderNum") == null) {
                session.setAttribute("orderNum", orderNum);
            } else {
                ArrayList<Integer> oldList = ((ArrayList<Integer>) request.getSession().getAttribute("orderNum"));
                for (int i = 0; i < oldList.size(); i++) {
                    orderNum.add(oldList.get(i));
                }
                session.removeAttribute("orderNum");
                session.setAttribute("orderNum", orderNum);
                for (int i = 0; i < orderNum.size(); i++) {
                    System.err.println("" + orderNum.get(i));
                }
            }
            RequestDispatcher ry = request.getRequestDispatcher("ShoesController");
            ry.include(request, response);
        }
        //doPost(request, response);
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
        ArrayList<Integer> orderNum = new ArrayList<>();
        HttpSession session = request.getSession();
        ProductDaoImpl productdao = new ProductDaoImpl();

        ArrayList<Product> allProduct = (ArrayList<Product>) productdao.getProduct();
        ArrayList<Product> cart = new ArrayList<>();
        if (request.getSession().getAttribute("orderNum") != null&&allProduct!=null) {
            orderNum = ((ArrayList<Integer>) request.getSession().getAttribute("orderNum"));

            for (int i = 0; i < orderNum.size(); i++) {
                for (int j = 0; j < allProduct.size(); j++) {
                    if (orderNum.get(i) == allProduct.get(j).getProductId()) {
                        cart.add(allProduct.get(j));

                    }
                }
            }
            request.setAttribute("cart", cart);
            RequestDispatcher ry = request.getRequestDispatcher("checkout.jsp");
            ry.include(request, response);
        }

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
