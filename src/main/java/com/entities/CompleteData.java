package com.entities;

public class CompleteData {
    RoomBooking rb;
    String checkedInDate;
    String checkedOutDate;
    String roomtype;
    String bedsize;
    String price;


    public CompleteData(RoomBooking rb, String checkedInDate, String checkedOutDate, String roomtype, String bedsize, String price) {
        this.rb = rb;
        this.checkedInDate = checkedInDate;
        this.checkedOutDate = checkedOutDate;
        this.roomtype = roomtype;
        this.bedsize = bedsize;
        this.price = price;
    }

    public RoomBooking getRb() {
        return rb;
    }

    public void setRb(RoomBooking rb) {
        this.rb = rb;
    }

    public String getCheckedInDate() {
        return checkedInDate;
    }

    public void setCheckedInDate(String checkedInDate) {
        this.checkedInDate = checkedInDate;
    }

    public String getCheckedOutDate() {
        return checkedOutDate;
    }

    public void setCheckedOutDate(String checkedOutDate) {
        this.checkedOutDate = checkedOutDate;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    public String getBedsize() {
        return bedsize;
    }

    public void setBedsize(String bedsize) {
        this.bedsize = bedsize;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }


}
