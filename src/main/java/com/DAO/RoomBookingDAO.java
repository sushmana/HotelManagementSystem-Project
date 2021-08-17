package com.DAO;

import com.entities.RoomBooking;
import com.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class RoomBookingDAO {
    private final Connection conn;

    public RoomBookingDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public int roombook(RoomBooking room) {
        boolean f = false;
        try {
            String query1,query2;
            query1 = "insert into room_book(name,phone,email,address,city,state,nationality,adhaar)values(?,?,?,?,?,?,?,?);";
            PreparedStatement rps = conn.prepareStatement(query1);
            rps.setString(1, room.getName());
            rps.setString(2, room.getPhone());
            rps.setString(3, room.getEmail());
            rps.setString(4, room.getAddress());
            rps.setString(5, room.getCity());
            rps.setString(6, room.getState());
            rps.setString(7, room.getNationality());
            rps.setString(8, room.getAdhaar());

            int id=0;
            query2="SELECT booking_id from room_book order by time desc limit 1";
            Statement statement=conn.createStatement();

            try (ResultSet rs = statement.executeQuery(query2)) {
                if (rs.next()) {
                    id = rs.getInt(1)+1;
                    System.out.println(id);
                }
            }

            rps.executeUpdate();
            f = true;
            return id;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public void roomSelect(RoomBooking room) {
        boolean f = false;
        try {
            //String query1,query2;
            String query1 = "insert into booking_details(Booking_id,Room_id,checkindate,checkoutdate,Booked)values(?,?,?,?,?);";
            PreparedStatement rps = conn.prepareStatement(query1);
            rps.setInt(1, Integer.parseInt(room.getBooking_id()));
            rps.setInt(2, Integer.parseInt(room.getRoom_num()));
            rps.setString(3, room.getBookingfrom());
            rps.setString(4, room.getBookingto());
            rps.setInt(5,1);
            rps.executeUpdate();
            query1 = "update roominfo set availability=0 where room_id=?";
            rps = conn.prepareStatement(query1);
            rps.setInt(1, Integer.parseInt(room.getRoom_num()));
            rps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}