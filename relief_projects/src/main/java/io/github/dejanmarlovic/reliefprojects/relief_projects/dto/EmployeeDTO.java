package io.github.dejanmarlovic.reliefprojects.relief_projects.dto;

import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Employee;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public class EmployeeDTO {

    private Long id;

    @NotNull(message = "must not be null!")
    @NotBlank(message = "must not be blank!")
    private String firstName;

    @NotNull(message = "must not be null!")
    @NotBlank(message = "must not be blank!")
    private String lastName;

    @NotNull(message = "must not be null!")
    @NotBlank(message = "must not be blank!")
    private Long positionId;

    public EmployeeDTO(Employee employee) {
        this.id = employee.getId();
        this.firstName = employee.getFirstName();
        this.lastName = employee.getLastName();
        this.positionId = employee.getId();
    }

    public EmployeeDTO() {}

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Long getPositionId() {
        return positionId;
    }

    public void setPositionId(Long positionId) {
        this.positionId = positionId;
    }

    private Long getId(){
        return id;
    }
}
