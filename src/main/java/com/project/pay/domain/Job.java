package com.project.pay.domain;


import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.ColumnDefault;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Entity
public class Job extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private LocalDateTime startedAt;  // 알바를 시작한 시간

    @Column(nullable = false)
    private LocalDateTime finishedAt; // 알바가 끝난 시간

    // 해당 Job에 대한 급여가 지불되었나
    // 데이터를 넣은 시점에서는 false로 지정
    // 사장이 지불 완료를 누를 경우 true
    @ColumnDefault("false")
    @Column(insertable = false, name = "is_paid")
    private boolean isPaid;
    
    // 해당 Job의 최저 시급 설정
    // 기본값은 현재 최저시급이 9860원
    private int minMoney;

}
