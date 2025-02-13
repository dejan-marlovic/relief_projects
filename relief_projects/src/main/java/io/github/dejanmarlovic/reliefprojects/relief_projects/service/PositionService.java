package io.github.dejanmarlovic.reliefprojects.relief_projects.service;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.repository.PositionRepository;
import jakarta.persistence.EntityManager;
import org.hibernate.Session;
import org.springframework.stereotype.Service;
import java.util.List;

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
