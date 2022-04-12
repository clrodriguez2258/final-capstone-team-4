<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="common/header.jspf" %>

<br>
<br>
<c:url var="registerUrl" value="/register"/>
<form:form action="${registerUrl}" method="POST" modelAttribute="user">
    <div id="card">
    <div id ="card-content">
    <div class="form-group">
        <div id="card-title">
            <h2>Register</h2>
            <div class="underline-title"></div>
        </div>
        <label for="username" style="padding-top:13px">Email</label>
        <form:input class="form-control" path="username" />
        <form:errors path="username" cssClass="bg-danger"/>
    </div>
    <div class="form">
        <label for="password" style="padding-top:13px">&nbsp;Password</label>
        <form:password class="form-control" path="password"/>
        <form:errors path="password" cssClass="bg-danger"/>
    </div>
    <div class="form">
        <label for="confirmPassword" style="padding-top:13px">&nbsp;Confirm Password</label>
        <form:password class="form-control" path="confirmPassword"/>
        <form:errors path="passwordMatching" cssClass="bg-danger"/>
    </div>
    <fieldset>
        <legend>Role</legend>
        <form:errors path="role" cssClass="bg-danger"/>
        <div class="radio">
            <label>
                <form:radiobutton path="role" value="user" checked="checked"/>
                User
            </label>
        </div>
        <div class="radio">
            <label>
                <form:radiobutton path="role" value="admin"/>
                Administrator
            </label>
        </div>
        <div class="radio">
            <label>
                <form:radiobutton path="role" value="editor"/>
                Editor
            </label>
        </div>
    </fieldset>
    <button class = "btn btn-default" id="submit-btn" type="submit" name="submit" >Save User</button>

</form:form>
</div>
</div>
<%@ include file="common/footer.jspf" %>