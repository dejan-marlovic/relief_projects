package io.github.dejanmarlovic.reliefprojects.relief_projects.service;

import io.github.dejanmarlovic.reliefprojects.relief_projects.dto.AdditionRequest;
import org.springframework.stereotype.Service;

@Service
public class AdditionService {
    public Integer add(AdditionRequest request){
        return request.getNum1() + request.getNum2();
    }

}
