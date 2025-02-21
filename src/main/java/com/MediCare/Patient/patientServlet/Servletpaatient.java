// PatientLoginServlet.java - Page de connexion patient
     package com.MediCare.Patient.patientServlet;
import com.MediCare.Patient.PatientDAO.PatientDAO;
import com.MediCare.Patient.Patientmodel.Patient;
import jakarta.servlet.annotation.WebServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/patient")
class patientServlet extends HttpServlet {
    private PatientDAO patientDAO = new PatientDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/patient-login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");

        try {
            Patient patient = patientDAO.getPatientByUsername(username);
            if (patient != null) {
                request.getSession().setAttribute("patient", patient);
                response.sendRedirect(request.getContextPath() + "/patient");
            } else {
                request.setAttribute("error", "Patient non trouvé");
                request.getRequestDispatcher("/patient.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("error", "Erreur de connexion");
            request.getRequestDispatcher("/patient.jsp").forward(request, response);
        }
    }
}