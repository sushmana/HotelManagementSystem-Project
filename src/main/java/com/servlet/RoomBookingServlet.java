package com.servlet;

import com.DAO.RoomBookingDAO;
import com.DB.DBConnection;
import com.entities.RoomBooking;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;


@WebServlet(name = "/Room_BookingServlet")
public class RoomBookingServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String nationality = request.getParameter("nationality");
        String adhaar = request.getParameter("adhaar");

        RoomBookingDAO ro=new RoomBookingDAO(DBConnection.getConnection());
        int roomb=ro.roombook(new RoomBooking(name,phone,email,address,city,state,nationality,adhaar));
        System.out.println("roomb = " + roomb);
        if(roomb>0){
            HttpSession session= request.getSession();
            session.setAttribute("entry-filled",roomb);
            response.sendRedirect("RoomSelect.jsp?booking_id="+roomb);
        }
        else{
            HttpSession session= request.getSession();
            session.setAttribute("entry_not_Filled","All entries are not filled");
            response.sendRedirect("Room_Booking.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
