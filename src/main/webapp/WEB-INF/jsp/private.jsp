<%@ include file="common/header.jspf" %>

<c:url var="cssUrl" value="/css/site.css"/>
<link rel="stylesheet" href="${cssUrl}"/>

<div class="container">
    <div class="row">
        <h1>Welcome to HANGry, The Restaurant Tinder!</h1>
        <h4>You have successfully logged in.</h4>
        <p>User: ${user.capitalizedUsername}</p>
        <p>Role: ${user.role.toUpperCase()}</p>
    </div>
</div>

<div class="card" style="width: 18rem;">
    <c:url var="restaurantUrl" value="/img/chipotle.jpg"/>
    <img class="card-img-top" src="${ restaurantUrl }" alt="Chipotle Logo" style="width: 250%;">
    <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
            content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
    </div>
</div>


<%@ include file="common/footer.jspf" %>
