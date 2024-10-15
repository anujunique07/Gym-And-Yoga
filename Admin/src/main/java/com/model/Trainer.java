package com.model;

public class Trainer {
    // Class properties
    private int id; // Add this field
    private String username;
    private String email;
    private String phone;
    private String gender;
    private String aadharNo;
    private String experience;
    private String age;
    private String certifiedTrainer;

    // Constructor
    public Trainer(int id, String username, String email, String phone, String gender, String aadharNo, String experience, String age, String certifiedTrainer) {
        this.id = id;  // Set the id
        this.username = username;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.aadharNo = aadharNo;
        this.experience = experience;
        this.age = age;
        this.certifiedTrainer = certifiedTrainer;
    }

    // Getters
    public int getId() { return id; }  // Add this getter
    public String getUsername() { return username; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getGender() { return gender; }
    public String getAadharNo() { return aadharNo; }
    public String getExperience() { return experience; }
    public String getAge() { return age; }
    public String getCertifiedTrainer() { return certifiedTrainer; }

    // Setters
    public void setId(int id) { this.id = id; }  // Add this setter
    public void setUsername(String username) { this.username = username; }
    public void setEmail(String email) { this.email = email; }
    public void setPhone(String phone) { this.phone = phone; }
    public void setGender(String gender) { this.gender = gender; }
    public void setAadharNo(String aadharNo) { this.aadharNo = aadharNo; }
    public void setExperience(String experience) { this.experience = experience; }
    public void setAge(String age) { this.age = age; }
    public void setCertifiedTrainer(String certifiedTrainer) { this.certifiedTrainer = certifiedTrainer; }
}
