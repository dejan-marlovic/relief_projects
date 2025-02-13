package io.github.dejanmarlovic.reliefprojects.relief_projects.controller;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


//will serialize responses to json
@RestController
@RequestMapping("/positions")
public class PositionController {
    //injection
    @Autowired
    private PositionService positionService;

    @PostMapping("/save_position")
    public void savePosition(@RequestBody Position position) {
        positionService.savePosition(position);

    }

    @GetMapping("/positions")
    public List<Position> findAll() {
        return positionService.findAll();

    }

    @GetMapping("/find_position")
    public Position findByName(@RequestParam String name) {
        return positionService.findByName(name);

    }

}
