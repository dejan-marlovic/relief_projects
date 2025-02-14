package io.github.dejanmarlovic.reliefprojects.relief_projects.service;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.repository.PositionRepository;
import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;
import org.hibernate.Session;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

//Spring will create classes and inject where needed
@Service
public class PositionService {

    PositionRepository positionRepository;
    private final EntityManager entityManager;

    public PositionService(PositionRepository positionRepository, EntityManager entityManager){
      this.positionRepository = positionRepository;
      this.entityManager = entityManager;
    }

    public Position createPosition(Position position){
        return positionRepository.save(position);

    }

    @Transactional
    public List<Position> getActivePositions() {
        Session session = entityManager.unwrap(Session.class);
        session.enableFilter("deletedPositionFilter").setParameter("isDeleted", false);
        return positionRepository.findAll();
    }

    /**
     * Retrieves a position by its ID.
     *
     * @param positionId The ID of the position to fetch.
     * @return An Optional containing the Position if found, otherwise an empty Optional.
     */
    public Optional<Position> getPositionById(Long positionId) {
        // Calls the repository to find a Position by ID.
        // Since the result might not exist, it returns an Optional<Position>.
        return positionRepository.findActiveById(positionId);
    }


    public List<Position> findAll(){
        Session session = entityManager.unwrap(Session.class);
        //we need to activate filer before query
        session.enableFilter("deletedPositionFilter").setParameter("isDeleted", false);
        return positionRepository.findAll();

    }

    public Position findByName(String name){
        return positionRepository.findByPositionName(name);

    }
}
