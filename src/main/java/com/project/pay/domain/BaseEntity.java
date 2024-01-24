package com.project.pay.domain;

import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.PrePersist;
import lombok.Data;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Data
@EntityListeners(value = AuditingEntityListener.class)
public class BaseEntity {

    @Column(updatable = false)
    private LocalDateTime regDate;

    private String address;

    private double latitude;

    private double longitude;

    @PrePersist
    public void initRegDate() {
        this.regDate = LocalDateTime.now();
        this.regDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
    }

}
