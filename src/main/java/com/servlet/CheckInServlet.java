package com.servlet;

import com.DAO.CheckInDAO;
import com.DAO.RoomBookingDAO;
import com.DAO.UserDAO;
import com.DB.DBConnection;
import com.entities.RoomBooking;
import com.entities.User;
import com.entities.check_in;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CheckInServlet")
public class CheckInServlet extends HttpServlet {

    private Object check_in;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookingid = request.getParameter("bookingid");
        String checkin = request.getParameter("checkin");

        CheckInDAO chdao=new CheckInDAO(DBConnection.getConnection());
        boolean check=chdao.checkedIn(new check_in(bookingid,checkin));

        if(check){
            response.sendRedirect("home.jsp");
        }
        else{
            response.sendRedirect("Check_in.jsp");

        }
    }
}
