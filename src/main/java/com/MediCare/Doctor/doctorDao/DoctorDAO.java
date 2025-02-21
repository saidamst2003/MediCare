package com.MediCare.Doctor.doctorDao;

import com.MediCare.Doctor.Doctormodel.Doctor;
import com.MediCare.Home.homeDAO.HomDAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DoctorDAO {
    public List<Doctor> getAllDoctors() throws SQLException {
        List<Doctor> doctors = new ArrayList<>();
        String sql = "SELECT * FROM doctors";

        try (Connection conn = HomDAO.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Doctor doctor = new Doctor();
                doctor.setIdDoctor(rs.getInt("idDoctor"));
               doctor.setDoctorFirstName(rs.getString("doctorFirstName"));
                doctor.setSpeciality(rs.getString("speciality"));
                doctors.add(doctor);
            }
        }
        return doctors;
    }

    public Doctor getDoctorById(Long id) throws SQLException {
        String sql = "SELECT * FROM doctors WHERE id = ?";

        try (Connection conn = HomDAO.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setLong(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                Doctor doctor = new Doctor();
                doctor.setIdDoctor(rs.getInt("idDoctor"));
                doctor.setDoctorFirstName(rs.getString("doctorFirstName"));
                doctor.setSpeciality(rs.getString("speciality"));

            }
        }
        return null;
    }
}
