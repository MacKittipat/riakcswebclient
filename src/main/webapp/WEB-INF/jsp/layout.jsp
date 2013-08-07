<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Riak CS Web Client</title>
        <link rel="stylesheet" type="text/css" href="<spring:url value='/assets/css/pure/pure-min.css' />" />
    </head>
    <body>
        <jsp:include page="${pageContent}.jsp" />
    </body>
</html>