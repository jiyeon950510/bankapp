<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>

 <div class="m-4">
        <p class="text-center fs-4" style="font-weight: bolder;">회원가입페이지</p>
        <div class="my_form">
            <hr />
            <form action="/join" method="post">
            <div>
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
                <div class="d-flex m-1">
                    <span class="input-group-text my_span" id="inputGroup-sizing-default">Full-Name</span>
                    <input class="form-control my_input" type="text" name="fullname"
                        placeholder="Enter fullname" /><br />
                </div>
                <div class="d-grid mx-auto">
                    <button class="btn btn-light" type="submit">회원가입</button>
                </div>
            </div>
            </form>
        </div>
    </div>
</body>

</html>