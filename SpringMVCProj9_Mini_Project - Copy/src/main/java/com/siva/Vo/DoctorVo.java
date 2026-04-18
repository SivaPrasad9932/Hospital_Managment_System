package com.siva.Vo;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class DoctorVo {
	
	private int did;
	
	private String name;

	private String specialization;
	
	private int updatecount;
}
