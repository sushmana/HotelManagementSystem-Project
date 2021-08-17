package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static void main(String[] args){}
    private static Connection conn;
    public static Connection getConnection(){
        try{
            if(conn==null){
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","Deepagupta12@");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }


}
