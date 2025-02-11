package io.github.dejanmarlovic.reliefprojects.relief_projects.service;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.repository.PositionRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//Spring will create classes and inject where needed
@Service
public class PositionService {
    @Autowired
    PositionRepository positionRepository;

    public void savePosition(String name){
        System.out.println("Saving position: " + name);
        Position newPosition = new Position();
        newPosition.setPositionName(name);

        positionRepository.save(newPosition);

        positionRepository.flush();

    }
}
