<%@ page import="java.net.URLEncoder" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="pure-u-1">
    <c:forEach items="${objectSummaries}" var="object">
        <div>
            ${object.key}
            <a href="<spring:url value='/object/delete/${bucketName}/${object.key}' />">
                Delete
            </a>
        </div>
    </c:forEach>
    <div>

        <a href="<spring:url value='/bucket/info/${bucketName}?marker=${objectSummaries[lastObjectIndex].key}' />">
            Next
        </a>
    </div>
</div>