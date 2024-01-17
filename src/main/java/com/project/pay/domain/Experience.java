package com.project.pay.domain;


import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Entity
public class Experience extends BaseEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name; // 어디서 근무 했나

    @Column(nullable = false)
    private String type; // 맡은 직무 : 홀서빙, 주방, ...

    @Column(nullable = false)
    private String duration; // 어느정도 근무 했나

}
