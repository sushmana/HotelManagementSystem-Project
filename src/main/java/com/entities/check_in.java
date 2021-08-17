package com.entities;

public class check_in {

    private String bookingid;
    private static String checkin;

    public check_in(String bookingid, String checkin) {
        this.bookingid = bookingid;
        this.checkin = checkin;
    }

    public String getBookingid() {
        return bookingid;
    }

    public void setBookingid(String bookingid) {
        this.bookingid = bookingid;
    }

    public static String getCheckin() {
        return checkin;
    }

    public void setCheckin(String checkin) {
        this.checkin = checkin;
    }
}