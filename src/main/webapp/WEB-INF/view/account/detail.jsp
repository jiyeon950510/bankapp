<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>

  <div class="m-4">
        <p class="text-center fs-4" style="font-weight: bolder;">계좌 상세보기</p>
        <div class="my_form">
            <hr />
            <div class="border border-success p-2 mb-2 border-opacity-25 text-center">
                ${aDto.fullname}님 계좌<br />
                계좌번호 : ${aDto.number}<br />
                잔액 : ${aDto.balance}원
            </div>
            <hr />
            <div>
                <ul class="nav justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link" href="/account/${aDto.id}?gubun=all">전체</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/account/${aDto.id}?gubun=deposit">입금</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/account/${aDto.id}?gubun=withdraw">출금</a>
                    </li>
                </ul>
            </div>
            <table class="table">
                <thead class="text-center">
                    <tr>
                        <th scope="col" style="font-weight: bolder;">날짜</th>
                        <th scope="col" style="font-weight: bolder;">보낸이</th>
                        <th scope="col" style="font-weight: bolder;">받은이</th>
                        <th scope="col" style="font-weight: bolder;">입출금 금액</th>
                        <th scope="col" style="font-weight: bolder;">계좌 잔액</th>
                    </tr>

                <tbody class="table-group-divider text-center">
                    <c:forEach items="${hDtoList}" var="history">
                        <tr>
                            <td scope="row">${history.createdAt}</td>
                            <td scope="row">${history.sender}</td>
                            <td scope="row">${history.receiver}</td>
                            <td scope="row">${history.amount}</td>
                            <td scope="row">${history.balance}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
</body>

</html>