package com.MediCare.Doctor.Doctormodel;

public class Doctor {
    private int idDoctor;
    private String doctorFirstName;
    private String doctorLastName;
    private String Speciality;


    public Doctor(int idDoctor, String doctorFirstName, String doctorLastName, String Speciality) {
        this.idDoctor = idDoctor;
        this.doctorFirstName = doctorFirstName;
        this.doctorLastName = doctorLastName;
        this.Speciality = Speciality;

    }

    public int getIdDoctor() {
        return idDoctor;
    }

    public void setIdDoctor(int idDoctor) {
        this.idDoctor = idDoctor;
    }

    public String getSpeciality() {
        return Speciality;
    }

    public void setSpeciality(String speciality) {
        Speciality = speciality;
    }

    public String getDoctorLastName() {
        return doctorLastName;
    }

    public void setDoctorLastName(String doctorLastName) {
        this.doctorLastName = doctorLastName;
    }

    public String getDoctorFirstName() {
        return doctorFirstName;
    }

    public void setDoctorFirstName(String doctorFirstName) {
        this.doctorFirstName = doctorFirstName;
    }
}
