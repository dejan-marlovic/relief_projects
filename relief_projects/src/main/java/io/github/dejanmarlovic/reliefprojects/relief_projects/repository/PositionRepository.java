package io.github.dejanmarlovic.reliefprojects.relief_projects.repository;

import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PositionRepository extends JpaRepository<Position, Long> {
    // Custom queries can be added here if needed

    Position findByPositionName(String positionName);

    @Query("SELECT p FROM Position p WHERE p.id = :id AND p.isDeleted = false")
    Optional<Position> findActiveById(@Param ("id") Long id);

}


