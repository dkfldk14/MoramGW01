package project.spring.groupware.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PageMaker;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.searchutil.SearchCriteria;
import project.spring.groupware.board.service.NoticeBoardService;



@Controller
@RequestMapping(value="/notice_board")
public class NoticeBoardController {
	
	@Autowired
	private NoticeBoardService boardService;
	
	@RequestMapping(value="/list", method= RequestMethod.GET)
	public void listPage(Integer page, Integer bno, Model model){
		
		PaginationCriteria c = new PaginationCriteria();
		
		if(page != null){
			c.setPage(page);
		}
		
		List<BoardVO> list = boardService.read(c);
		
		model.addAttribute("noticeBoardList", list);
		
		//검색
		SearchCriteria searchCriteria = new SearchCriteria();
		List<BoardVO> searchList = boardService.listSearchCriteria(searchCriteria);
		model.addAttribute("searchNoticeBoardList", searchList);
		
		//page
		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setSearchCriteria(searchCriteria);
		
		maker.setTotalCount(boardService.getNumOfRecords());
		maker.setPageDate();
		model.addAttribute("pageMaker", maker);
		
	}
	
	@RequestMapping(value="/searchList", method=RequestMethod.GET)
	public void searchList(String searchType, String keyword, Integer page, Model model){
		SearchCriteria searchCriteria = new SearchCriteria(searchType, keyword);
		
		List<BoardVO> searchList = boardService.listSearchCriteria(searchCriteria);
		
		model.addAttribute("searchList", searchList);
		
		PageMaker maker = new PageMaker();
		maker.setSearchCriteria(searchCriteria);
		model.addAttribute("pageMaker", maker);
		
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void register(){
		
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registerToList(BoardVO vo, RedirectAttributes attr){
		int result = boardService.create(vo);
		
		if(result == 1){
			attr.addFlashAttribute("insert_result", "success");
			attr.addAttribute("editor", "editor");
		}else{
			attr.addFlashAttribute("insert_fail", "fail");
		}
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public void detail(int bno,
			@ModelAttribute("page") int page, Model model){
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
	public String deleteBackToList(int bno, int page, RedirectAttributes attr){
		int result = boardService.delete(bno);
		if(result ==1){
			attr.addFlashAttribute("delete_result", "success");			
		}
		attr.addFlashAttribute("bno", bno);
		
		return "redirect:list?page="+page;
	}
	
	
	
}//end class













