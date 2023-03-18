package shop.mtcoding.bankapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.bankapp.dto.user.JoinReqDto;
import shop.mtcoding.bankapp.handler.ex.CustomException;
import shop.mtcoding.bankapp.service.UserService;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/join")
    public String join(JoinReqDto joinReqDto) {
        // 1. 인증
        // 2. 유효성 검사
        if (joinReqDto.getUsername() == null || joinReqDto.getUsername().isEmpty()) {
            throw new CustomException("username 을 입력해주세요", HttpStatus.BAD_REQUEST);
        }
        if (joinReqDto.getPassword() == null || joinReqDto.getPassword().isEmpty()) {
            throw new CustomException("password 을 입력해주세요", HttpStatus.BAD_REQUEST);
        }
        if (joinReqDto.getFullname() == null || joinReqDto.getFullname().isEmpty()) {
            throw new CustomException("fullname 을 입력해주세요", HttpStatus.BAD_REQUEST);
        }
        // 3. 서비스 호출
        userService.회원가입(joinReqDto);
        return "redirect:/loginForm";
    }


    @GetMapping("/joinForm")
    public String joinForm() {
        return "user/joinForm";
    }

    @GetMapping("/loginForm")
    public String loginForm() {
        return "user/loginForm";
    }
}
