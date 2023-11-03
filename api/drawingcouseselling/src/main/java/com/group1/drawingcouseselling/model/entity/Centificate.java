package com.group1.drawingcouseselling.model.entity;

import com.group1.drawingcouseselling.model.enums.ECertificateFileStatus;
import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;

@Entity(name = "certification")
public class Centificate {
    @EmbeddedId
    private CertificationKey id;
    @Column(name = "recieve_date", nullable = false)
    private Date recieveDate;
    @Column(name = "lecture_name")
    private String lectureName;
    @OneToOne(targetEntity = FileMeta.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = false)
    @JoinColumn(name = "file_location")
    private FileMeta fileLocation;
    @Enumerated(EnumType.STRING)
    @Column(name = "certificate_file_status")
    private ECertificateFileStatus certificateFileStatus;

    @PrePersist
    @PreUpdate
    private void updateCertificateFileStatus(){
        if(fileLocation == null) certificateFileStatus = ECertificateFileStatus.NOT_CREATED;
        else if(certificateFileStatus == ECertificateFileStatus.UPDATING) certificateFileStatus = ECertificateFileStatus.UPDATED;
    }

    public CertificationKey getId() {
        return id;
    }

    public void setId(CertificationKey id) {
        this.id = id;
    }

    public Date getRecieveDate() {
        return recieveDate;
    }

    public void setRecieveDate(Date recieveDate) {
        this.recieveDate = recieveDate;
    }


    public String getLectureName() {
        return lectureName;
    }

    public void setLectureName(String lectureName) {
        this.lectureName = lectureName;
    }

    public FileMeta getFileLocation() {
        return fileLocation;
    }

    public void setFileLocation(FileMeta fileLocation) {
        this.fileLocation = fileLocation;
    }

    public ECertificateFileStatus getCertificateFileStatus() {
        return certificateFileStatus;
    }

    public void setCertificateFileStatus(ECertificateFileStatus certificateFileStatus) {
        this.certificateFileStatus = certificateFileStatus;
    }
}
