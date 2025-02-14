package io.github.dejanmarlovic.reliefprojects.relief_projects.dto;

import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;

public class PositionDTO {
    private Long id;
    private String positionName;

    public PositionDTO(Position position){
        this.id = position.getId();
        this.positionName = position.getPositionName();
    }

    public Long getId() {
        return id;
    }

    public String getPositionName() {
        return positionName;
    }
}
