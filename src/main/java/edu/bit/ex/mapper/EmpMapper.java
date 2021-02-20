package edu.bit.ex.mapper;

import edu.bit.ex.vo.EmpVO;

/**
 * Handles requests for the application home page.
 */
public interface EmpMapper {

	public EmpVO readUser(String ename);

}