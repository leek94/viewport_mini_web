package com.mycompany.viewport_mini_web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.viewport_mini_web.dao.StylesDao;
import com.mycompany.viewport_mini_web.dao.UserDao;
import com.mycompany.viewport_mini_web.dto.Pager;
import com.mycompany.viewport_mini_web.dto.Styles;
import com.mycompany.viewport_mini_web.dto.Users;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class StylesService {
  @Autowired
  StylesDao stylesDao; 
  @Autowired
  UserDao userDao;   

public int getStylesTotalRows() {
	int totalStylesRows = stylesDao.count();
	return totalStylesRows;
}


public List<Styles> getStylesListByPager(Pager pager) {
	List<Styles> styles = stylesDao.selectStylesListByPager(pager);
	return styles;
}


public Styles getStyles(int stid) {
	Styles styles = stylesDao.selectByStid(stid);
	return styles;
}


public void createStyles(Styles styles, String uemail) {
	int stuserid = userDao.selectByUemail(uemail).getUsid();
	styles.setStuserid(stuserid);
	stylesDao.insert(styles);
}


}
