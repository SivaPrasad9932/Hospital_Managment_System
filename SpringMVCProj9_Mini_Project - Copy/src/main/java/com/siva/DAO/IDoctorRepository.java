package com.siva.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.siva.entity.Doctor;

public interface IDoctorRepository extends JpaRepository<Doctor, Integer> {

}
