package com.DAO;

import com.entities.CompleteData;
import com.entities.RoomBooking;
import com.entities.User;
import com.entities.check_in;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class CheckoutDAO {
    private final Connection conn;

    public CheckoutDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean checkedOut(check_in check) {
        boolean f = false;
        try {
            String query1 = "update booking_details set CheckedOutDate = ? where Booking_id =?";
            PreparedStatement rps = conn.prepareStatement(query1);

            rps.setString(1, check.getCheckin());
            rps.setString(2, check.getBookingid());
            rps.executeUpdate();

            String query2="SELECT room_id from booking_details where booking_id="+check.getBookingid();
            Statement statement=conn.createStatement();
            int id=0;
            try (ResultSet rs = statement.executeQuery(query2)) {
                if (rs.next()) {
                    id = rs.getInt(1);
                    System.out.println(id);
                }
            }
            query1 = "update roominfo set availability=1 where room_id=?";
            rps = conn.prepareStatement(query1);
            rps.setInt(1, id);
            rps.executeUpdate();
            f=true;
        } catch (Exception e) {
             e.printStackTrace();
        }
        return f;
    }
    public CompleteData getData(String booking_id) {
        CompleteData f=null;
        try {
            String query1 = "select * from booking_details,roominfo,room_book where booking_details.Booking_id=? And booking_details.Room_id=roominfo.Room_id AND booking_details.Booking_id=room_book.Booking_id;";
            PreparedStatement rps = conn.prepareStatement(query1);

            rps.setString(1, booking_id);
            try (ResultSet rs = rps.executeQuery()) {

                if (rs.next()) {
                    RoomBooking rb=new RoomBooking(rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getString(18),rs.getString(19),rs.getString(20),rs.getString(21));
                    CompleteData cd=new CompleteData(rb,rs.getString(6),rs.getString(7),rs.getString(9),rs.getString(10),rs.getString(11));
                f=cd;
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}