package kr.co.kmarket.vo;

import lombok.Data;

@Data
public class MemberVo {
	private String uid;
	private String pass;
	private String pass1;
	private String pass2;
	private String name;
	private String nick;
	private String email;
	private String hp;
	private int grade;
	private int gender;
	private int point;
	private String company;
	private String ceo;
	private int bizRegNum;
	private int commRepNum;
	private String tel;
	private String manager;
	private String managerHp;
	private String fax;
	
	private String leaveDate;
	
	private String zip;
	private String addr1;
	private String addr2;
	private String ip;
	private String rdate;

	private String etc1;
	private String etc2;
	private String etc3;
	private String etc4;
	private String etc5;
}
