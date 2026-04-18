package com.siva.service;



import com.siva.Vo.DoctorVo;
import com.siva.entity.Doctor;


public interface IDoctor {
	
	public String RegisterDoctor(DoctorVo doc);
	public  Iterable<DoctorVo> showAllDoctors();
	public  Doctor findById(int id);
	public String update(DoctorVo vo);
	public String deleteDoctorById(int id);

}
