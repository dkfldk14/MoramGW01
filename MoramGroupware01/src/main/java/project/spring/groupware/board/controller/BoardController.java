package project.spring.groupware.board.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PageMaker;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.searchutil.SearchCriteria;
import project.spring.groupware.board.service.BoardService;
import project.spring.groupware.board.service.ReplyService;



@Controller
@RequestMapping(value="/lecture_board")
public class BoardController {
	private static final Logger logger =
			LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ReplyService replyService;
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public void listPage(Integer page, Integer bno, Model model){
		
		//페이징을 위한 구문
		PaginationCriteria c = new PaginationCriteria();
				
		logger.info("c1 : " + c);
		if(page != null){
			c.setPage(page);
		}
		
		logger.info("c2 : " + c);
		List<BoardVO>list = boardService.read(c);
		
		logger.info("list : " + list);
		
		model.addAttribute("boardList", list);
		
		//검색기능을 위한 구문
		SearchCriteria searchCriteria = new SearchCriteria();
		List<BoardVO>searchList = boardService.listSearchCriteria(searchCriteria);
		model.addAttribute("searchList", searchList);
		
		//여기다가 replycnt 값을 출력하려고 했지만 로그에 replycnt가 0으로 찍힌다.
		for (BoardVO vo : list){
			int count = boardService.count(vo.getBno());
			logger.info("bno : " + vo.getBno() );
			logger.info("replycnt : " + vo.getReplycnt());
			logger.info("count : " + count);	
//			model.addAttribute("countNum", count);
		}		
		
		//�������� ��ũ�� ��� ǥ������
		PageMaker maker = new PageMaker();
		//페이지를 위한 셋
		maker.setCriteria(c);
		//검색을 위한 셋
		maker.setSearchCriteria(searchCriteria);
		
		maker.setTotalCount(boardService.getNumOfRecords());
		maker.setPageDate();
		model.addAttribute("pageMaker", maker);
				
	}
	
	@RequestMapping(value="/searchList", method=RequestMethod.GET)
	public void searchList(String searchType, String keyword, Integer page, Model model){
		//page, bno, searchType, keyword만 가지고 오면 되니까.
	
		logger.info("page : " + page);
		
		SearchCriteria searchCriteria = new SearchCriteria(searchType, keyword);
		
		List<BoardVO> searchList = boardService.listSearchCriteria(searchCriteria);
		logger.info("searchList : " + searchList);
		
		for(BoardVO vo : searchList){
			logger.info("bno : " + vo.getBno());
			logger.info("title : " + vo.getTitle());
			logger.info("content : " + vo.getContent());
			logger.info("replycnt : " + vo.getReplycnt());
			logger.info("userid : " + vo.getUserid());
			logger.info("regdate : " + vo.getRegdate());
		}
		model.addAttribute("searchList", searchList);
		
		PageMaker maker = new PageMaker();
		maker.setSearchCriteria(searchCriteria);
		model.addAttribute("pageMaker", maker);
	}
		
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public void register(){
		
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registerToList(BoardVO vo, RedirectAttributes attr){
		
		int result = boardService.create(vo);
		
		logger.info("id : " + vo.getUserid());
		
		if(result == 1){ //success
			attr.addFlashAttribute("insert_result", "success");
			attr.addAttribute("editor", "editor");
			
		}else{
			attr.addFlashAttribute("insert_fail", "fail");
		}
		
		return "redirect:list";
	}
	
	@RequestMapping(value ="/detail", method=RequestMethod.GET)
	public void detail(int bno, 
			@ModelAttribute("page") int page, Model model){
		logger.info("detail(): bno=" + bno);
		
		//조회수 증가
		boardService.viewcnt(bno);
		
		BoardVO vo = boardService.read(bno);
		
		model.addAttribute("boardVO", vo);
				
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public void getUpdate(int bno,
			@ModelAttribute("page")int page, Model model){
		BoardVO vo = boardService.read(bno);
		model.addAttribute("boardVO", vo);
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updatePOST(BoardVO vo,
			int page, RedirectAttributes attr){
		int result = boardService.update(vo);
		if(result == 1){
			attr.addFlashAttribute("update_result", "success");
		}else{
			attr.addFlashAttribute("update_result", "fail");
		}
		return "redirect:list?page="+page;
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String deleteBacktoList(int bno, int page, RedirectAttributes attr){
		logger.info("delete() called");
		
		int result = boardService.delete(bno);
		int result2 = replyService.deleteByBno(bno);
		if(result == 1 && result2 == 1){
			attr.addFlashAttribute("delete_result", "success");
		}else{
			attr.addFlashAttribute("delete_result", "fail");
		}
		attr.addFlashAttribute("bno", bno);
		
		return"redirect:list?page="+page;
	}
		
	
}
