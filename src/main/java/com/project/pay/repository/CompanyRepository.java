package com.project.pay.repository;

import com.project.pay.domain.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CompanyRepository extends JpaRepository<Company, Long> {

    @Query(value = "SELECT count(*) FROM company WHERE code = :code ", nativeQuery = true)
    int isExistByCode(@Param("code") String code);

}
