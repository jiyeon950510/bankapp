package shop.mtcoding.bankapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import shop.mtcoding.bankapp.dto.user.JoinReqDto;
import shop.mtcoding.bankapp.handler.ex.CustomException;
import shop.mtcoding.bankapp.model.user.UserRepository;

@Service // Ioc
public class UserService {
    
    @Autowired // DI
    private UserRepository userRepository;

    @Transactional
    public void 회원가입(JoinReqDto joinReqDto) {
        int result = userRepository.insert(joinReqDto);
        if (result != 1) {
            throw new CustomException("회원가입 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

}
