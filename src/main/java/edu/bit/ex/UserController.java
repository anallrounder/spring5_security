package edu.bit.ex;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.bit.ex.service.UserService;
import edu.bit.ex.vo.MemberUser;
import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.UserVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
//링크 받아올 것
@Log4j
@Controller
@AllArgsConstructor
public class UserController {

   private UserService userService;

   @PostMapping("/user/addUser")
   public String addUser(UserVO userVO) {
      log.info("post resister");      

      userService.addUser(userVO);
      
      return "redirect:/";   
   }   
	
	@GetMapping("/user/userForm") 
	public void userForm() {
		log.info("Welcome userForm!"); 
	}
	   
	//로그인정보확인
	 @GetMapping("/loginInfo")
	   public String loginInfo(Principal principal) {
	      
	      // 1.Controller를 통하여 Pincipal객체로 가져오는 방법
	      String user_id = principal.getName();
	      System.out.println("유저 아이디:" + user_id);

	      // 2.SpringContextHolder를 통하여 가져오는 방법(일반적인 빈에서 사용 할수있음 )
	      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      user_id = auth.getName();
	      System.out.println("유저 아이디:" + user_id);

	      // 3.
	      UserDetails userDetails = (UserDetails) auth.getPrincipal();
	      System.out.println(userDetails.getUsername());

	      //4.
	      MemberUser meberUser = (MemberUser) auth.getPrincipal();
	      System.out.println(meberUser.getUsername());

	      
	      // 4.User 클래스로 변환 하여 가져오는 방법
	      User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	      user_id = user.getUsername();
	      System.out.println("유저 아이디:" + user_id);

	      return "home";

	   }
}