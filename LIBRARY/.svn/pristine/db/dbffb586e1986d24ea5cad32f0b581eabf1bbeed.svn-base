package com.kh.library.admin.service;

import java.util.List;

import javax.mail.Message;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.admin.vo.MessageVO;
import com.kh.library.book.vo.BorrowVO;
import com.kh.library.book.vo.ReserveVO;
import com.kh.library.member.vo.MemberVO;

@Service("memberAdminService")
public class MemberAdminServiceImpl implements MemberAdminService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<MemberAdminService> selectMemberList(MemberVO memberVO) {
		return sqlSession.selectList("adminMapper.selectMemberList", memberVO);
	}

	@Override
	public void insertSendMessage(MessageVO messageVO) {
		sqlSession.insert("adminMapper.insertSendMessage", messageVO);
	}

	@Override
	public List<MemberVO> selectSearchMember(MemberVO memberVO) {
		return sqlSession.selectList("adminMapper.selectSearchMember", memberVO);
	}

	@Override
	public int selectAllMemberCount(MemberVO memberVO) {
		return sqlSession.selectOne("adminMapper.selectAllMemberCount", memberVO);
	}

	@Override
	public void insertClubJoinMessage(MessageVO messageVO) {
		sqlSession.insert("adminMapper.insertClubJoinMessage", messageVO);
	}

	@Override
	public List<BorrowVO> selectBorrowBookInfo(String memId) {
		return sqlSession.selectList("adminMapper.selectBorrowBookInfo", memId);
	}

	@Override
	public List<ReserveVO> selectReserveBookInfo(String memId) {
		return sqlSession.selectList("adminMapper.selectReserveBookInfo", memId);
	}

	@Override
	public List<MessageVO> selectSendMessageList() {
		return sqlSession.selectList("adminMapper.selectSendMessageList");
	}

	@Override
	public MessageVO selectSendMessageDetail(String msgCode) {
		return sqlSession.selectOne("adminMapper.selectSendMessageDetail", msgCode);
	}

	@Override
	public void insertBookMessage(String getId) {
		sqlSession.insert("adminMapper.insertBookMessage", getId);
	}

	@Override
	public String selectLimitDate(String memId) {
		return sqlSession.selectOne("adminMapper.selectLimitDate", memId);
	}
	

}
