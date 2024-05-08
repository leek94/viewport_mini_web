package com.mycompany.viewport_mini_web.dto;

import java.sql.Blob;
import java.util.Date;
import org.springframework.web.multipart.MultipartFile;
import lombok.Data;

@Data
public class Qna {
  private int qid;
  private String qcategory;
  private String qtitle;
  private Date qdate;
  private String qcontent;
  private int quserid;
  private String qstatus;
  private Blob qattachdata;
  private String qattachoname;
  private String qattachsname;
  private byte[] qattachtype;
  
  private MultipartFile qattach;
  
}
