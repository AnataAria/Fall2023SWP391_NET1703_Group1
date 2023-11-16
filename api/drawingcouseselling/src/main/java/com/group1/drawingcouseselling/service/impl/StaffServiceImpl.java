package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.entity.Staff;
import com.group1.drawingcouseselling.repository.StaffRepository;
import com.group1.drawingcouseselling.service.StaffService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class StaffServiceImpl implements StaffService {
    private final StaffRepository staffRepository;
    @Override
    public Staff searchStaffByEmail(String email){
        return staffRepository.getStaffByEmail(email).orElseThrow(() ->new UserNotFoundException("Not found this staff"));
    }
}
