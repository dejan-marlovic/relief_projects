package io.github.dejanmarlovic.reliefprojects.relief_projects.controller;
import io.github.dejanmarlovic.reliefprojects.relief_projects.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PositionController {
    //injection
    @Autowired
    private PositionService positionService;

    @GetMapping("/add_position")
    public void addPosition(@RequestParam String name) {
        positionService.savePosition(name);

    }

}
