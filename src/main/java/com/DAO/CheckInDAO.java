package com.DAO;

import com.entities.check_in;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CheckInDAO {
    private final Connection conn;

    public CheckInDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean checkedIn(check_in check) {
        boolean f = false;
        try {
            String query1 = "update booking_details set CheckedInDate = ? where Booking_id = ?";
            PreparedStatement rps = conn.prepareStatement(query1);

            rps.setString(1, check.getCheckin());
            rps.setString(2, check.getBookingid());
            rps.executeUpdate();
            f=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
       return f;
    }
}
