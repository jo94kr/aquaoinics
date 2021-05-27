package com.aquaponics.aquaponics.service;


import com.aquaponics.aquaponics.dto.MemberBean;

import org.springframework.stereotype.Service;

@Service
public class MainService {
    public interface MemberService {

        public void register(MemberBean MB) throws Exception;
        
    }
}
