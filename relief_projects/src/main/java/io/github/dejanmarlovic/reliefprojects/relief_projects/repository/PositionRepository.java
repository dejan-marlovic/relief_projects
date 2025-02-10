package io.github.dejanmarlovic.reliefprojects.relief_projects.repository;

import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PositionRepository extends JpaRepository<Position, Long> {
    // Custom queries can be added here if needed
}

