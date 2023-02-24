package com.ld.file;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.UriUtils;

import com.ld.user.service.TeacherService;

import lombok.RequiredArgsConstructor;
@RequiredArgsConstructor
@Controller
public class FileController {

	private final FileService fileService;
	private final FileRepository fileRepository;
	@Autowired
	private TeacherService teacherService;
    @GetMapping("/upload")
    public String testUploadForm() {

        return "admin/upload";
    }

    @PostMapping("/upload")
    public String uploadFile(@RequestParam("file") List<MultipartFile> file,
    		@RequestParam("id")Long id[]) throws IOException {
        	System.out.println(Arrays.asList(file));
    		
        	for(int i=0;i<id.length;i++) {
            fileService.saveFile(file.get(i),id[i]);
        	}
        
        
        return "redirect:/view";
    }

    @GetMapping("/view")
    public String view(Model model) {
        FileEntity file=fileRepository.findById((long) 32).orElse(null);
        model.addAttribute("all",file);
        return "admin/view";
    }



    //   이미지 출력
    @GetMapping("/images/{id}")
    @ResponseBody
    public Resource downloadImage(@PathVariable("id") Long id, Model model) throws IOException{
    	
        FileEntity file = fileRepository.findById(id).orElse(null);
        return new UrlResource("file:" + file.getSave_path());
    }
    
    // 첨부 파일 다운로드
    @GetMapping("/attach/{id}")
    public ResponseEntity<Resource> downloadAttach(@PathVariable Long id) throws MalformedURLException {

        FileEntity file = fileRepository.findById(id).orElse(null);

        UrlResource resource = new UrlResource("file:" + file.getSave_path());

        String encodedFileName = UriUtils.encode(file.getOriginal_name(), StandardCharsets.UTF_8);
        																																																						
        // 파일 다운로드 대화상자가 뜨도록 하는 헤더를 설정해주는 것
        // Content-Disposition 헤더에 attachment; filename="업로드 파일명" 값을 준다.
        String contentDisposition = "attachment; filename=\"" + encodedFileName + "\"";

        return ResponseEntity.ok().header(HttpHeaders.CONTENT_DISPOSITION,contentDisposition).body(resource);
    }
    
    
}
