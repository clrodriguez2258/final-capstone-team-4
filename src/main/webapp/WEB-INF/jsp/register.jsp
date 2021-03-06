<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="common/header.jspf" %>

<br>
<br>
<%--<form>--%>
<c:url var="registerUrl" value="/register"/>
<form:form action="${ registerUrl }" method="POST" modelAttribute="user">
    <div id="card">
    <div id ="card-content">
    <div class="form-group">
    <div id="card-title">
        <h2>REGISTER</h2>
        <div class="underline-title"></div>
    </div>
    <div class ="form">
        <label for="username" style="padding-top:13px">EMAIL</label>
        <form:input class="form-control" path="username"/>
        <form:errors path="username" cssClass="bg-danger"/>
    </div>
    <div class="form">
        <label for="password" style="padding-top:13px">&nbsp;PASSWORD</label>
        <form:password class="form-control" path="password"/>
        <form:errors path="password" cssClass="bg-danger"/>
    </div>
    <div class="form">
        <label for="confirmPassword" style="padding-top:13px">&nbsp;CONFIRM PASSWORD</label>
        <form:password class="form-control" path="confirmPassword"/>
        <form:errors path="passwordMatching" cssClass="bg-danger"/>
    </div>
    <fieldset>
    <legend style = "padding-top: 40px; font-size: 12pt"></legend>
    <form:errors path="role" cssClass="bg-danger"/>
    <div class="radio" style="opacity: 0%">
        <label style = "font-size: 10pt">
            <form:radiobutton path="role" value="user" checked="checked"/>
        </label>
    </div>
    </fieldset>
    <button id="submit-btn" type="submit" name="submit" style="margin-left: 40px; margin-top: 0" >REGISTER</button>
</form:form>
<%--</form>--%>
</div>
</div>
</div>
<%@ include file="common/footer.jspf" %>