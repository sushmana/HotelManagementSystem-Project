package com.servlet;

import com.DAO.RoomBookingDAO;
import com.DB.DBConnection;
import com.entities.RoomBooking;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Enumeration;

import static java.sql.Types.NULL;

@WebServlet(name = "/RoomSelectServlet")
public class RoomSelectServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookingfrom = request.getParameter("bookingfrom");
        String bookingto = request.getParameter("bookingto");
        String booking_id = request.getParameter("booking_id");

        String room_num = null;
        for (int i = 1; i <= 6; i++) {
            if(request.getParameter(""+i)!=null){
                room_num = i+"";
            }
        }
        System.out.println("room_num = " + room_num);
            Enumeration<String> enumn = request.getParameterNames();
        while (enumn.hasMoreElements()){
            System.out.println("enumn.nextElement() = " + enumn.nextElement());
        }
        
        RoomBookingDAO dor=new RoomBookingDAO(DBConnection.getConnection());
        dor.roomSelect(new RoomBooking(bookingfrom,bookingto,room_num,booking_id));
        response.sendRedirect("home.jsp");

    }
}
