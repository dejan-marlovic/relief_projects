package io.github.dejanmarlovic.reliefprojects.relief_projects.controller;
import io.github.dejanmarlovic.reliefprojects.relief_projects.dto.PositionDTO;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.service.PositionService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;


//will serialize responses to json, has ReponseBody
@RestController
@RequestMapping("api/positions")
@Validated
public class PositionController {

    private final PositionService positionService;

    public PositionController(PositionService positionService){
        this.positionService = positionService;
    }

    /**
     * Handles HTTP POST requests to create a new position.
     * The method receives a Position object as input, validates it, saves it to the database,
     * and returns the saved Position in the response.
     *
     * @param position The Position object sent in the request body.
     * @return ResponseEntity containing the saved Position as JSON and HTTP status code.
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

    @GetMapping
    public ResponseEntity<List<PositionDTO>> getAllPositions() {
        List<Position> positions = positionService.getActivePositions();
        List<PositionDTO> dtoList = positions.stream()  // Step 1: Convert list to a stream
                .map(PositionDTO::new)  // Step 2: Transform Position -> PositionDTO
                .toList();  // Step 3: Collect results into a List
        return ResponseEntity.ok(dtoList);
    }

    /**
     * Retrieves a position by its ID and returns the position as a DTO.
     * If the position is not found, a 404 Not Found response is returned.
     *
     * @param id The ID of the position to retrieve.
     * @return A ResponseEntity containing the PositionDTO and HTTP status.
     */
    @GetMapping("/{id}")
    public ResponseEntity<PositionDTO> getPositionById(@PathVariable Long id) {
        // Fetches the position from the service using its ID
        Optional<Position> positionOpt = positionService.getPositionById(id);

        // If the position exists, it returns it as a PositionDTO wrapped in an OK response (200)
        //We are working with Position p inside the optional object from the database and applying the lambda function to it.
        return positionOpt.map(p -> ResponseEntity.ok(new PositionDTO(p)))
                // If the position does not exist, returns a "Not Found" (404) response
                .orElseGet(() -> ResponseEntity.notFound().build());
    }
}



