package com.doctorapp.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doctorapp.model.Doctor;

/**
 * Servlet implementation class DoctorServlet
 */
@WebServlet(name = "doctorServlet", urlPatterns = { "/doctorServlet" })
public class DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String doctorName = request.getParameter("doctorName");
		String docId = request.getParameter("doctorId");
		int doctorId = Integer.parseInt(docId);
		String speciality = request.getParameter("speciality");
		String fees = request.getParameter("doctorFees");
		double doctorFees = Double.parseDouble(fees);
		String ratings = request.getParameter("doctorRatings");
		int doctorRatings = Integer.parseInt(ratings);
		String experience = request.getParameter("doctorExperience");
		float doctorExperience = Float.parseFloat(experience);
		
		Doctor doctor = new Doctor();
		doctor.setDoctorName(doctorName);
		doctor.setDoctorId(doctorId);
		doctor.setSpeciality(speciality);
		doctor.setFees(doctorFees);
		doctor.setRatings(doctorRatings);
		doctor.setExperience(doctorExperience);
		
		request.setAttribute("doctor", doctor);
		RequestDispatcher dispatcher = request.getRequestDispatcher("doctorsuccess.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
