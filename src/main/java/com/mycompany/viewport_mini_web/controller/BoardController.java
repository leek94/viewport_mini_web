package com.mycompany.viewport_mini_web.controller;

import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mycompany.viewport_mini_web.dto.Qna;
import com.mycompany.viewport_mini_web.service.BoardService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/board")
public class BoardController {
	@Autowired
	BoardService boardService;
  
  @GetMapping("/writeQNA")
  public String CreateNewBoard() {
    return "board/writeQNA";
  }
  
  @GetMapping("/qnaList")
  public String QnaList() {
    return "board/qnaList";
  }
  
  @GetMapping("/FAQ")
  public String FAQ() {
    return "board/FAQ";
  }
  
  @GetMapping("/qna")
  public String Qna() {
    return "board/qna";
  }
  @PostMapping("/writeQNA")
  public String WriteQNA(@RequestBody Qna qna,Model model,Principal principal) {
    log.info("실행");
    String uemail = principal.getName();
    boardService.insertNewPost(qna,uemail);
    model.addAttribute("qna",qna);
    return null;
  }
  
}
