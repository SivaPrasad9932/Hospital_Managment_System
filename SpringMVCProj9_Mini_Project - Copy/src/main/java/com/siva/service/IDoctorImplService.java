package com.siva.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.siva.DAO.IDoctorRepository;
import com.siva.controller.DoctorCrudOperations;
import com.siva.Vo.DoctorVo;
import com.siva.entity.Doctor;

import ch.qos.logback.core.joran.util.beans.BeanUtil;

@Service

public class IDoctorImplService implements IDoctor{
	@Autowired	
	IDoctorRepository repo;

	@Override
	public String RegisterDoctor(DoctorVo doc) {
		Doctor d1=new Doctor();
		DoctorVo vo1=doc;
		BeanUtils.copyProperties(vo1, d1);

		//setting meta data properties
		//		d1.setCreatedon(LocalDateTime.now());
		//		d1.setCretedby(System.getenv("user"));

		//saving record
		return "Doctor inserted with Id "+repo.save(d1).getDid();
    }

	@Override
	public Iterable<DoctorVo> showAllDoctors() {
		Iterable<Doctor> doc=repo.findAll();
		List<DoctorVo> vo=new ArrayList<DoctorVo>();
		doc.forEach(e->{
			DoctorVo vo1=new DoctorVo();
			Doctor do1=e;
			BeanUtils.copyProperties(e, vo1);
			vo.add(vo1);
		});
		return vo;
	}

	@Override
	public Doctor findById(int id) {
		Optional<Doctor> doc1=repo.findById(id);
		Doctor do1=null;
		if(doc1.isPresent()) {
			do1=doc1.get();
		}
		return do1;
	}

	@Override
	public String update(DoctorVo vo) {
		Doctor existing = repo.findById(vo.getDid()).orElseThrow();
		BeanUtils.copyProperties(vo, existing);
		repo.save(existing);
		return "Record Insertred Successfully";
	}

	@Override
	public String deleteDoctorById(int id) {
	  repo.deleteById(id);
	  return "Record deleted With Id"+id;
	}

}
