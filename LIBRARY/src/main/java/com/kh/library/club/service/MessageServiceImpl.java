package com.kh.library.club.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.admin.vo.MessageVO;

@Service("messageService")
public class MessageServiceImpl implements MessageService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<MessageVO> selectGetMsgList(String getId) {
		return sqlSession.selectList("clubMapper.selectGetMsgList", getId);
	}

}
