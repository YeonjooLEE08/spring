package com.kh.library.member.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.book.vo.BookVO;
import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.BookComplitVO;
import com.kh.library.member.vo.MemberImageVO;
import com.kh.library.member.vo.MemberVO;
import com.kh.library.member.vo.ToReadListVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//-----------------회원가입-------------//
	//아이디 중복 체크
	@Override
	public int checkId(String memId) {
		int cnt = sqlSession.selectOne("memberMapper.checkId", memId);
		return cnt;
	}
	
	//MEM_IMG_CODE 설정
	@Override
	public int selectNextMemImgCode() {
		return sqlSession.selectOne("memberMapper.selectNextMemImgCode");
	}
	
	//프로필 사진 넣기
	@Override
	public void insertMemberImage(MemberImageVO imageVO) {
		sqlSession.insert("memberMapper.insertMemberImage", imageVO);
	}
	
	//회원가입
	@Override
	public void joinMember(MemberVO memberVO) {
		sqlSession.insert("memberMapper.join", memberVO);
	}
	
	//-----------------로그인-------------//
	//로그인
	@Override
	public MemberVO login(String memId) {
		return sqlSession.selectOne("memberMapper.login", memId);
	}
	//아이디 찾기
	@Override
	public String findId(MemberVO memberVO) {
		return sqlSession.selectOne("memberMapper.findId", memberVO);
	}
	// 비밀번호찾기 : 임시 비번 발송 위한 이메일 조회
	@Override
	public String selectEmail(MemberVO memberVO) {
		return sqlSession.selectOne("memberMapper.selectEmail", memberVO);
	}
	// 임시 비밀번호로 정보 수정
	@Override
	public void updateTempPwd(MemberVO memberVO) {
		sqlSession.update("memberMapper.updateTempPwd", memberVO);
	}

	//-------------마이페이지:회원정보----------------//
	//내 정보 상세조회
	@Override
	public MemberVO selectMyPageDetail(String memId) {
		return sqlSession.selectOne("memberMapper.selectMyPageDetail", memId);
	}
	//정보 수정 - 기본 정보, 프로필 수정
	@Override
	public void updateBasicInfo(MemberVO memberVO) {
		sqlSession.update("memberMapper.updateBasicInfo", memberVO);
	}
	//프사 업뎃
	@Override
	public void updateMemImage(MemberImageVO imageVO) {
		sqlSession.update("memberMapper.updateMemImage", imageVO);
		
	}
	//프사 업뎃 위한 이미지 이름 조회
	@Override
	public String selectMemAtImgName(String memId) {
		return sqlSession.selectOne("memberMapper.selectMemAtImgName", memId);
	}
	
	
	//보안 정보 - 현 비번 확인
	@Override
	public String checkPwd(String memId) {
		return sqlSession.selectOne("memberMapper.checkPwd", memId);
	}

	//보안 정보 수정 - 비밀번호 수정
	@Override
	public void updateSecretInfo(MemberVO memberVO) {
		sqlSession.update("memberMapper.updateSecretInfo", memberVO);
	}
	

	//추가 정보 수정
	@Override
	public void updatePlusInfo(MemberVO memberVO) {
		sqlSession.update("memberMapper.updatePlusInfo", memberVO);
	}
	//-------------마이페이지:북클럽----------------//
	//내 북클럽 조회
	@Override
	public ClubVO selectMyBookClub(String memId) {
		return sqlSession.selectOne("memberMapper.selectMyBookClub", memId);
	}
	
	//북클럽 신청 조회
	@Override
	public ClubApplyVO selectMyBookClubApply(String memId) {
		return sqlSession.selectOne("memberMapper.selectMyBookClubApply", memId);
	}
	
	//북클럽 신청 취소
	@Override
	public void deleteMyBookClubApply(ClubApplyVO clubApplyVO) {
		sqlSession.delete("memberMapper.deleteMyBookClubApply", clubApplyVO);
	}
	
	//-------------마이페이지:독서플래너----------------//
	//독서 플래너 조회
	@Override
	public List<BookComplitVO> selectBookPlaner(String memId) {
		return sqlSession.selectList("memberMapper.selectBookPlaner", memId);
	}
	//독서량 상위 백분율
	@Override
	public BookComplitVO selectComplitHighPct(String memId) {
		return sqlSession.selectOne("memberMapper.selectComplitHighPct", memId);
	}
	//독서 취향 순위
	@Override
	public List<BookComplitVO> topThreeBookPlaner(String memId) {
		return sqlSession.selectList("memberMapper.topThreeBookPlaner", memId);
	}
	//취향 책 추천
	@Override
	public List<BookComplitVO> selectRecommendBook(String memId) {
		return sqlSession.selectList("memberMapper.selectRecommendBook", memId);
	}
	//안 읽어본 책 추천
	@Override
	public List<BookComplitVO> selectReadYet(String memId) {
		return sqlSession.selectList("memberMapper.selectReadYet", memId);
	}
	//독서 플래너 차트 조회
	@Override
	public List<BookComplitVO> selectBookPlanerChart(String memId) {
		return sqlSession.selectList("memberMapper.selectBookPlanerChart", memId);
	}
	
	//to read list
	@Override
	public List<ToReadListVO> selectToReadList(String memId) {
		return sqlSession.selectList("memberMapper.selectToReadList", memId);
	}
	//추가
	@Override
	public void insertToReadList(ToReadListVO toReadListVO) {
		sqlSession.insert("memberMapper.insertToReadList", toReadListVO);
	}
	//삭제
	@Override
	public void deleteToReadList(String toReadListCode) {
		sqlSession.delete("memberMapepr.deleteToReadList", toReadListCode);
	}
	//isDone 상태전환
	@Override
	public void updateToReadList(ToReadListVO toReadListVO) {
		sqlSession.update("memberMapper.updateToReadList", toReadListVO);
	}
	
	//상세 조회
	@Override
	public BookComplitVO selectBookPlanerDetail(BookComplitVO bookComplitVO) {
		return sqlSession.selectOne("memberMapper.selectBookPlanerDetail", bookComplitVO);
	}
	//도서 검색
	@Override
	public List<BookVO> selectBookPlanerSearch(BookVO bookVO) {
		return sqlSession.selectList("memberMapper.selectBookPlanerSearch", bookVO);
	}
	//독서 플래너 등록
	@Override
	public void insertBookPlaner(BookVO bookVO) {
		sqlSession.insert("memberMapper.insertBookPlaner", bookVO);
		
	}
	//독서 플래너 삭제
	@Override
	public void deleteBookPlaner(String complitCode) {
		sqlSession.delete("memberMapper.deleteBookPlaner", complitCode);
	}
	//독서 플래너 수정
	@Override
	public void updateBookPlaner(BookComplitVO bookComplitVO) {
		sqlSession.update("memberMapper.updateBookPlaner", bookComplitVO);
	}

	


	
	

	

	

	

	




	

	





	

}
