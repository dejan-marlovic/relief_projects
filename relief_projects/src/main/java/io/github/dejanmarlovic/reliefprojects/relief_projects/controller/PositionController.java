package io.github.dejanmarlovic.reliefprojects.relief_projects.controller;
import io.github.dejanmarlovic.reliefprojects.relief_projects.dto.AdditionRequest;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.service.AdditionService;
import io.github.dejanmarlovic.reliefprojects.relief_projects.service.PositionService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;


//will serialize responses to json
@RestController
@RequestMapping("/positions")
@Validated
public class PositionController {
    //injection
    @Autowired
    private PositionService positionService;

    @Autowired
    private AdditionService additionService;

    @PostMapping("/save_position")
    public void savePosition(@Valid @RequestBody Position position) {
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

    @PostMapping("/add")
    public int add(@Valid @RequestBody AdditionRequest request){
        return additionService.add(request);
    }

}
