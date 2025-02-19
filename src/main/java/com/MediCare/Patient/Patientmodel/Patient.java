package com.MediCare.Patient.Patientmodel;

public class Patient {
    public int idPatient;
    public String userNamePaient;
    public int phoneNumber;
    public String EmailPaient;

    public int getIdPatient() {
        return idPatient;
    }

    public void setIdPatient(int idPatient) {
        this.idPatient = idPatient;
    }

    public String getEmailPaient() {
        return EmailPaient;
    }

    public void setEmailPaient(String emailPaient) {
        EmailPaient = emailPaient;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getUserNamePaient() {
        return userNamePaient;
    }

    public void setUserNamePaient(String userNamePaient) {
        this.userNamePaient = userNamePaient;
    }
}
