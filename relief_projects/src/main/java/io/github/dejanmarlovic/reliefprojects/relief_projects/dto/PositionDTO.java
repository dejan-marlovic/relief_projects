package io.github.dejanmarlovic.reliefprojects.relief_projects.dto;
import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public class PositionDTO {
    private Long id;

    @NotNull(message = "must not be null!")
    @NotBlank(message = "must not be blank!")
    private String positionName;

    public PositionDTO(Position position){
        this.id = position.getId();
        this.positionName = position.getPositionName();
    }

    public PositionDTO(){}

    public Long getId() {
        return id;
    }

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
