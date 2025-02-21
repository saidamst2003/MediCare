package com.MediCare.Appointment.Model;

import java.sql.Date;
public class Appointment {
        private Long id;
        private Long patientId;
        private Long doctorId;
        private Date appointmentDate;
        private String appointmentTime;
        private String reason;
        private String status;
        // Champs supplémentaires pour l'affichage
        private String patientName;
        private String doctorName;
        private String doctorSpeciality;

        // Constructeurs
        public Appointment() {}

        public Appointment(Long patientId, Long doctorId, Date appointmentDate,
                           String appointmentTime, String reason) {
            this.patientId = patientId;
            this.doctorId = doctorId;
            this.appointmentDate = appointmentDate;
            this.appointmentTime = appointmentTime;
            this.reason = reason;
            this.status = "PENDING"; // Statut par défaut
        }

        // Getters et Setters
        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public Long getPatientId() {
            return patientId;
        }

        public void setPatientId(Long patientId) {
            this.patientId = patientId;
        }

        public Long getDoctorId() {
            return doctorId;
        }

        public void setDoctorId(Long doctorId) {
            this.doctorId = doctorId;
        }

        public Date getAppointmentDate() {
            return appointmentDate;
        }

        public void setAppointmentDate(Date appointmentDate) {
            this.appointmentDate = appointmentDate;
        }

        public String getAppointmentTime() {
            return appointmentTime;
        }

        public void setAppointmentTime(String appointmentTime) {
            this.appointmentTime = appointmentTime;
        }

        public String getReason() {
            return reason;
        }

        public void setReason(String reason) {
            this.reason = reason;
        }

        public String getStatus() {
            return status;
        }

        public void setStatus(String status) {
            this.status = status;
        }

        public String getPatientName() {
            return patientName;
        }

        public void setPatientName(String patientName) {
            this.patientName = patientName;
        }

        public String getDoctorName() {
            return doctorName;
        }

        public void setDoctorName(String doctorName) {
            this.doctorName = doctorName;
        }

        public String getDoctorSpeciality() {
            return doctorSpeciality;
        }

        public void setDoctorSpeciality(String doctorSpeciality) {
            this.doctorSpeciality = doctorSpeciality;
        }
    }

