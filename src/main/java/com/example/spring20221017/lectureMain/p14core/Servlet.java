package com.example.spring20221017.lectureMain.p14core;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Servlet {
    @Autowired
    private Dao dao;

    public Dao getDao() {
        return dao;
    }
}
