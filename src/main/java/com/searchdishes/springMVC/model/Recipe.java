package com.searchdishes.springMVC.model;

public class Recipe {
    private int ID;
    private String Name;
    private String Content;
    private String Ingredients;
    private String Kitchen;
    private String Time;
    private String Difficulty;
    private String Type;
    private String ImageLink;

    public Recipe() {
    }

    public Recipe(String name, String content, String ingredients, String kitchen, String time, String difficulty, String type, String imageLink) {
        Name = name;
        Content = content;
        Ingredients = ingredients;
        Kitchen = kitchen;
        Time = time;
        Difficulty = difficulty;
        Type = type;
        ImageLink = imageLink;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }

    public String getIngredients() {
        return Ingredients;
    }

    public void setIngredients(String ingredients) {
        Ingredients = ingredients;
    }

    public String getKitchen() {
        return Kitchen;
    }

    public void setKitchen(String kitchen) {
        Kitchen = kitchen;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }

    public String getDifficulty() {
        return Difficulty;
    }

    public void setDifficulty(String difficulty) {
        Difficulty = difficulty;
    }

    public String getType() {
        return Type;
    }

    public void setType(String type) {
        Type = type;
    }

    public String getImageLink() {
        return ImageLink;
    }

    public void setImageLink(String imageLink) {
        ImageLink = imageLink;
    }
}
