package com.mvcspring.models;

public class UserImage {
    int image_id;

    int user_id;

    String image_ext;

    String image_name;

    public int getImage_id() {
        return image_id;
    }

    public void setImage_id(int image_id) {
        this.image_id = image_id;
    }

    public String getImage_ext() {
        return image_ext;
    }

    public void setImage_ext(String image_ext) {
        this.image_ext = image_ext;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }


    public String getImage_name() {
        return image_name;
    }

    public void setImage_name(String image_name) {
        this.image_name = image_name;
    }

}
