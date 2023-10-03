package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Course;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Repository
public interface CourseRepository extends JpaRepository<Course, BigDecimal> {
    @Query(value = "SELECT c FROM course c",
            countQuery = "SELECT count(*) FROM course c")
    public Page<Course>getCourseOnPaging(Pageable pageable);

    @Query(value = "SELECT u FROM course u WHERE u.name LIKE %:searchName%",
            countQuery = "SELECT count(*) FROM course u WHERE u.name LIKE %:searchName%")
    public Page<Course> searchCourseByNameAndFilter(@Param(value = "searchName") String searchName, Pageable pageable);
    @Query(value = "SELECT u FROM course u WHERE u.id IN :coursesID"
    )
    public List<Course> searchCourseByIdList(@Param(value = "coursesID")Collection<BigDecimal> coursesID);
    @Query(value = "SELECT u FROM course u WHERE u.name LIKE %:searchName%",
            countQuery = "SELECT count(*) FROM course u WHERE u.name LIKE %:searchName%")
    public Page<Course> searchCourseByNameRandom(@Param(value = "searchName") String searchName, Pageable pageable);
}
