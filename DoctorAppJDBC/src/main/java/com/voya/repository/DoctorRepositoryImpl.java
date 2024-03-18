package com.voya.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.voya.exception.IdNotFoundException;
import com.voya.model.Doctor;
import com.voya.util.DoctorDb;
import com.voya.util.Queries;

public class DoctorRepositoryImpl implements IDoctorRepository {

	@Override
	public void addDoctor(Doctor doctor) {
		// TODO Auto-generated method stub
		try(Connection connection = DoctorDb.openConnection();
	            PreparedStatement statement = connection.prepareStatement(Queries.INSERTQUERY);
	        ){
	            statement.setString(1,doctor.getDoctorName());
	            statement.setString(2,doctor.getSpeciality());
	            statement.setDouble(3,doctor.getFees());
	            statement.setInt(4,doctor.getRatings());
	            statement.setInt(5,doctor.getExperience());


	            boolean result = statement.execute();
	            System.out.println("One row inserted "+!result);
	        }catch (Exception e){
	            e.printStackTrace();
	        }
	}

	@Override
	public void updateDoctor(int doctorId, double fees) {
		try(Connection connection = DoctorDb.openConnection();
	            PreparedStatement statement = connection.prepareStatement(Queries.UPDATEQUERY);
	            ){
	            statement.setDouble(1,fees);
	            statement.setInt(2,doctorId);

	            int result = statement.executeUpdate();
	            System.out.println(result+" updated");
	        }catch (Exception e){
	            e.printStackTrace();
	        }
		
	}

	@Override
	public void deleteDoctor(int doctorId) {
		// TODO Auto-generated method stub
		
	}

	public Doctor findById(int doctorId) throws IdNotFoundException {
        try(Connection connection = DoctorDb.openConnection();
            PreparedStatement statement = connection.prepareStatement(Queries.FINDBYID);
        ){
            statement.setInt(1,doctorId);
            try(ResultSet resultSet = statement.executeQuery();) {
                while (resultSet.next()) {
                    String doctorName = resultSet.getString("doctor_name");
                    int experience = resultSet.getInt("experience");
                    int fees = resultSet.getInt("fees");
                    int ratings = resultSet.getInt("ratings");
                    String speciality = resultSet.getString("speciality");

                    Doctor doctor = new Doctor(doctorId,doctorName,speciality,fees,ratings,experience);
                    doctor.setDoctorName(doctorName);
                    doctor.setSpeciality(speciality);
                    doctor.setExperience(experience);
                    doctor.setFees(fees);
                    doctor.setRatings(ratings);

                    return doctor;
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

}
