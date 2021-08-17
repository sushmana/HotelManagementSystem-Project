package com.servlet;

import com.DAO.UserDAO;
import com.DB.DBConnection;
import com.entities.User;

import javax.management.DynamicMBean;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    public static final Pattern VALID_EMAIL_ADDRESS_REGEX =
            Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    public static boolean validate(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
        return matcher.find();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String email=request.getParameter("email");
        String password=request.getParameter("password");


        User us=new User(email,password);
        us.setEmail(email);
        us.setPassword(password);


        UserDAO dao=new UserDAO(DBConnection.getConnection());
        boolean f=dao.userRegister(us);

        if(!validate(email)){
            HttpSession session=request.getSession();
            session.setAttribute("err-msg","Your email is invalid");
            response.sendRedirect("register.jsp");
            return;
        }

        if(f){
           HttpSession session=request.getSession();
            session.setAttribute("reg-msg","Registration Successfully..");
            response.sendRedirect("register.jsp");
        }

        else{
            HttpSession session=request.getSession();
            session.setAttribute("err-msg","Something went wrong!!!..");
            response.sendRedirect("register.jsp");
        }







    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
