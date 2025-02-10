package io.github.dejanmarlovic.reliefprojects.relief_projects.model;
import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "positions")
public class Position {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "position_id")
    private Long positionId;  // Primary key

    @Column(name = "position_name", nullable = false)
    private String positionName;  // The name of the position

    @Column(name = "is_deleted")
    private Boolean isDeleted = Boolean.FALSE;  // Default is false (not deleted)

    @Column(name = "deleted_at")
    private LocalDateTime deletedAt;  // Time of deletion, if any

    // Default constructor (JPA requirement)
    public Position() {}

    // Parameterized constructor
    public Position(String positionName, Boolean isDeleted, LocalDateTime deletedAt) {
        this.positionName = positionName;
        this.isDeleted = isDeleted;
        this.deletedAt = deletedAt;
    }

    // Getters and Setters
    public Long getPositionId() {
        return positionId;
    }

    public void setPositionId(Long positionId) {
        this.positionId = positionId;
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
}