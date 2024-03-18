package com.voya.service;

import com.voya.exception.IdNotFoundException;
import com.voya.model.Doctor;

public interface IDoctorService {
	void addDoctor(Doctor doctor);

	void updateDoctor(int doctorId, double fees);

	void deleteDoctor(int doctorId);
	Doctor getById(int doctorId) throws IdNotFoundException;
}
