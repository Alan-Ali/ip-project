package com.mvcspring.models;

public class Hotels {
    private int hotel_id;
    private String hotel_name;
    private String hotel_description;
    private double hotel_room_price;
    private String hotel_image_name;
    private String hotel_image_ext;
    private int hotel_star;

    public int getHotel_star() {
        return hotel_star;
    }

    public void setHotel_star(int hotel_star) {
        this.hotel_star = hotel_star;
    }

    public String getHotel_image_name() {
        return hotel_image_name;
    }

    public void setHotel_image_name(String hotel_image_name) {
        this.hotel_image_name = hotel_image_name;
    }

    public String getHotel_image_ext() {
        return hotel_image_ext;
    }

    public void setHotel_image_ext(String hotel_image_ext) {
        this.hotel_image_ext = hotel_image_ext;
    }


    public int getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(int hotel_id) {
        this.hotel_id = hotel_id;
    }

    public String getHotel_name() {
        return hotel_name;
    }

    public void setHotel_name(String hotel_name) {
        this.hotel_name = hotel_name;
    }

    public String getHotel_description() {
        return hotel_description;
    }

    public void setHotel_description(String hotel_description) {
        this.hotel_description = hotel_description;
    }

    public double getHotel_room_price() {
        return hotel_room_price;
    }

    public void setHotel_room_price(double hotel_room_price) {
        this.hotel_room_price = hotel_room_price;
    }

}
