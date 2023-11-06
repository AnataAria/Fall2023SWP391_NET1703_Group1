package com.group1.drawingcouseselling.util;

import com.group1.drawingcouseselling.exception.SomethingWentWrongExceptions;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class Tool {
    public static String getYouTubeId(String youTubeUrl) {
        String pattern = "(?<=youtu.be/|watch\\?v=|/videos/|embed\\/)[^#\\&\\?]*";
        Pattern compiledPattern = Pattern.compile(pattern);
        Matcher matcher = compiledPattern.matcher(youTubeUrl);
        if (matcher.find()) {
            return matcher.group();
        } else {
            throw new SomethingWentWrongExceptions("Could get link ");
        }
    }
    public static MultipartFile changeMultipartFileName(String name, MultipartFile currentFile){
        String originalFileName = currentFile.getOriginalFilename();
        String fileExtension = StringUtils.getFilenameExtension(originalFileName);

        String newFileName = name + "." + fileExtension;

        try {
            byte[] fileBytes = currentFile.getBytes();
            return new MockMultipartFile(newFileName, newFileName, currentFile.getContentType(), fileBytes);
        } catch (IOException e) {
            throw new SomethingWentWrongExceptions("Something wrong in processing of change name of file");
        }
    }
}
