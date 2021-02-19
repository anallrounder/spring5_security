package edu.bit.ex.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.MemberMapper;
import edu.bit.ex.vo.MemberUser;
import edu.bit.ex.vo.MemberVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberDetailsService implements UserDetailsService {

	// 주입만 시켜주면 됨 인젝트도 상관없다.위에 클래스에 올 컨스트럭터 써도 된다
	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;

	// 자손이 구현 이거 하나만 하면 됨, 멤버맵퍼 가져와서 유저 디테일즈로 리턴을 시켜야한다. -> 핵심
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//loadUserByUsername 이게 핵심! 진짜 중요함 외우자. UserDetails 리턴
 		//스프링시큐리티가 객체생성하라고했는데 예전엔 아엠피엘에서 생성했는데 이번에는 안했으니까우리가구현해야하는데
		//그때 따라오는게loadUserByUsername이고 (String username)가 로그인할때 유저네임을 말한다.
		// 로그인할때 이 함수를 반드시 호출하게 되어있다. -> 이게 스프링시큐리티의 법칙이다.
		//authentication-provider에서 레퍼런스로 지정했다.
		// 내가만들어서 내가 리턴시키는거다.스프링시큐리티가 저 함수로드저걸 호출해주니까.
		// 스프링이 안에 파라미터 유저네임 넣어줌. 로그인하면 여기에 넣어주겠다. 나머진 니가 알아서해라
		// 유저 디테일즈를 니가 캐스팅해서 알아서해라
		// 유저 디테일즈를 누가 가져감? 스프링이 가져감 .(내가 써먹는게 아님)
		//UserDetails 이 타입으로 무조건 변경을 시켜야한다. 
		
		log.warn("Load User By MemberVO number: " + username);
		MemberVO vo = memberMapper.getMember(username);
		//멤버브이오 가져옴
		
		log.warn("queried by MemberVO mapper: " + vo);

		return vo == null ? null : new MemberUser(vo);
		//그래서 멤버유저를 집어넣어서 객체를 생성시킨다. 이타입이 UserDetails이다.
	}

}