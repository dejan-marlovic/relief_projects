package io.github.dejanmarlovic.reliefprojects.relief_projects.service;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.repository.PositionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

//Spring will create classes and inject where needed
@Service
public class PositionService {
    @Autowired
    PositionRepository positionRepository;

    public void savePosition(Position position){
        positionRepository.save(position);

    }


    public List<Position> findAll(){
        return positionRepository.findAll();

    }

    public Position findByName(String name){
        return positionRepository.findByPositionName(name);

    }
}
