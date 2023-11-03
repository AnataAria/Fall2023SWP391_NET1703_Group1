package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.FileMeta;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FileMetaRepository extends CrudRepository<FileMeta, Integer> {
    @Query(value = "SELECT fm FROM file_meta fm WHERE fm.fileName = :fileName ORDER BY fm.imgId DESC LIMIT 1")
    public FileMeta searchFileMetaByFileName(@Param("fileName") String fileName);
}
