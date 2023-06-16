<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>

  <div class="m-4">
        <p class="text-center fs-4" style="font-weight: bolder;">계좌 상세보기</p>
        <div class="my_form">
            <hr />
            <div class="border border-success p-2 mb-2 border-opacity-25 text-center">
                fullname님 계좌<br />
                계좌번호 : 1111<br />
                잔액 : 1000원
            </div>
            <hr />
            <div>
                <ul class="nav justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link" href="#">전체</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">입금</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">출금</a>
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
                    <tr>
                        <td scope="row">2022.10.01</td>
                        <td scope="row">atm</td>
                        <td scope="row">1111게좌</td>
                        <td scope="row">1111원</td>
                        <td scope="row">1111원</td>
                    </tr>
                </tbody>
            </table>
        </div>
</body>

</html>