package com.mycompany.viewport_mini_web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/board")
public class BoardController {
  @GetMapping("/new")
  public String CreateNewBoard() {
    return "board/board";
  }
}
