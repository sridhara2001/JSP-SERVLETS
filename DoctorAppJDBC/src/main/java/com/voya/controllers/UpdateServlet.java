package com.voya.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.voya.model.Doctor;
import com.voya.service.DoctorServiceImpl;
import com.voya.service.IDoctorService;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/updateServlet")
public class UpdateServlet extends HttpServlet {
	
	IDoctorService doctorService = new DoctorServiceImpl();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String doctorName = request.getParameter("doctorName");
		
		String speciality = request.getParameter("speciality");
		String docFees = request.getParameter("doctorFees");
		double fees = Double.parseDouble(docFees);
		
		String docRat = request.getParameter("ratings");
		int ratings = Integer.parseInt(docRat);
		
		String docExp = request.getParameter("experience");
		int experience = Integer.parseInt(docExp);
		
		Doctor doctor = new Doctor();
		doctor.setDoctorName(doctorName);
		doctor.setSpeciality(speciality);
		doctor.setFees(fees);
		doctor.setRatings(ratings);
		doctor.setExperience(experience);
		
		doctorService.updateDoctor(doctor.getDoctorId(),fees);
		RequestDispatcher dispatcher = request.getRequestDispatcher("editDoctor.jsp");
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
