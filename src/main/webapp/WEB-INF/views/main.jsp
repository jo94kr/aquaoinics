<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <%
        request.setCharacterEncoding("UTF-8");
        session = request.getSession(true); 
        String id = request.getParameter("id"); 
        request.getSession().setAttribute("id", id); 
    %>



    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>

    <body>
        <h1>/WEB-INF/views/main.jsp</h1>
        <c:if test="${empty sessionScope.id}">
	        <c:redirect url="./login"/>
        </c:if>
            ${sessionScope.id}님 로그인 하셨습니다.<br>
        <button type="button" onclick="location.href='stinsert.jsp' ">학생등록</button>
        <button type="button" onclick="location.href='notice.jsp' ">게시판</button> 
    </body>

    </html>