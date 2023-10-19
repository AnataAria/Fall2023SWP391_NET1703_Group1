package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.util.List;
@Builder
public record SectionDefaultInfo(String sectionName, List<String> courseContentNames) {
}
