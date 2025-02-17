package io.github.dejanmarlovic.reliefprojects.relief_projects.model;
import jakarta.persistence.*;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import org.hibernate.annotations.*;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "positions")
@SQLDelete(sql = "UPDATE positions SET is_deleted = true, deleted_at = NOW() WHERE position_id = ?")
@FilterDef(name = "deletedPositionFilter", parameters = @ParamDef(name = "isDeleted", type = Boolean.class))
@Filter(name = "deletedPositionFilter", condition = "is_deleted = :isDeleted")
public class Position {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "position_id")
    private Long id;

    @Column(name = "position_name", nullable = false, length = 255)
    private String positionName;

    @Column(name = "is_deleted", columnDefinition = "BOOLEAN DEFAULT FALSE")
    private Boolean isDeleted = false;

    @Column(name = "deleted_at")
    private LocalDateTime deletedAt;

    @OneToMany(mappedBy = "position", fetch = FetchType.LAZY)
    private List<Employee> employees;

    // Custom soft delete method
    public void softDelete() {
        this.isDeleted = true;
        this.deletedAt = LocalDateTime.now();
    }

    public Long getId() {
        return id;
    }

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    public Boolean getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    public LocalDateTime getDeletedAt() {
        return deletedAt;
    }

    public void setDeletedAt(LocalDateTime deletedAt) {
        this.deletedAt = deletedAt;
    }

    public List<Employee> getEmployees() {
        return employees;
    }

    public void setEmployees(List<Employee> employees) {
        this.employees = employees;
    }
}