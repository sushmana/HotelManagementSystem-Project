package com.DAO;

import com.entities.check_in;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CancelBookingDAO {
    private final Connection conn;

    public CancelBookingDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean cancelBooking(String booking) {
        boolean f = false;
        try {
            String query1 = "Update roominfo set Availability = 0 where room_id =( Select Room_id from booking_details where Booking_id = ? limit 1 );";
            PreparedStatement rps = conn.prepareStatement(query1);

            rps.setString(1, booking);
            rps.executeUpdate();
            f=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}