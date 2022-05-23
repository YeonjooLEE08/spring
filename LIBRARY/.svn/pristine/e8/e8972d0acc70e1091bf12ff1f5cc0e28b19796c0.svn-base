package com.kh.library.club.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.library.admin.vo.MessageVO;
import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubBoardCmtVO;
import com.kh.library.club.vo.ClubBoardVO;
import com.kh.library.club.vo.ClubImageVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.MemberVO;

@Service("clubService")
public class ClubServiceImpl implements ClubService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void insertUpdateClubCreate(ClubVO clubVO, ClubImageVO clubImageVO) {
		sqlSession.insert("clubMapper.insertClubCreate", clubVO);
		sqlSession.insert("clubMapper.inserClubImg", clubImageVO);
		sqlSession.update("clubMapper.updateClubAdmin", clubVO);
	}	
	
	@Override
	public List<ClubVO> selectClubList(ClubVO clubVO) {
		return sqlSession.selectList("clubMapper.selectClubList", clubVO);
	}

	@Override
	public ClubVO selectClubDetail(String clubCode) {
		return sqlSession.selectOne("clubMapper.selectClubDetail", clubCode);
	}

	@Override
	public void insertClubBoard(ClubBoardVO clubBoardVO) {
		sqlSession.insert("clubMapper.insertClubBoard", clubBoardVO);
	}

	@Override
	public List<ClubBoardVO> selectClubBoardList(ClubBoardVO clubBoardVO) {
		return sqlSession.selectList("clubMapper.selectClubBoardList", clubBoardVO);
	}

	@Override
	public List<ClubBoardVO> selectSearhClubBoardList(ClubBoardVO clubBoardVO) {
		return sqlSession.selectList("clubMapper.selectSearhClubBoardList", clubBoardVO);
	}
	
	@Override
	public ClubBoardVO selectClubBoardDetail(ClubBoardVO clubBoardVO) {
			sqlSession.update("clubMapper.updateCbReadCnt", clubBoardVO);
		return sqlSession.selectOne("clubMapper.selectClubBoardDetail", clubBoardVO);
	}

	@Override
	public void updateClubBoardDetail(ClubBoardVO clubBoardVO) {
		sqlSession.update("clubMapper.updateClubBoardDetail", clubBoardVO);
	}

	@Override
	public void deleteClubBoard(ClubBoardVO clubBoardVO) {
		sqlSession.delete("clubMapper.deleteClubBoard", clubBoardVO);
	}

	@Override
	public void updateClubDetail(ClubVO clubVO) {
		sqlSession.update("clubMapper.updateClubDetail", clubVO);
	}

	@Override
	public void updateClubAdminClubCode(ClubVO clubVO) {
		sqlSession.update("clubMapper.updateClubAdminClubCode", clubVO);
	}

	@Override
	public void insertRegBoardCmt(ClubBoardCmtVO clubBoardCmtVO) {
		sqlSession.insert("clubMapper.insertRegBoardCmt", clubBoardCmtVO);
	}

	@Override
	public List<ClubBoardCmtVO> selectCbCmtList(ClubBoardCmtVO clubBoardCmtVO) {
		return sqlSession.selectList("clubMapper.selectCbCmtList", clubBoardCmtVO);
	}

	@Override
	public void updateCbCmt(ClubBoardCmtVO clubBoardCmtVO) {
		sqlSession.update("clubMapper.updateCbCmt", clubBoardCmtVO);
	}

	@Override
	public void insertClubJoin(ClubApplyVO clubApplyVO) {
		sqlSession.insert("clubMapper.insertClubJoin", clubApplyVO);
	}

	@Override
	public void clubMemberKick(MemberVO memberVO) {
		sqlSession.update("memberMapper.clubMemberKick", memberVO);
	}

	@Override
	public List<MemberVO> selectClubMemberList(MemberVO memberVO) {
		return sqlSession.selectList("clubMapper.selectClubMemberList", memberVO);
	}

	@Override
	public void deleteCbCmt(ClubBoardCmtVO clubBoardCmtVO) {
		sqlSession.delete("clubMapper.deleteCbCmt", clubBoardCmtVO);
	}

	@Override
	public int selectClubBoardListCnt(ClubBoardVO clubBoardVO) {
		return sqlSession.selectOne("clubMapper.selectClubBoardListCnt", clubBoardVO);
	}
	
	@Override
	public int selectClubListCnt(ClubVO clubVO) {
		return sqlSession.selectOne("clubMapper.selectClubBoardListCnt", clubVO);
	}

	@Override
	public ClubApplyVO selectMyBookClubApply(String memId) {
		return sqlSession.selectOne("clubMapper.selectMyBookClubApply", memId);
	}

	@Override
	public void deleteMyBookClubApply(String memId) {
		sqlSession.delete("clubMapper.deleteMyBookClubApply", memId);
	}

	@Override
	public void updateCbReadCnt(ClubBoardVO clubBoardVO) {
		sqlSession.update("clubMapper.updateCbReadCnt", clubBoardVO);
	}

	@Override
	public int selectBookClubMemComplitBook(MemberVO memberVO) {
		return sqlSession.selectOne("clubMapper.selectBookClubMemComplitBook", memberVO);
	}

	@Override
	public int selectMsgCount(String getId) {
		return sqlSession.selectOne("clubMapper.selectMsgCount", getId);
	}

	@Override
	public void updateMsgIsRead(String msgCode) {
		sqlSession.update("clubMapper.updateMsgIsRead", msgCode);
	}

	@Override
	public void updateClubApplyCode(ClubApplyVO clubApplyVO) {
		sqlSession.update("clubMapper.updateClubApplyCode", clubApplyVO);
	}

	@Override
	public String selectClubApplyCode(String memId) {
		return sqlSession.selectOne("clubMapper.selectClubApplyCode", memId);
	}

	@Override
	public int selectNextClubImgCode() {
		return sqlSession.selectOne("clubMapper.selectNextClubImgCode");
	}

	@Override
	public String selectNextClubCode() {
		return sqlSession.selectOne("clubMapper.selectNextClubCode");
	}

	@Override
	public void updateClubImage(ClubImageVO vo) {
		sqlSession.update("clubMapper.updateClubImage", vo);
	}

	@Override
	public String selectCbAtName(String clubCode) {
		return sqlSession.selectOne("clubMapper.selectCbAtName", clubCode);
	}

	//공지사항 조회
	@Override
	public List<ClubBoardVO> selectNoticBoardList(ClubBoardVO clubBoardVO) {
		return sqlSession.selectList("clubMapper.selectNoticBoardList", clubBoardVO);
	}
	
	//랭킹
	@Override
	public List<MemberVO> selectRanking(String clubCode) {
		return sqlSession.selectList("clubMapper.selectRanking", clubCode);
	}

	@Override
	public void deleteMsg(String msgCode) {
		sqlSession.delete("clubMapper.deleteMsg", msgCode);
	}

	@Override
	public int clubNameCheck(String clubName) throws Exception {
		return sqlSession.selectOne("clubMapper.clubNameCheck", clubName);
	}

}
