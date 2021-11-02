package kr.co.kmarket.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.kmarket.vo.MemberVo;
import kr.co.kmarket.vo.memberTermsVo;

@Repository
public interface MemberDao {
	public void insertMember(MemberVo vo);
	public memberTermsVo selectTerms();
	public MemberVo selectMember(String km_uid, String km_pass);
	public List<MemberVo> selectMembers();
	public int selectCountUid(String uid);
	public int selectCountNick(String nick);
	public int selectCountEmail(String email);
	public int selectCountHp(String hp);
	
	
	public void updateMember(MemberVo vo);
	public void deleteMember(String uid);
}