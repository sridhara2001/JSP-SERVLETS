package com.voya.repository;

import com.voya.exception.IdNotFoundException;
import com.voya.model.Doctor;

public interface IDoctorRepository {
	void addDoctor(Doctor doctor);
    void updateDoctor(int doctorId, double fees);
    void deleteDoctor(int doctorId);
    Doctor findById(int doctorId) throws IdNotFoundException;
}
