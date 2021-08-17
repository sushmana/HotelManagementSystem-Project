package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LogoutServlet", value = "/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session= request.getSession();
    session.removeAttribute("user-ob");

    HttpSession session2=request.getSession();
    session.setAttribute("logout-msg","Logout successfully");
    response.sendRedirect("login.jsp");

    }

}
