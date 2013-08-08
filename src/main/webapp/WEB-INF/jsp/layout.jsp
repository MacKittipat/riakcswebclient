<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Riak CS Web Client</title>
        <link rel="stylesheet" type="text/css" href="<spring:url value='/assets/css/pure/pure-min.css' />" />
        <link rel="stylesheet" type="text/css" href="<spring:url value='/assets/css/style.css' />" />
    </head>
    <body>
        <div id="wrap">
            <div id="header" class="pure-g-r">
                <h1 class="pure-u-1">
                    <a href="<spring:url value="/" />">
                        Riak CS Web Client
                    </a>
                </h1>
            </div>
            <div id="content" class="pure-g-r">
                <jsp:include page="${pageContent}.jsp" />
            </div>
        </div>
    </body>
</html>