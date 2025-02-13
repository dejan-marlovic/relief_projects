package io.github.dejanmarlovic.reliefprojects.relief_projects.controller;
import io.github.dejanmarlovic.reliefprojects.relief_projects.dto.AdditionRequest;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.service.AdditionService;
import io.github.dejanmarlovic.reliefprojects.relief_projects.service.PositionService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;


//will serialize responses to json
@RestController
@RequestMapping("api/positions")
@Validated
public class PositionController {

    private final AdditionService additionService;
    private final PositionService positionService;

    public PositionController(PositionService positionService, AdditionService additionService){
        this.positionService = positionService;
        this.additionService = additionService;
    }

    /**
     * Handles HTTP POST requests to create a new position.
     * The method receives a Position object as input, validates it, saves it to the database,
     * and returns the saved Position in the response.
     *
     * @param position The Position object sent in the request body.
     * @return ResponseEntity containing the saved Position and HTTP status code.
     */
    @PostMapping
    public ResponseEntity<Position> createPosition(@Valid @RequestBody Position position) {
        // @RequestBody tells Spring to automatically map the incoming JSON body to a Position object.
        // @Valid ensures the object is validated according to the annotations in the Position class (e.g., @NotNull).

        // Call the service layer to handle business logic of saving the Position.
        Position createdPosition = positionService.createPosition(position);

        // Return a ResponseEntity with the saved Position as the response body.
        // ResponseEntity.ok() means the HTTP status code will be 200 OK.
        // It automatically converts the createdPosition into JSON format to send back in the response body.
        return ResponseEntity.ok(createdPosition);
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
