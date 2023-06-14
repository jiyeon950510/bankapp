<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>

 <div class="m-4">
        <p class="text-center fs-4" style="font-weight: bolder;">로그인페이지</p>
        <div class="my_form">
            <hr />
            <form action="/login" method="post">
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">ID</span>
                    <input class=" form-control my_input" type="text" name="username"
                        placeholder="Enter username" /><br />
                </div>
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">PASSWORD</span>
                    <input class="form-control my_input" type="password" name="password"
                        placeholder="Enter password" /><br />
                </div>
                <div class="d-grid mx-auto">
                    <button type="submit" class="btn btn-light">로그인</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>