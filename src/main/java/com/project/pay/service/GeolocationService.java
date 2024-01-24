package com.project.pay.service;

import com.project.pay.domain.Geolocation;
import com.project.pay.repository.GeolocationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GeolocationService {

    private final GeolocationRepository geolocationRepository;

    public List<Geolocation> findAll() {
        return geolocationRepository.findAll();
    }

}
