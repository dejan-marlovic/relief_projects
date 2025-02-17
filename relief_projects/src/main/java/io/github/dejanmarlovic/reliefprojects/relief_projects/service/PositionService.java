package io.github.dejanmarlovic.reliefprojects.relief_projects.service;
import io.github.dejanmarlovic.reliefprojects.relief_projects.dto.PositionDTO;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.repository.PositionRepository;
import jakarta.persistence.EntityManager;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

//Spring will create classes and inject where needed
@Service
public class PositionService {

    private final PositionRepository positionRepository;
    private final EntityManager entityManager;

    public PositionService(PositionRepository positionRepository, EntityManager entityManager){
      this.positionRepository = positionRepository;
      this.entityManager = entityManager;
    }

    //CREATE

    public Optional<PositionDTO> createPosition(PositionDTO createdDTO) {
        // Create a new Position entity based on the DTO
        Position createdPosition = new Position();
        createdPosition.setPositionName(createdDTO.getPositionName());

        // Save the new position to the database
        try {
            Position savedPosition = positionRepository.save(createdPosition);
            return Optional.of(new PositionDTO(savedPosition)); // Return the saved PositionDTO
        } catch (Exception e) {
            // In case of any failure (e.g., database issues), return Optional.empty()
            return Optional.empty();
        }
    }

    //READ

    public Optional<PositionDTO> getPositionById(Long id) {
        Optional<Position> position = positionRepository.findActiveById(id);

        if (position.isPresent()){
            PositionDTO positionDTO = new PositionDTO(position.get());
            return Optional.of(positionDTO);
        }
        else{
            return  Optional.empty();
        }
    }

    //UPDATE

    public Optional<PositionDTO> updatePosition(Long id, PositionDTO positionDTO) {
        Optional<Position> position = positionRepository.findActiveById(id);

        if (position.isPresent()) {
            Position updatedPosition = position.get();
            updatedPosition.setPositionName(positionDTO.getPositionName());
            positionRepository.save(updatedPosition);
            return Optional.of(new PositionDTO(updatedPosition));
        } else {
            return Optional.empty();
        }
    }


    //DELETE

    public boolean deletePosition(Long id) {
        Optional<Position> position = positionRepository.findActiveById(id);

        if (position.isPresent()) {
            //retrieve from optional wrapper
            Position positionToDelete = position.get();

            // Set the isDeleted flag to true
            positionToDelete.setIsDeleted(true);

            // Set the deletedAt field to the current date and time
            positionToDelete.setDeletedAt(LocalDateTime.now());

            // Save the updated entity with both soft delete fields
            positionRepository.save(positionToDelete);
            return true; // Return true to indicate successful soft delete
        } else {
            return false; // Return false if the position wasn't found
        }
    }

    //READ

    public Optional<List<PositionDTO>> findAllActive() {
        Session session = entityManager.unwrap(Session.class);

        // Enable the soft delete filter before querying
        session.enableFilter("deletedPositionFilter").setParameter("isDeleted", false);

        List<Position> activePositions = positionRepository.findAll();

        if (activePositions.isEmpty()) {
            return Optional.empty(); // Return empty Optional if no active positions are found
        }

        // Convert the list of Position entities to PositionDTOs
        List<PositionDTO> activePositionDTOs = activePositions.stream()
                .map(PositionDTO::new)
                .toList();

        return Optional.of(activePositionDTOs);
    }

    public Position findByName(String name){
        return positionRepository.findByPositionName(name);

    }


    public Optional<PositionDTO> getActivePositions(Long id) {
        Optional<Position> position = positionRepository.findActiveById(id);
        return position.map(PositionDTO::new);
    }


}
