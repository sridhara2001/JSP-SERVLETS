package com.voya.service;

import com.voya.exception.IdNotFoundException;
import com.voya.model.Doctor;
import com.voya.repository.DoctorRepositoryImpl;
import com.voya.repository.IDoctorRepository;

public class DoctorServiceImpl implements IDoctorService {
	 private IDoctorRepository doctorRepository = new DoctorRepositoryImpl();
	    public void addDoctor(Doctor doctor) {
	        doctorRepository.addDoctor(doctor);
	    }

	    public void updateDoctor(int doctorId, double fees) {
	        doctorRepository.updateDoctor(doctorId,fees);
	    }

	    public void deleteDoctor(int doctorId) {
	        doctorRepository.deleteDoctor(doctorId);
	    }

	    public Doctor getById(int doctorId) throws IdNotFoundException {
	        Doctor doctor = doctorRepository.findById(doctorId);
	        if(doctor==null){
	            throw new IdNotFoundException("Invalid ID");
	        }
	        return doctor;
	    }
}
