<%@ include file="common/header.jspf" %>

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
                <label for="user-password" style="padding-top:22px">&nbsp;Password
                </label>
                <input id="user-password" class="form-content" type="password" name="password"/>
                <div class="form-border"></div>
                <div>
                    <input id="submit-btn" type="submit" name="submit" value="LOGIN"/>
                </div>
            </form>
        </div>
    </div>
<%@ include file="common/footer.jspf" %>