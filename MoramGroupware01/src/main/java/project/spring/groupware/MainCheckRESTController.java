package project.spring.groupware;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import project.spring.groupware.member.domain.MainCheckVO;
import project.spring.groupware.member.interceptor.MainCheckService;


@RestController
@RequestMapping(value="/checktime")
public class MainCheckRESTController {
	private static final Logger logger= LoggerFactory.getLogger(MainCheckRESTController.class);
	
	@Autowired
	private MainCheckService service;
	
	@RequestMapping(method=RequestMethod.POST)
	public ResponseEntity<Integer> createGetTime(
			@RequestBody MainCheckVO vo){
		
		logger.info("createGetTime");
		
		ResponseEntity<Integer> entity=null;
		int result = service.create(vo);
		if(result == 1){
			entity = new ResponseEntity<Integer>(1, HttpStatus.OK);
		} else {
			entity = new ResponseEntity<Integer>(0, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping (value= "/all/{id}", method=RequestMethod.GET)
	public ResponseEntity<List<MainCheckVO>> readTimeAllSelect(
			@PathVariable("id") String id){
		logger.info("readTimeAllSelect=" + id);
		
		List<MainCheckVO> list = service.selecttodayid(id);
		
		ResponseEntity<List<MainCheckVO>> entity = null;
		
		if(list != null){
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} else{
			entity = new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping (value= "/all", method=RequestMethod.GET)
	public ResponseEntity<List<MainCheckVO>> readTimeAllSelect(){
		logger.info("readTimeAllSelect");
		
		List<MainCheckVO> list = service.readall();
		
		ResponseEntity<List<MainCheckVO>> entity = null;
		
		if(list != null){
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} else{
			entity = new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	

	
	@RequestMapping(value="/{id}", method=RequestMethod.PUT)
	public ResponseEntity<String> updateReply(
			@PathVariable("id") String id, 
			@RequestBody MainCheckVO vo) {
		ResponseEntity<String> entity = null;
		System.out.println("아이디 : "+id);
		System.out.println("attendance : "+vo.getAttendance());
		System.out.println("score : " + vo.getScore());
		System.out.println("statetime : " + vo.getStatetime());
		vo.setId(id);
		int result = service.updatecheckout(vo);
		if (result == 1) { // update 성공
			entity = new ResponseEntity<>("success", HttpStatus.OK);
		} else { // update 실패
			entity = new ResponseEntity<>("fail", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping (value= "/all/seven", method=RequestMethod.GET)
	public ResponseEntity<List<MainCheckVO>> readSelectSeven(){
		logger.info("readSelectSeven");
		
		List<MainCheckVO> list = service.selectsevendays();
		
		ResponseEntity<List<MainCheckVO>> entity = null;
		
		if(list != null){
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} else{
			entity = new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping (value= "/all/today", method=RequestMethod.GET)
	public ResponseEntity<List<MainCheckVO>> readTodayAll(){
		logger.info("readSelectAll");
		
		List<MainCheckVO> list = service.selecttodayall();
		
		ResponseEntity<List<MainCheckVO>> entity = null;
		
		if(list != null){
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} else{
			entity = new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
}
