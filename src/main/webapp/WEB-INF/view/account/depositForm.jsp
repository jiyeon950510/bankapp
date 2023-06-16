<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>

<div class="m-4">
        <p class="text-center fs-4" style="font-weight: bolder;">ATM 입금</p>
        <div class="my_form">
            <hr />
            <form action="/account/deposit" method="post">
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">입금금액</span>
                    <input class=" form-control my_input" type="text" name="amount" placeholder="Enter 입금금액" /><br />
                </div>
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">입금계좌</span>
                    <input class="form-control my_input" type="text" name="dAccountNumber"
                        placeholder="Enter 입금계좌번호" /><br />
                </div>
                <div class="d-grid mx-auto">
                    <button type="submit" class="btn btn-light">입금</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>