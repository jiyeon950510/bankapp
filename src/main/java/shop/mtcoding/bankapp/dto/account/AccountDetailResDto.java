package shop.mtcoding.bankapp.dto.account;

import java.security.Principal;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AccountDetailResDto {
    private Integer id;
    private String number;
    private Long balance;
    private Integer userId;
    private String fullname;
}
