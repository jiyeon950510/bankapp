<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>

 <div class="m-4">
        <p class="text-center fs-4" style="font-weight: bolder;">메인페이지</p>
        <div class="my_form">
            <hr />
            <table class="table">
                <thead class="text-center">
                    <tr>
                        <th scope="col" style="font-weight: bolder;">계좌번호</th>
                        <th scope="col" style="font-weight: bolder;">잔액</th>
                    </tr>

                <tbody class="table-group-divider text-center">
                    <c:forEach items="${accountList}" var="accountList">
                        <tr>
                            <td scope="row"><a href="/account/${accountList.id}">${accountList.number}</a></td>
                            <td>${accountList.balance}원</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
</body>

</html>