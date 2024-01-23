package com.project.pay.domain;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
public class Geolocation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    //경도
    private double longitude;

    //위도
    private double latitude;

    @OneToOne
    private User user;

    @OneToOne
    private Company company;

}
