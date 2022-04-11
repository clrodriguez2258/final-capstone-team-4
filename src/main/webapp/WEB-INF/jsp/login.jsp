<%@ include file="common/header.jspf" %>
<br>
<br>
<c:url var="loginUrl" value="/login"/>
<form action="${loginUrl}" method="POST">

    <div id="card-login">
        <div id="card-content-login">
            <div id="card-title-login">
                <h2>LOGIN</h2>
                <div class="underline-title"></div>
            </div>
            <c:url var="loginUrl" value="/login"/>
            <form class="form" action="${loginUrl}" method="POST">
                <label for="username" style="padding-top:13px">&nbsp;Email
                </label><br>
                <input id="username" class="form-content" type="email" name="username"/>
                <div class="form-border"></div>
                <label for="password" style="padding-top:22px">&nbsp;Password
                </label>
                <input id="password" class="form-content" type="password" name="password"/>
                <div class="form-border"></div>
                <div>
                    <input id="submit-btn" type="submit" name="submit" value="LOGIN"/>
                </div>
            </form>
        </div>
    </div>

</form>
<%@ include file="common/footer.jspf" %>