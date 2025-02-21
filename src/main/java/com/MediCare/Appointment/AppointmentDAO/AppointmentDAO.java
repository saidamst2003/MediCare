package com.MediCare.Appointment.AppointmentDAO;
import com.MediCare.Appointment.Model.Appointment;
import com.MediCare.Home.homeDAO.HomDAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class AppointmentDAO {




        public void createAppointment(Appointment appointment) throws SQLException {
            String sql = "INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, reason, status) " +
                    "VALUES (?, ?, ?, ?, ?, ?)";

            try (Connection conn = HomDAO.getConnection();
                 PreparedStatement pstmt = conn.prepareStatement(sql)) {

                pstmt.setLong(1, appointment.getPatientId());
                pstmt.setLong(2, appointment.getDoctorId());
                pstmt.setDate(3, appointment.getAppointmentDate());
                pstmt.setString(4, appointment.getAppointmentTime());
                pstmt.setString(5, appointment.getReason());
                pstmt.setString(6, appointment.getStatus());
                pstmt.executeUpdate();
            }
        }

        public List<Appointment> getPatientAppointments(Long patientId) throws SQLException {
            List<Appointment> appointments = new ArrayList<>();
            String sql = "SELECT a.*, d.name as doctor_name, d.speciality " +
                    "FROM appointments a " +
                    "JOIN doctors d ON a.doctor_id = d.id " +
                    "WHERE a.patient_id = ? " +
                    "ORDER BY a.appointment_date, a.appointment_time";

            try (Connection conn = HomDAO.getConnection();
                 PreparedStatement pstmt = conn.prepareStatement(sql)) {

                pstmt.setLong(1, patientId);
                ResultSet rs = pstmt.executeQuery();

                while (rs.next()) {
                    Appointment appointment = new Appointment();
                    appointment.setId(rs.getLong("id"));
                    appointment.setPatientId(patientId);
                    appointment.setDoctorId(rs.getLong("doctor_id"));
                    appointment.setAppointmentDate(rs.getDate("appointment_date"));
                    appointment.setAppointmentTime(rs.getString("appointment_time"));
                    appointment.setReason(rs.getString("reason"));
                    appointment.setStatus(rs.getString("status"));
                    // Set additional doctor information
                    appointment.setDoctorName(rs.getString("doctor_name"));
                    appointment.setDoctorSpeciality(rs.getString("speciality"));
                    appointments.add(appointment);
                }
            }
            return appointments;
        }

        public List<Appointment> getDoctorAppointments(Long doctorId) throws SQLException {
            List<Appointment> appointments = new ArrayList<>();
            String sql = "SELECT a.*, p.username as patient_name " +
                    "FROM appointments a " +
                    "JOIN patients p ON a.patient_id = p.id " +
                    "WHERE a.doctor_id = ? " +
                    "ORDER BY a.appointment_date, a.appointment_time";

            try (Connection conn = HomDAO.getConnection();
                 PreparedStatement pstmt = conn.prepareStatement(sql)) {

                pstmt.setLong(1, doctorId);
                ResultSet rs = pstmt.executeQuery();

                while (rs.next()) {
                    Appointment appointment = new Appointment();
                    appointment.setId(rs.getLong("id"));
                    appointment.setPatientId(rs.getLong("patient_id"));
                    appointment.setDoctorId(doctorId);
                    appointment.setAppointmentDate(rs.getDate("appointment_date"));
                    appointment.setAppointmentTime(rs.getString("appointment_time"));
                    appointment.setReason(rs.getString("reason"));
                    appointment.setStatus(rs.getString("status"));
                    appointment.setPatientName(rs.getString("patient_name"));
                    appointments.add(appointment);
                }
            }
            return appointments;
        }

        public void updateAppointmentStatus(Long appointmentId, String status) throws SQLException {
            String sql = "UPDATE appointments SET status = ? WHERE id = ?";

            try (Connection conn = HomDAO.getConnection();
                 PreparedStatement pstmt = conn.prepareStatement(sql)) {

                pstmt.setString(1, status);
                pstmt.setLong(2, appointmentId);
                pstmt.executeUpdate();
            }
        }
    }
