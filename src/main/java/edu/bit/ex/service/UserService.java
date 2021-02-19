package edu.bit.ex.service;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.bit.ex.mapper.UserMapper;
import edu.bit.ex.vo.UserVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@NoArgsConstructor
@Service
public class UserService {
   
   @Inject
   private BCryptPasswordEncoder passEncoder;
  
   
   @Inject
   private UserMapper userMapper;
   
   @Transactional(rollbackFor = Exception.class)
   public void addUser(UserVO userVO){
      String password = userVO.getPassword();
      String encode = passEncoder.encode(password); //얘만의 해쉬알고리즘 적용한거를 아래에
      
      userVO.setPassword(encode); //암호화시킨것을 여기에 set함
      
      userMapper.insertUser(userVO); //그리고 여기에 insert로 집어넣음
      userMapper.insertAuthorities(userVO);
      

   }
   

}

