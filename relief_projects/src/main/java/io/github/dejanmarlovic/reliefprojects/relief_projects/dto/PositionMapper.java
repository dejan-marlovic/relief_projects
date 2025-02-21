package io.github.dejanmarlovic.reliefprojects.relief_projects.dto;

import io.github.dejanmarlovic.reliefprojects.relief_projects.model.Position;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper
public interface PositionMapper {
    PositionMapper INSTANCE = Mappers.getMapper(PositionMapper.class);
    @Mapping(source = "id", target = "id")
    @Mapping(source = "positionName", target = "positionName")
    PositionDTO positionToPositionDTO(Position position);

}
