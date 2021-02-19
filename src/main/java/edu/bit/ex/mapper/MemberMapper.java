package edu.bit.ex.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.UserVO;

/**
 * Handles requests for the application home page.
 */

@Mapper
public interface MemberMapper {
   MemberVO getMember(String username);
}