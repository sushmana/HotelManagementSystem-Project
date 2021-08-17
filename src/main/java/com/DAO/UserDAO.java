package com.DAO;

import com.entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class UserDAO
{
    private final Connection conn;


    public UserDAO(Connection conn) {
        super();
        this.conn=conn;
    }
    public boolean userRegister(User us){
        boolean f=false;
        try{
            String query;
            query = "insert into register(email,password)values(?,?);";
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setString(1,us.getEmail());
            ps.setString(2,us.getPassword());


            ps.executeUpdate();
            f=true;


        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;

    }
    public User getLogin(String em,String ps){
        User us=null;
        try {

            String q = "Select * from register where email=? and password=?";

            PreparedStatement pst = conn.prepareStatement(q);
            pst.setString(1, em);
            pst.setString(2, ps);

            try (ResultSet rs = pst.executeQuery()) {

                if (rs.next()) {
                    us = new User(rs.getInt(1), rs.getString(2), rs.getString(3));
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return us;
    }
}
