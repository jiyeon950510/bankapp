<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>

 <div class="m-4">
        <p class="text-center fs-4" style="font-weight: bolder;">ATM 출금</p>
        <div class="my_form">
            <hr />
            <form action="/join" method="post">
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">출금금액</span>
                    <input class=" form-control my_input" type="text" name="amount" placeholder="Enter 출금금액" /><br />
                </div>
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">계좌번호</span>
                    <input class="form-control my_input" type="text" name="wAccountNumber"
                        placeholder="Enter 출금계좌번호" /><br />
                </div>
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">계좌 비밀번호</span>
                    <input class="form-control my_input" type="text" name="wAccountPassword"
                        placeholder="Enter 출금계좌비밀번호" /><br />
                </div>
                <div class="d-grid mx-auto">
                    <button type="button" class="btn btn-light">출금</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>