package shop.mtcoding.bankapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import shop.mtcoding.bankapp.dto.account.AccountDepositReqDto;
import shop.mtcoding.bankapp.dto.account.AccountSaveReqDto;
import shop.mtcoding.bankapp.dto.account.AccountWithdrawReqDto;
import shop.mtcoding.bankapp.handler.ex.CustomException;
import shop.mtcoding.bankapp.model.account.Account;
import shop.mtcoding.bankapp.model.account.AccountRepository;
import shop.mtcoding.bankapp.model.history.History;
import shop.mtcoding.bankapp.model.history.HistoryRepository;

@Service
public class AccountService {

    @Autowired
    private AccountRepository accountRepository;

    @Autowired
    private HistoryRepository historyRepository;

    @Transactional
    public void 입금하기(AccountDepositReqDto accountDepositReqDto) {
        // 1. 입금계좌 존재 여부
        Account accountPS = accountRepository.findByNumber(accountDepositReqDto.getDAccountNumber());
        if (accountPS == null) {
            throw new CustomException("계좌가 존재하지 않습니다", HttpStatus.BAD_REQUEST);
        }
        // 2. 입금하기
        accountPS.deposit(accountDepositReqDto.getAmount());
        accountRepository.updateById(accountPS);

        // 3. 히스토리 (거래내역)
        History history = new History();
        history.setAmount(accountDepositReqDto.getAmount());
        history.setWAccountId(null);
        history.setDAccountId(accountPS.getId());
        history.setWBalance(null);
        history.setDBalance(accountPS.getBalance());

        historyRepository.insert(history);
    }

    @Transactional
    public void 계좌생성(AccountSaveReqDto accountSaveReqDto, int principalId) {
        Account account = accountSaveReqDto.toModel(principalId);
        accountRepository.insert(account);
    }

    @Transactional
    public int 계좌출금(AccountWithdrawReqDto accountWithdrawReqDto) {
        // 1. 계좌존재 여부
        Account accountPS = accountRepository.findByNumber(accountWithdrawReqDto.getWAccountNumber());
        if (accountPS == null) {
            throw new CustomException("계좌가 존재하지 않습니다", HttpStatus.BAD_REQUEST);
        }
        // 2. 계좌 패스워드 확인
        accountPS.checkPassword(accountWithdrawReqDto.getWAccountPassword());

        // 3. 잔액 확인
        if (accountPS.getBalance() < accountWithdrawReqDto.getAmount())

        {
            throw new CustomException("잔액이 부족합니다", HttpStatus.BAD_REQUEST);
        }

        // 4. 출금
        accountPS.withdraw(accountWithdrawReqDto.getAmount());
        accountRepository.updateById(accountPS);

        // 5. 히스토리 (거래내역)
        History history = new History();
        history.setAmount(accountWithdrawReqDto.getAmount());
        history.setWAccountId(accountPS.getId());
        history.setDAccountId(null);
        history.setWBalance(accountPS.getBalance());
        history.setDBalance(null);

        historyRepository.insert(history);

        // 6. 해당 계좌 ID 리턴
        return accountPS.getId();
    }
}
