package io.github.dejanmarlovic.reliefprojects.relief_projects.dto;

import jakarta.validation.constraints.NotNull;

public class AdditionRequest {
    @NotNull(message = "num1 must exist")
    private Integer num1;
    @NotNull(message = "num2 must exist")
    private Integer num2;

    public Integer getNum1() {
        return num1;
    }


    public void setNum1(Integer num1) {
        this.num1 = num1;
    }

    public Integer getNum2() {
        return num2;
    }

    public void setNum2(Integer num2) {
        this.num2 = num2;
    }
}
