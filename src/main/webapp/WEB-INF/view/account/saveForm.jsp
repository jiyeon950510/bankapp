<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>

 <div class="m-4">
        <p class="text-center fs-4" style="font-weight: bolder;">계좌생성</p>
        <div class="my_form">
            <hr />
            <form action="/account" method="post">
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">계좌번호</span>
                    <input class=" form-control my_input" type="text" name="number" placeholder="Enter 계좌번호" /><br />
                </div>
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">계좌비밀번호</span>
                    <input class="form-control my_input" type="password" name="password"
                        placeholder="Enter 계좌비밀번호" /><br />
                </div>
                <div class="d-grid mx-auto">
                    <button type="submit" class="btn btn-light">계좌생성</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>