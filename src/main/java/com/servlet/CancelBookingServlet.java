package com.servlet;

import com.DAO.CancelBookingDAO;
import com.DB.DBConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CancelBookingServlet")
public class CancelBookingServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookingid = request.getParameter("booking_id");

        CancelBookingDAO cancel = new CancelBookingDAO(DBConnection.getConnection());
        boolean check = cancel.cancelBooking(bookingid);

        if (check) {
            response.sendRedirect("home.jsp");
        } else {
            response.sendRedirect("Cancel_Booking.jsp");
        }
    }
}
