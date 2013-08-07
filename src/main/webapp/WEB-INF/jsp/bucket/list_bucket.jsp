<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div>
    <a href="<spring:url value="/bucket/create" />">
        Create bucket
    </a>
</div>
<div>
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