<%@ page import="java.net.URLEncoder" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div>
    <form>
        <a href="/object/deleteall">
            Delete all
        </a>
    </form>
</div>
<div>
    <c:forEach items="${objectSummaries}" var="object">
        <div>
            ${object.key}
            <%
                String url = URLEncoder.encode("/object/delete/-10000_2013_08_06_0820_www_zett_no.gz", "UTF-8");
                url.replaceAll("//.", "%2E");
            %>
            <a href="<spring:url value='/object/delete/${object.bucketName}/${object.key}' />">
                Delete
            </a>
        </div>
    </c:forEach>
</div>