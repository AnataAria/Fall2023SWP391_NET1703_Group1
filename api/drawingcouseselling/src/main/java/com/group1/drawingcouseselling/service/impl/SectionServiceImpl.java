package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.entity.Section;
import com.group1.drawingcouseselling.repository.SectionRepository;
import com.group1.drawingcouseselling.service.SectionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class SectionServiceImpl implements SectionService {
    private final SectionRepository sectionRepository;
    @Override
    public Section createSection(Section section) {
        return null;
    }
    public List<Section> getAllSection(){
        return null;
    }
    public Section getSectionById(BigDecimal sectionID){
        return null;
    }
}
