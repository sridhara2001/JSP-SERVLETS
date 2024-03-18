package com.employee.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.employeeapp.service.Employee;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet(name = "employeeServlet", urlPatterns = { "/employeeServlet" })
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		
		String employeeName = request.getParameter("employeeName");
		String empId = request.getParameter("employeeId");
		int empoyeeId = Integer.parseInt(empId);
		
		String empSalary = request.getParameter("employeeSalary");
		double employeeSalary = Double.parseDouble(empSalary);
		
		String employeeCity = request.getParameter("employeeCity");
		
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		employee.setCity(employeeCity);
		employee.setEmployeeId(empoyeeId);
		employee.setSalary(employeeSalary);
		
		request.setAttribute("employee", employee);
		request.setAttribute("message", "Great Day");
		session.setAttribute("message1", "Welcome to EL");
		session.setAttribute("message1", "In request scope");
		RequestDispatcher dispatcher = request.getRequestDispatcher("empexplang.jsp");
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
