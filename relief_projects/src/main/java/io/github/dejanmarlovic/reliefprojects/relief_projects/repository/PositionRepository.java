package io.github.dejanmarlovic.reliefprojects.relief_projects.repository;

import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

/**
 * JpaRepository<T, ID> is itself an interface provided by Spring Data JPA.
 * Our PositionRepository extends JpaRepository,
 * which means it inherits all the default CRUD methods provided by JpaRepository.
 * Since interfaces don't have constructors or instance fields,
 * they can be extended without the need for an implementation.
 * <p>
 * What Does JpaRepository<Position, Long> Provide?
 * By extending JpaRepository<Position, Long>, your repository
 * automatically gets a set of built-in methods without needing to implement
 * them yourself, such as:
 * <p>
 * save(Position entity): Saves a position.
 * findById(Long id): Retrieves a position by ID.
 * findAll(): Retrieves all positions.
 * delete(Position entity): Deletes a position.
 */
@Repository
public interface PositionRepository extends JpaRepository<Position, Long> {
    // Custom queries can be added here if needed

    //Position findByPositionName(String positionName);

    @Query("SELECT p FROM Position p WHERE p.id = :id AND p.isDeleted = false")
    Optional<Position> findActiveById(@Param ("id") Long id);

}


