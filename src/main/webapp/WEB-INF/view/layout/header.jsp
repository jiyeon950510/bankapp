<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Bank 애플리케이션</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" href="../css/bank.css">
        </head>

        <body>
            <div class="my_form">
                <ul class="nav justify-content-center">
                    <c:choose>
                        <c:when test="${principal!=null}">
                            <li class="nav-item">
                                <a class="nav-link" href="/logout">로그아웃</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/account">계좌목록(인증)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/account/saveForm">계좌생성(인증)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/account/transferForm">이체하기(인증)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/account/withdrawForm">출금하기(미인증)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/account/depositForm">입금하기(미인증)</a>
                            </li>
                        </c:when>
                 
                        <c:otherwise>
                            <li class="nav-item">
                                <a class="nav-link" href="/loginForm">로그인</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/joinForm">회원가입</a>
                            </li>
                                <li class="nav-item">
                                <a class="nav-link" href="/account/withdrawForm">출금하기(미인증)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/account/depositForm">입금하기(미인증)</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                    
                </ul>
            </div>