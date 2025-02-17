package io.github.dejanmarlovic.reliefprojects.relief_projects.repository;

import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface  EmployeeRepository extends JpaRepository<Employee, Long>  {

    @Query("SELECT e FROM Employee e WHERE e.id = :id AND e.isDeleted = false")
    Optional<Employee> findActiveById(@Param("id") Long id);
}
