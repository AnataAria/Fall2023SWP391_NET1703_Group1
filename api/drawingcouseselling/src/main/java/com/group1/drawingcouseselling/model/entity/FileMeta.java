package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Entity(name = "file_meta")
@Table(name = "FILE_META")
@Getter @Setter
public class FileMeta {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int imgId;

    @Column(name = "FILE_NAME")
    private String fileName;

    @Column(name = "FILE_PATH")
    private String filePath;

    @Column(name = "VERSION")
    private String version;

    public FileMeta(String fileName, String filePath, String version) {
        this.fileName = fileName;
        this.filePath = filePath;
        this.version = version;
    }
}
