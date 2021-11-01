package kr.co.kmarket.vo;

import lombok.Data;

@Data
public class MemberVo {
	private String km_uid;
	private String km_pass;
	private String km_pass1;
	private String km_pass2;
	private String km_name;
	private String km_nick;
	private String km_email;
	private String km_hp;
	private int km_grade;
	private int km_gender;
	private String km_zip;
	private String km_addr1;
	private String km_addr2;
	private String regip;
	private String rdate;

}
