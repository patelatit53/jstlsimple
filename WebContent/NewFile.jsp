<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learning JSTL</title>
    </head>
    <body>
        <h1>Learning JSTL at Rajesh Patkar Institute</h1>
        <c:choose>
            <c:when test="${param['count'] eq null}">
                <c:set var="i" value="3"/>
            </c:when>
            <c:otherwise>
                <c:set var="i" value="${param['count']}"/>
            </c:otherwise>
        </c:choose>
        
        <c:if test="${i<5}">
            <c:out value="User Entered Count Lesser that 5"/>
        </c:if>
        <c:if test="${i>=5}">
            <c:out value="User Entered Count Greater that 5"/>
        </c:if>   
        <br>
        <c:out value="Count is ${i}"/>
        <br>
        <h2> Looping using forEach tag </h2>
        <c:forEach begin="0" end="${i-1}" var="j">
            <c:out value="In Iteration ${j}"/>
            <br>
        </c:forEach>
    </body>
</html>