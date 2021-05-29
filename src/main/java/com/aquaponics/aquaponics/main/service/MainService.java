package com.aquaponics.aquaponics.main.service;

import com.aquaponics.aquaponics.main.mappers.MainMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainService {
    
    @Autowired
    public MainMapper mainMapper;


}
