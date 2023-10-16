package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Section;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Collection;

@Repository
public interface SectionRepository extends JpaRepository<Section, BigDecimal> {
    @Query(value = "SELECT s FROM section s WHERE s.course.id = :courseID")
    public Collection<Section> getSectionByCourseID(@Param(value = "courseID") BigDecimal courseID);
}
