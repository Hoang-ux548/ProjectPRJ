/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author nhtho
 */
public class UserProfileDTO {
    private int accountId;
    private String fullName;
    private int age;
    private String gender;
    private String hobbies;
    private String email;
    private String des;

    public UserProfileDTO() {
    }

    public UserProfileDTO(int accountId, String fullName, int age, String gender, String hobbies, String email, String des) {
        this.accountId = accountId;
        this.fullName = fullName;
        this.age = age;
        this.gender = gender;
        this.hobbies = hobbies;
        this.email = email;
        this.des = des;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getHobbies() {
        return hobbies;
    }

    public void setHobbies(String hobbies) {
        this.hobbies = hobbies;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }
    
    
}
