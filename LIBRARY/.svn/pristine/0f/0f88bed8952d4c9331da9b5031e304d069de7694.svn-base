package com.kh.library.book.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.library.book.vo.ReserveVO;
import com.kh.library.member.vo.MemberVO;
import com.kh.library.book.vo.BookImgVO;
import com.kh.library.book.vo.BookVO;
import com.kh.library.book.vo.BorrowVO;
import com.kh.library.book.vo.HopeBookApplyVO;
import com.kh.library.book.vo.HopeBookVO;

@Service("bookAdminService")
public class BookAdminServiceImpl implements BookAdminService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//연체 도서 업데이트
	@Override
	public void updateOverdue() {
		sqlSession.update("bookMapper.updateOverdue");
		sqlSession.update("memberMapper.updateIsOdMem");
	}
	
	//대여 제한 해제
	@Override
	public void clearLimitDate() {
		sqlSession.update("memberMapper.updateClearLimit");
	}

	//도서 등록
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void insertBook(BookVO bookVO, BookImgVO bookImgVO) {
		sqlSession.insert("bookMapper.insertBook",bookVO);
		sqlSession.insert("bookMapper.insertBookImg",bookImgVO);
	}
	
	//도서 표지 등록
	@Override
	public void insertBookImg(BookImgVO bookImgVO) {
		sqlSession.insert("bookMapper.insertBookImg",bookImgVO);
	}
	
	//이미지코드숫자
	@Override
	public int selectNextBookImgCode() {
		return sqlSession.selectOne("bookMapper.selectNextImgCode");
	}
	
	//책 코드
	@Override
	public String selectNextBookCode() {
		return sqlSession.selectOne("bookMapper.selectNextBookCode");
	}
	
	//책 수정
	@Override
	public void updateBook(BookVO bookVO) {
		sqlSession.update("bookMapper.updateBook",bookVO);
	}

	@Override
	public void updateBkImg(BookImgVO vo) {
		sqlSession.update("bookMapper.updateBkImg", vo);
	}

	@Override
	public String selectBkAtName(String bookCode) {
		return sqlSession.selectOne("bookMapper.selectBkAtName",bookCode);
	}

	//책 삭제
	@Override
	public void deleteBook(BookVO bookVO) {
		sqlSession.update("bookMapper.deleteBook",bookVO);
	}

	//isDel 조회
	@Override
	public String selectIsDelete(String bookCode) {
		return sqlSession.selectOne("bookMapper.selectIsDelete",bookCode);
	}

	
	//추천도서 랭킹
	@Override
	public List<BookVO> selectRcdBook(){
		return sqlSession.selectList("bookMapper.selectRcdBook");
	}
	
	//신간도서 조회
	@Override
	public List<BookVO> selectNewBook(){
		return sqlSession.selectList("bookMapper.selectNewBook");
	}
	
	//예약 목록 조회
	@Override
	public List<ReserveVO> selectRsvList(ReserveVO reserveVO) {
		return sqlSession.selectList("bookMapper.selectRsvAdmin",reserveVO);
	}
	
	//rtDate 조회
	@Override
	public String selectRtDate(BorrowVO borrowVO) {
		String rtDate = sqlSession.selectOne("bookMapper.selectRtDate",borrowVO);
		return rtDate;
	}
	
	//도서 대여
	@Override
	public void borrowBook(ReserveVO reserveVO,  MemberVO memberVO) {
		sqlSession.insert("bookMapper.insertBorrow", reserveVO);
		sqlSession.update("bookMapper.updateBrCnt", reserveVO);
		//여기서 예약 어쩌고 걍 삭제해버리기 .. 
		sqlSession.delete("bookMapper.deleteRsvList", reserveVO);
		sqlSession.update("memberMapper.updateBrCntPlus", memberVO);
	}
	
	//대여목록 조회
	@Override
	public List<BorrowVO> selectBrList(BorrowVO borrowVO) {
		return sqlSession.selectList("bookMapper.selectBrList",borrowVO);
	}
	
	//대여 상태별 조회
	@Override
	public List<BorrowVO> selectBrStatus(BorrowVO borrowVO) {
		return sqlSession.selectList("bookMapper.selectBrStatus",borrowVO);
	}
	
	//멤버별 대여목록 조회
	@Override
	public List<BorrowVO> selectBrMember(BorrowVO borrowVO) {
		return sqlSession.selectList("bookMapper.selectBrMember",borrowVO);
	}
	
	//멤버별 대여제한 이력 조회
	@Override
	public MemberVO selectLimitDate(MemberVO memberVO) {
		return sqlSession.selectOne("memberMapper.selectLimitDate",memberVO);
	}

	//도서 반납
	@Override
	public void updateReturn(BorrowVO borrowVO ,  MemberVO memberVO) {
		sqlSession.update("bookMapper.updateBookInfo", borrowVO);
		sqlSession.update("bookMapper.updateBrStatus", borrowVO);
		sqlSession.update("memberMapper.updateBrCntMinus", memberVO);
	}
	
	//대여 제한(연체일만큼)
	@Override
	public void updateLimit(MemberVO memberVO) {
		sqlSession.update("memberMapper.updateLimitDate", memberVO);
	}

	//희망도서 리스트 조회 
	@Override
	public List<HopeBookVO> selectHopeBookList(){
		return sqlSession.selectList("bookMapper.selectHopeBook");
	}
	
	//희망도서 분류별 조회
	@Override
	public List<HopeBookVO> selectHopeBookListStatus(HopeBookVO hbVO) {
		return sqlSession.selectList("bookMapper.selectHopeBookStatus",hbVO);
		
	}
	
	//희망도서 업데이트
	@Override
	public void updateHopeBook(HopeBookVO hbVO) {
		sqlSession.update("bookMapper.updateHpBook",hbVO);
	}

	
	
	
	

	
	
}
