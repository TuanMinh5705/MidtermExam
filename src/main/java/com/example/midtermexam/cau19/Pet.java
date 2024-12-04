package com.example.midtermexam.cau19;

public class Pet {
    private String name;       // Tên thú cưng
    private String species;    // Giống loài
    private int age;           // Tuổi
    private String owner;      // Chủ sở hữu

    // Constructor để khởi tạo thông tin của thú cưng
    public Pet(String name, String species, int age, String owner) {
        this.name = name;
        this.species = species;
        this.age = age;
        this.owner = owner;
    }

    // Getter và Setter cho các thuộc tính
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "name='" + name + '\'' +
                ", species='" + species + '\'' +
                ", age=" + age +
                ", owner='" + owner + '\'' +
                '}';
    }
}
