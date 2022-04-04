<%@ include file="common/header.jspf" %>

<c:url var="cssUrl" value="/css/site.css"/>
<link rel="stylesheet" href="${cssUrl}" />

<div class="container">
    <div class="row">
        <h1>Welcome to HANGry, The Restaurant Tinder!</h1>
        <h4>You have successfully logged in.</h4>
        <p>User: ${user.capitalizedUsername}</p>
        <p>Role: ${user.role.toUpperCase()}</p>
    </div>
</div>

<div>
    <table class="tinderTile">
        <c:url var="restaurantImage" value="/img/chipotle.jpg"/>
        <img src="${ restaurantImage }" alt="Chipotle Logo">
    </table>
</div>


<%@ include file="common/footer.jspf" %>
