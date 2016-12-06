package project.spring.groupware.board.controller;

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

import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.domain.ReplyVO;
import project.spring.groupware.board.service.BoardService;
import project.spring.groupware.board.service.ReplyService;


@RestController
@RequestMapping(value="/replies")
public class ReplyRESTController {
	private static final Logger logger =
			LoggerFactory.getLogger(ReplyRESTController.class);
	
	@Autowired
	private ReplyService service;
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(method=RequestMethod.POST)
	public ResponseEntity<Integer>createReply(@RequestBody ReplyVO vo){
		//ResponseEntity 응답과 함께 HTTP 결과 코드로 지정해서 보낼 수 있는 클래스
		//RequestBody : 요청 본체 안에 포함된 JSON객체들
		
		ResponseEntity<Integer>entity = null;
		int result = service.create(vo);
		int result2 = boardService.replycnt(vo.getBno());
				
		if(result ==1 && result2 == 1){
			entity = new ResponseEntity<Integer>(1, HttpStatus.OK);
		}else{
			entity = new ResponseEntity<Integer>(0, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value="all/{no}", method=RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>>readReplies(
			@PathVariable("no") Integer bno){
		
		List<ReplyVO> list =service.read(bno);
				
		ResponseEntity<List<ReplyVO>>entity = null;
		if(list != null){
			entity = new ResponseEntity<List<ReplyVO>>(list, HttpStatus.OK);
		}else{
			entity = new ResponseEntity<List<ReplyVO>>(list, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/{no}", method=RequestMethod.PUT)
	public ResponseEntity<String>updateReply(
			@PathVariable("no")Integer rno, @RequestBody ReplyVO vo){
		ResponseEntity<String> entity = null;
		
		vo.setRno(rno);
		int result = service.update(vo);
		if(result == 1){
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("fail", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/{no}", method=RequestMethod.DELETE)
	public ResponseEntity<String>deleteReply(@PathVariable("no")Integer rno, @RequestBody BoardVO vo){
		ResponseEntity<String>entity = null;
		
		logger.info("deleteReply() : rno" + rno);
		logger.info("bno : " + vo.getBno());
		int result = service.delete(rno);
		int result2 = boardService.replycnt(vo.getBno());
		
		logger.info("result : " + result);
		logger.info("result2: " + result2);
		
		if(result == 1 && result2 == 1){
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("fail", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
}
