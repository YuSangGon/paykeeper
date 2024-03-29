package com.project.pay.domain;

import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Data
@NoArgsConstructor
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Entity
public class Company extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;  // 직장 이름

    @Column(updatable = false, unique = true)
    private String code;  // 방 생성 고유 번호

    @Enumerated(value = EnumType.STRING)
    private PayFrequency payFrequency;

    // 사장이 설정 가능
    // 알바를 구하고 있는지 => 구인 중인지 아닌지
    @ColumnDefault(value = "true")
    private boolean state;

    // User : Company = N:M
    // 해당 방에 포함된 알바, 사장 목록을 알기 위함
    @ManyToMany
    private List<User> users = new ArrayList<>();

    // Company : Job = 1 : N
    // 해당 방에서 알바들이 얼마나 일했는지 알기 위함
    // Job 에 데이터 넣을 때 company, user 모두의 id 가 들어가야 한다.
    @OneToMany
    @JoinColumn(name = "company_id")
    private List<Job> jobs = new ArrayList<>();

    // Company : Vacation = 1 : N
    @OneToMany
    @JoinColumn(name = "company_id")
    private List<Vacation> vacations = new ArrayList<>();

    public void addUsers(User... users) {
        Collections.addAll(this.users, users);
    }

    public void addJobs(Job... jobs) {
        Collections.addAll(this.jobs, jobs);
    }

    public void addVacations(Vacation... vacations) {
        Collections.addAll(this.vacations, vacations);
    }

}
