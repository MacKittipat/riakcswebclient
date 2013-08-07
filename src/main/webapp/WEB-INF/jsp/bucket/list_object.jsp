<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div>
    <form>
        <input type="submit" value="Remove All" />
    </form>
</div>
<div>
    <c:forEach items="${objectSummaries}" var="object">
        <div>
            ${object.key}
        </div>
    </c:forEach>
</div>