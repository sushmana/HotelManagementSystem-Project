package com.servlet;

import com.DAO.UserDAO;
import com.DB.DBConnection;
import com.entities.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "/loginServlet")
public class loginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String email=request.getParameter("email");
         String password=request.getParameter("password");
        UserDAO dao=new UserDAO(DBConnection.getConnection());
        User user=dao.getLogin(email,password);

    if(user!=null){
       HttpSession session= request.getSession();
       session.setAttribute("user-ob",user);
       response.sendRedirect("home.jsp");
        }
    else{
        HttpSession session= request.getSession();
        session.setAttribute("error-msg","Invalid email and password");
        response.sendRedirect("login.jsp");

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
