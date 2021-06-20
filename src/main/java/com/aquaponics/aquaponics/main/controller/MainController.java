package com.aquaponics.aquaponics.main.controller;

import java.io.File;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.aquaponics.aquaponics.main.service.MainService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/addContent", method = RequestMethod.GET)
	public String addContent() {
		return "form_elements";
	}

	@ResponseBody
	@RequestMapping(value = "/getContentList", method = RequestMethod.GET)
	public List<Map<String, Object>> getContentList(HttpServletRequest request) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		List<Map<String, Object>> resultList = null;
		resultList = mainService.getContentList(paramMap);
		return resultList;
	}

	@ResponseBody
	@RequestMapping(value = "/getContent", method = RequestMethod.GET)
	public Map<String, Object> getContent(@RequestParam(value = "userId") String userId, @RequestParam(value = "contentId") String contentId) throws Exception {
		Map<String, Object> resultMap = null;
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("userId", userId);
		paramMap.put("contentId", contentId);
		
		resultMap = mainService.getContent(paramMap);
		
		return resultMap;
	}

	@RequestMapping(value = "/insertContent", method = RequestMethod.POST)
	public String insertContent(
		@RequestPart(value = "files", required = false) MultipartFile file,
		@RequestParam(value = "userId", required = false) String userId,
		@RequestParam(value = "date", required = false) String date,
		@RequestParam(value = "insertFarmType", required = false) String insertFarmType,
		@RequestParam(value = "insertPlantType", required = false) String insertPlantType,
		@RequestParam(value = "insertPlantToLight", required = false) String insertPlantToLight,
		@RequestParam(value = "insertPlantLength", required = false) String insertPlantLength,
		@RequestParam(value = "insertLeafLength", required = false) String insertLeafLength,
		@RequestParam(value = "insertTemperature", required = false) String insertTemperature,
		@RequestParam(value = "insertHumidity", required = false) String insertHumidity,
		@RequestParam(value = "insertNote", required = false) String insertNote,
		@RequestParam(value = "insertPlantName", required = false) String insertPlantName,
		HttpServletRequest request
	) throws Exception {
		Map<String, Object> paramMap = new HashMap<String,Object>();
		String imageLoc = "";
		// String rootPath = FileSystemView.getFileSystemView().getHomeDirectory().toString();
		if (file != null){
			String savedName = file.getOriginalFilename();
			String rootPath = request.getSession().getServletContext().getRealPath("contentImgs/");
			// String filePath = rootPath + file.getOriginalFilename();
			// File dest = new File(filePath);

			savedName = uploadFile(savedName, file.getBytes(), rootPath);
			imageLoc = "contentImgs/" + savedName;
		}
		paramMap.put("userId", userId);
		paramMap.put("date", date);
		paramMap.put("insertFarmType", insertFarmType);
		paramMap.put("insertPlantType", insertPlantType);
		paramMap.put("insertPlantToLight", insertPlantToLight);
		paramMap.put("insertPlantLength", insertPlantLength);
		paramMap.put("insertLeafLength", insertLeafLength);
		paramMap.put("insertTemperature", insertTemperature);
		paramMap.put("insertHumidity", insertHumidity);
		paramMap.put("imageLoc", imageLoc);
		paramMap.put("insertNote", insertNote);
		paramMap.put("insertPlantName", insertPlantName);

		mainService.insertContent(paramMap);

		return "index";
	}

	 // 파일명 랜덤생성 메서드
	 private String uploadFile(String originalName, byte[] fileData, String rootPath) throws Exception{
        // uuid 생성(Universal Unique IDentifier, 범용 고유 식별자)
        UUID uuid = UUID.randomUUID();
        // 랜덤생성+파일이름 저장
        String savedName = uuid.toString()+"_"+originalName;
        File target = new File(rootPath, savedName);
        // 임시디렉토리에 저장된 파일을 지정된 디렉토리로 복사
        // FileCopyUtils.copy(바이트배열, 파일객체)
        FileCopyUtils.copy(fileData, target);
        return savedName;
    }

	@ResponseBody
	@RequestMapping(value = "/getSelectType", method = RequestMethod.GET)
	public List<String> getSelectType() throws Exception {
		List<String> resultMap = new LinkedList<>();
		resultMap = mainService.getSelectType();

		return resultMap;
	}

	@ResponseBody
	@RequestMapping(value = "/updateContent", method = RequestMethod.GET)
	public String updateContent(
		@RequestPart(value = "updateFiles", required = false) MultipartFile file,
		@RequestParam(value = "userId", required = false) String userId,
		@RequestParam(value = "date", required = false) String date,
		@RequestParam(value = "insertFarmType", required = false) String insertFarmType,
		@RequestParam(value = "insertPlantType", required = false) String insertPlantType,
		@RequestParam(value = "insertPlantToLight", required = false) String insertPlantToLight,
		@RequestParam(value = "insertPlantLength", required = false) String insertPlantLength,
		@RequestParam(value = "insertLeafLength", required = false) String insertLeafLength,
		@RequestParam(value = "insertTemperature", required = false) String insertTemperature,
		@RequestParam(value = "insertHumidity", required = false) String insertHumidity,
		@RequestParam(value = "insertNote", required = false) String insertNote,
		@RequestParam(value = "insertPlantName", required = false) String insertPlantName,
		HttpServletRequest request
	) throws Exception {
		Map<String, Object> paramMap = new HashMap<String,Object>();

		String imageLoc = "";
		if (file != null){
			String savedName = file.getOriginalFilename();
			String rootPath = request.getSession().getServletContext().getRealPath("contentImgs/");

			savedName = uploadFile(savedName, file.getBytes(), rootPath);
			imageLoc = "contentImgs/" + savedName;
		}
		// paramMap.put("userId", userId);
		// paramMap.put("date", date);
		// paramMap.put("insertFarmType", insertFarmType);
		// paramMap.put("insertPlantType", insertPlantType);
		// paramMap.put("insertPlantToLight", insertPlantToLight);
		// paramMap.put("insertPlantLength", insertPlantLength);
		// paramMap.put("insertLeafLength", insertLeafLength);
		// paramMap.put("insertTemperature", insertTemperature);
		// paramMap.put("insertHumidity", insertHumidity);
		// paramMap.put("imageLoc", imageLoc);
		// paramMap.put("insertNote", insertNote);
		// paramMap.put("insertPlantName", insertPlantName);
		paramMap.put("oriImgLoc", value);
		
		mainService.updateContent(paramMap);
		
		return "index";
	}

	@RequestMapping(value = "/deleteContent", method = RequestMethod.POST)
	public String deleteContent(@RequestParam(value = "userId") String userId, @RequestParam(value = "contentId") String contentId) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("userId", userId);
		paramMap.put("contentId", contentId);

		mainService.deleteContent(paramMap);

		return "index";
	}

}