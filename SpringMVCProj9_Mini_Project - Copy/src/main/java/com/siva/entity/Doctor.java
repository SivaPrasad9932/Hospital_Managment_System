package com.siva.entity;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.SQLRestriction;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.annotation.Nonnull;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "doctor")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@SQLDelete(sql = "UPDATE doctor SET status='inactive' WHERE did=? AND updatecount=?")
@SQLRestriction("status <> 'inactive'")
public class Doctor {

    @Id
    @Nonnull
    private int did;   // ✅ manual ID

    @Column(length = 20, nullable = false)
    private String name;

    @Column(length = 20, nullable = false)
    private String specialization;

    @Version
    private int updatecount;

    private String createdBy;

    @CreationTimestamp
    @Column(updatable = false)
    private LocalDateTime createdon;

    @UpdateTimestamp
    private LocalDateTime updatedon;

    private String status = "active";
}