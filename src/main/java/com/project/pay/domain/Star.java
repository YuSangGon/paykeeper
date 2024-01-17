package com.project.pay.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Entity
// 알바와 사장의 평가 및 별점 ( 0 ~ 5 )
public class Star extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // 리뷰의 대상이 되는 user의 id
    // 직접 넣어줄꺼임
    @Column(nullable = false)
    private Long target_id;

    @Column(nullable = false)
    private String content;

    @Column(nullable = false)
    @Max(5)
    @Min(0)
    private int star;
}
