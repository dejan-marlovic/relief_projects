package io.github.dejanmarlovic.reliefprojects.relief_projects.controller;
import io.github.dejanmarlovic.reliefprojects.relief_projects.dto.PositionDTO;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import io.github.dejanmarlovic.reliefprojects.relief_projects.service.PositionService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;
import java.util.Optional;


//will serialize responses to json, has ResponseBody
@RestController
@RequestMapping("api/positions")
@Validated
public class PositionController {

    private final PositionService positionService;

    public PositionController(PositionService positionService){
        this.positionService = positionService;
    }

    //CREATE

    /**
     * Handles HTTP POST requests to create a new position.
     * The method receives a PositionDTO object as input, validates it,
     * and returns the saved PositionDTO in the response.
     *
     * @param positionDTO The positionDTO object sent in the request body.
     * @return ResponseEntity containing address to  saved Position resource.
     */
    @PostMapping
    public ResponseEntity<PositionDTO> createPosition(@Valid @RequestBody PositionDTO positionDTO) {
        // Call the service layer to attempt saving the Position
        Optional<PositionDTO> createdPositionDTO = positionService.createPosition(positionDTO);

        // If creation is successful, return a 201 Created response with the Location header
        if (createdPositionDTO.isPresent()) {

            PositionDTO dto = createdPositionDTO.get();

            URI location = URI.create("/positions/" + dto.getId());
            return ResponseEntity.created(location).body(dto);
        } else {
            // If creation fails, return a 400 Bad Request response
            return ResponseEntity.badRequest().build();
        }
    }

    //READ

    @GetMapping("/{id}")
    public ResponseEntity<PositionDTO> getPosition(@PathVariable Long id) {
        Optional<PositionDTO> positionDTO = positionService.getPositionById(id);

        if (positionDTO.isPresent()) {
            return ResponseEntity.ok(positionDTO.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    //UPDATE

    @PutMapping("/{id}")
    public ResponseEntity<PositionDTO> updatePosition(@PathVariable Long id, @Valid @RequestBody PositionDTO positionDTO) {
        Optional<PositionDTO> updatedPositionDTO = positionService.updatePosition(id, positionDTO);

        if (updatedPositionDTO.isPresent()) {
            return ResponseEntity.ok(updatedPositionDTO.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    //DELETE

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePosition(@PathVariable Long id) {
        boolean isDeleted = positionService.deletePosition(id);

        if (isDeleted) {
            return ResponseEntity.noContent().build();  // 204 No Content
        } else {
            return ResponseEntity.notFound().build();  // 404 Not Found
        }
    }






}



