<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="pure-u-1">
    <a href="<spring:url value='/bucket/create' />" class="pure-button pure-button-success">
        Create bucket
    </a>
</div>
<div class="pure-u-1">
    <c:forEach items="${bucketList}" var="bucket">
        <div>
            <a href="<spring:url value='/bucket/info/${bucket.name}' />">
                ${bucket.name}
            </a>
            &nbsp;
            <a href="<spring:url value="/bucket/delete/${bucket.name}" />">
                Delete
            </a>
        </div>
    </c:forEach>
</div>