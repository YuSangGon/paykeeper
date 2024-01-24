package com.project.pay.repository;

import com.project.pay.domain.Geolocation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface GeolocationRepository extends JpaRepository<Geolocation, Long> {



}
