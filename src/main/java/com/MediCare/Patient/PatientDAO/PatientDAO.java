package com.MediCare.Patient.PatientDAO;


import com.MediCare.Home.homeDAO.HomDAO;
import com.MediCare.Patient.Patientmodel.Patient;

import java.sql.*;


public class PatientDAO {
    public void createPatient(Patient patient) throws SQLException {
        String sql = "INSERT INTO patients (username, email, telephone) VALUES (?, ?, ?)";

        try (Connection conn = HomDAO.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, patient.getUserNamePaient());
            pstmt.setString(2, patient.getEmailPaient());
            pstmt.setInt(3, patient.getPhoneNumber());
            pstmt.executeUpdate();
        }
    }

    public Patient getPatientByUsername(String username) throws SQLException {
        String sql = "SELECT * FROM patients WHERE username = ?";

        try (Connection conn = HomDAO.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                Patient patient = new Patient();
                patient.idPatient(rs.getInt("idPatient"));
                patient.userNamePaient(rs.getString("userNamePaient"));
                patient.phoneNumber(rs.getInt("phoneNumber"));
                patient.EmailPaient(rs.getString("EmailPaient"));
                return patient;
            }
        }
        return null;
    }
}