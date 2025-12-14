/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Account;

/**
 *
 * @author nhtho
 */
public class SignUpController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUpController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignUpController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        request.getRequestDispatcher("Views/SignUp.jsp").forward(request, response);
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
        String strUser = request.getParameter("txtUser");
        String strPass = request.getParameter("txtPass");
        String strPass1 = request.getParameter("txtRePass");

        AccountDAO dao = new AccountDAO();
        Account acc = dao.getAccountByUsername(strUser);
        if (acc != null) {
            request.setAttribute("message", "Tài khoản đã tồn tại!!!");
            request.getRequestDispatcher("Views/SignUp.jsp").forward(request, response);
        } else {
            //dang ki thanh cong chuyen sang trang chu
            if (strPass.equals(strPass1)) {
                Account newAcc = new Account();
                newAcc.setUsername(strUser);
                newAcc.setPassword(strPass);
                dao.createAccount(newAcc);
                Account createdAcc = dao.getAccountByUsername(strUser);
                
                int accountId = createdAcc.getAccountId();
                request.setAttribute("accountId", accountId);

                request.getRequestDispatcher("Views/SignUpUserInfo.jsp").forward(request, response);

            } else {
                request.setAttribute("message", "Mật khẩu không trùng khớp với mật khẩu nhập lại!!");
                request.getRequestDispatcher("Views/SignUp.jsp").forward(request, response);

            }
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
