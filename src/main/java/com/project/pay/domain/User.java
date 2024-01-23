package com.project.pay.domain;

import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.ColumnDefault;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@Data
@NoArgsConstructor
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Entity(name = "p_user")
public class User extends BaseEntity{   // 사용자 정보를 위한 테이블
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String username;  // 실명

    private String nickname;

    @Column(nullable = false)
    private String password;  // password

    @Column(nullable = false)
    private String email;  // 이메일을 아이디로 사용할 것임
    
    // 알바만 설정 가능
    // 구직 중인지 아닌지를 명시
    @ColumnDefault(value = "false")
    private String state;

    @Enumerated(value = EnumType.STRING)
    private Gender gender;

    @OneToOne
    @ToString.Exclude
    @JoinColumn(name = "geolocation_id")
    private Geolocation geolocation;

    // User : Job = 1:N
    // 유저의 근무 시간 리스트
    @OneToMany
    @JoinColumn(name = "p_user_id")
    private List<Job> jobs = new ArrayList<>();

    // Authority : User = 1:1
    // 해당 유저가 알바인지 사장인지
    @OneToOne
    @JoinColumn(name = "p_user_id")
    private Authority authority;

    // User : Company = N:M
    @ManyToMany
    @ToString.Exclude
    private List<Company> companies = new ArrayList<>();

    @OneToMany
    @JoinColumn(name = "p_user_id")
    private List<Star> stars = new ArrayList<>();

    public void addJobs(Job... jobs) {
        Collections.addAll(this.jobs, jobs);
    }

    public void addCompanies(Company... companies) {
        Collections.addAll(this.companies, companies);
    }

    public void addStars(Star... stars) {
        Collections.addAll(this.stars, stars);
    }

}
