package com.MediCare.Appointment.AppointmentServlet;

import com.MediCare.Appointment.AppointmentDAO.AppointmentDAO;
import com.MediCare.Appointment.Model.Appointment;
import com.MediCare.Doctor.Doctormodel.Doctor;
import com.MediCare.Doctor.doctorDao.DoctorDAO;
import com.MediCare.Patient.Patientmodel.Patient;
import jakarta.servlet.annotation.WebServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet("/new-appointment")
public class NewAppointmentServlet extends HttpServlet {
    private DoctorDAO doctorDAO = new DoctorDAO();
    private AppointmentDAO appointmentDAO = new AppointmentDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Doctor> doctors = doctorDAO.getAllDoctors();
            request.setAttribute("doctors", doctors);
            request.getRequestDispatcher("/patient/new-appointment.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Error fetching doctors", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Patient patient = (Patient) request.getSession().getAttribute("patient");
        if (patient == null) {
            response.sendRedirect(request.getContextPath() + "/patient-login");
            return;
        }

        try {
            Appointment appointment = new Appointment();
            appointment.setPatientId(Patient.getIdPtient());
            appointment.setDoctorId(Long.parseLong(request.getParameter("doctorId")));
            appointment.setAppointmentDate(Date.valueOf(request.getParameter("appointmentDate")));
            appointment.setAppointmentTime(request.getParameter("appointmentTime"));
            appointment.setReason(request.getParameter("reason"));
            appointment.setStatus("PENDING");

            appointmentDAO.createAppointment(appointment);
            response.sendRedirect(request.getContextPath() + "/patient-dashboard");
        } catch (Exception e) {
            request.setAttribute("error", "Erreur lors de la création du rendez-vous");
            doGet(request, response);
        }
    }
}
