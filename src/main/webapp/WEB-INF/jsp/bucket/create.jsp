<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div>
    <form:form commandName="bucket">
        Name : <form:input path="name" />
        <input type="submit" value="Create" />
    </form:form>
</div>