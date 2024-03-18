package com.voya.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.voya.exception.IdNotFoundException;
import com.voya.model.Doctor;
import com.voya.service.DoctorServiceImpl;
import com.voya.service.IDoctorService;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/editServlet")
public class EditServlet extends HttpServlet {
	IDoctorService doctorService = new DoctorServiceImpl();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String docId = request.getParameter("doctorId");
		int doctorId = Integer.parseInt(docId);
		
		Doctor doctor = null;
		try {
			doctor = doctorService.getById(doctorId);
		} catch (IdNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("doctor", doctor);
		RequestDispatcher dispatcher = request.getRequestDispatcher("updateDoctor.jsp");
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
