package kr.co.farmstory.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.farmstory.vo.ArticleVo;
import kr.co.farmstory.vo.FileVo;

@Repository
public interface BoardDao {
	
	public int insertArticle(ArticleVo vo);
	public int insertComment(ArticleVo vo);
	
	public void insertFile(FileVo vo);
	
	public ArticleVo selectArticle(int seq);
	public ArticleVo selectComment(int seq);
	public List<ArticleVo> selectArticles(int start , String cate);
	public List<ArticleVo> selectArticles_Grow_5();
	public List<ArticleVo> selectArticles_Story_5();
	public List<ArticleVo> selectArticles_School_5();
	
	public List<ArticleVo> selectArticles_Notice_3();
	public List<ArticleVo> selectArticles_Qna_3();
	public List<ArticleVo> selectArticles_Faq_3();
	
	public List<ArticleVo> selectComments(int start);
	
	public int selectCountTotal(String cate);
	public FileVo selectFile(int fseq);
	
	
	public int updateArticle(ArticleVo vo);
	public void updateFileDownload(int fseq);
	public void updateHit(int seq);
	public void updateComment(ArticleVo vo);
	public void updateCommentCountPlus(int seq);
	public void updateCommentCountMinus(int seq);
	
	
	public void deleteArticle(int seq);
	
}
