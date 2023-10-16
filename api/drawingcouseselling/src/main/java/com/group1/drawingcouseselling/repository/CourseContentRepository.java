package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.CourseContent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Collection;

@Repository
public interface CourseContentRepository extends JpaRepository<CourseContent, BigDecimal> {
    @Query(value="SELECT c FROM course_content c INNER JOIN section s ON c.section.id = s.id WHERE s.id = :sectionId")
    public Collection<CourseContent> getCourseContentBySectionId(@Param(value = "sectionId") BigDecimal sectionId);
}
