package io.github.dejanmarlovic.reliefprojects.relief_projects.service;

import io.github.dejanmarlovic.reliefprojects.relief_projects.dto.EmployeeDTO;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Employee;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.repository.EmployeeRepository;
import io.github.dejanmarlovic.reliefprojects.relief_projects.repository.PositionRepository;
import jakarta.persistence.EntityManager;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EmployeeService {

    private final EmployeeRepository employeeRepository;
    private final EntityManager entityManager;
    private final PositionRepository positionRepository;

    //constructor injection
    public EmployeeService(EmployeeRepository employeeRepository, EntityManager entityManager, PositionRepository positionRepository){
        this.employeeRepository  = employeeRepository;
        this.entityManager = entityManager;
        this.positionRepository = positionRepository;
    }

    public Optional<EmployeeDTO> createEmployee(EmployeeDTO createdDTO) {
        Optional<Position> position = positionRepository.findActiveById(createdDTO.getPositionId());
        if (position.isPresent()) {
            Employee createdEmployee = new Employee();
            createdEmployee.setFirstName(createdDTO.getFirstName());
            createdEmployee.setLastName(createdDTO.getLastName());

            createdEmployee.setPosition(position.get());
            try {
                employeeRepository.save(createdEmployee);
                return Optional.of(new EmployeeDTO(createdEmployee));

            } catch (Exception e) {
                return Optional.empty();
            }
        }else return Optional.empty();

    }
}
