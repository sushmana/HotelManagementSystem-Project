package com.entities;

public class RoomBooking {
    private String name ;
    private String phone;
    private String email;
    private String address;
    private String city ;
    private String state;
    private String nationality;
    private String adhaar;
    private String bookingfrom;
    private String bookingto;
    private String room_num;
    private String booking_id;

    public RoomBooking(String name, String phone, String email, String address, String city, String state, String nationality, String adhaar) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.city = city;
        this.state=state;
        this.nationality = nationality;
        this.adhaar = adhaar;
    }

    public RoomBooking(String bookingfrom,String bookingto,String room_num,String booking_id) {
        this.bookingfrom = bookingfrom;
        this.bookingto = bookingto;
        this.room_num = room_num;
        this.booking_id= booking_id;

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getAdhaar() { return adhaar; }

    public void setAdhaar(String adhaar) {this.adhaar = adhaar;}

    public String getBookingfrom() {
        return bookingfrom;
    }

    public void setBookingfrom(String bookingfrom) {
        this.bookingfrom = bookingfrom;
    }

    public String getBookingto() {
        return bookingto;
    }

    public void setBookingto(String bookingto) {
        this.bookingto = bookingto;
    }

    public String getRoom_num() { return room_num;}

    public void setRoom_num(String room_num) { this.room_num = room_num;}

    public String getBooking_id() { return booking_id;}

    public void setBooking_id(String booking_id) { this.booking_id = booking_id;}
}
