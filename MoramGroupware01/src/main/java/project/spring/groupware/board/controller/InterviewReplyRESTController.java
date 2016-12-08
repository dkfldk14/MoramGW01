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
import project.spring.groupware.board.domain.ReplyAddNameVO;
import project.spring.groupware.board.domain.ReplyVO;
import project.spring.groupware.board.service.InterviewBoardService;
import project.spring.groupware.board.service.InterviewReplyService;



@RestController
@RequestMapping(value="interview_replies")
public class InterviewReplyRESTController {
	private static final Logger logger =
			LoggerFactory.getLogger(ReplyRESTController.class);
	
	@Autowired
	private InterviewReplyService service;
	
	@Autowired
	private InterviewBoardService boardService;
	
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Integer>createReply(@RequestBody ReplyVO vo){
		//ResponseEntity 응답과 함께 HTTP 결과 코드를 지정해서 보낼 수 있는 클래스
		//RequestBody : 요청 본체 안에 포함된 JSON객체를
		
		ResponseEntity<Integer>entity = null;
		int result = service.create(vo);
		int result2 = boardService.replycnt(vo.getBno());
		
		if(result == 1 && result2 == 1){
			entity = new ResponseEntity<Integer>(1, HttpStatus.OK);
		}else{
			entity = new ResponseEntity<Integer>(0, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "all/{no}", method=RequestMethod.GET)
	public ResponseEntity<List<ReplyAddNameVO>>readNameReplies(
			@PathVariable("no") Integer bno){
			
			List<ReplyAddNameVO> list = service.selectName(bno);
			
			ResponseEntity<List<ReplyAddNameVO>>entity = null;
			if(list != null){
				entity = new ResponseEntity<List<ReplyAddNameVO>>(list, HttpStatus.OK);
			}else{
				entity = new ResponseEntity<List<ReplyAddNameVO>>(list, HttpStatus.BAD_REQUEST);
			}
			
			return entity;				
		}
	
	@RequestMapping(value = "/{no}", method = RequestMethod.PUT)
	public ResponseEntity<String>updateReply(
			@PathVariable("no")Integer rno, @RequestBody ReplyVO vo){
		
		ResponseEntity<String>entity = null;
		
		vo.setRno(rno);
		int result = service.update(vo);
		if(result ==1){
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}else {
			entity = new ResponseEntity<String>("fail", HttpStatus.BAD_REQUEST);
		}
		
		return entity;		
	}
	
	@RequestMapping(value="/{no}", method = RequestMethod.DELETE)
	public ResponseEntity<String>deleteReply(@PathVariable("no")Integer rno, @RequestBody BoardVO vo){
		ResponseEntity<String>entity = null;
		
		int result = service.delete(rno);
		int result2 = boardService.replycnt(vo.getBno());
		
		if(result == 1 && result2 == 1){
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("fail", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
}
