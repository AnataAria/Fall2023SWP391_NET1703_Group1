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

    @Query(value = "SELECT c FROM course c " +
            "INNER JOIN instructor i ON c.instuctor.id = i.id " +
            "INNER JOIN account a ON i.account.id = a.id " +
            "WHERE a.email = :email")
    public List<Course> getCoursesByInstructorEmail(@Param(value = "email")String email);

    @Query(value = "SELECT c FROM course c " +
            "INNER JOIN instructor i ON c.instuctor.id = i.id " +
            "INNER JOIN account a ON i.account.id = a.id " +
            "WHERE a.email = :email AND c.id = :id")
    public Course findCourseByEmailAndId (@Param(value = "email") String email, @Param(value="id") BigDecimal id);

    @Query("SELECT c FROM course c INNER JOIN section s ON s.course.id = c.id" +
            " INNER JOIN course_content c2 ON c2.section.id = s.id WHERE c2.id = :courseContentID")
    public Course searchCourseByCourseContentID(@Param("courseContentID") BigDecimal courseContentID);
}
