package com.mycompany.mavenproject5;

public class student {   
    private int id;
    private String name;
    private int age;
    private String education;
    private String skills;
    private String achievements;

    // Constructors
    public student() {}

    public student(int id, String name, int age, String education, String skills, String achievements) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.education = education;
        this.skills = skills;
        this.achievements = achievements;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getAchievements() {
        return achievements;
    }

    public void setAchievements(String achievements) {
        this.achievements = achievements;
    }

    @Override
    public String toString() {
        return "Student [id=" + id + ", name=" + name + ", age=" + age + 
               ", education=" + education + ", skills=" + skills + 
               ", achievements=" + achievements + "]";
    }
}
