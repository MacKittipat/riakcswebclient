<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div>
    <c:forEach items="${bucketList}" var="bucket">
        <div>
            <a href="<spring:url value='/bucket/${bucket.name}' />">
                ${bucket.name}
            </a>
        </div>
    </c:forEach>
</div>