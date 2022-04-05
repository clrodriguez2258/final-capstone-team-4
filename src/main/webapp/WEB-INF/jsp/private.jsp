<%@ include file="common/header.jspf" %>

<c:url var="cssUrl" value="/css/site.css"/>
<link rel="stylesheet" href="${cssUrl}"/>
<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>

<div class="container">
    <div class="row">
        <h1>Welcome to HANGRY, The Restaurant Tinder!</h1>
        <h4>You have successfully logged in.</h4>
        <p>User: ${user.capitalizedUsername}</p>
        <p>Role: ${user.role.toUpperCase()}</p>
    </div>
</div>

<%--<div class="card" style="width: 18rem;">--%>
<div id="card-private" class="card" style="width: 100%;">
    <div id="card-content-private">
        <c:url var="restaurantUrl" value="/img/chipotle.jpg"/>
        <img class="card-img-top" src="${ restaurantUrl }" alt="Chipotle Logo"
             style="width: 100%; margin-bottom: -10%;">

        <button type="submit" class="up-down-vote-button" id="downbutton"><a href="#" class="card-link">&#128078;</a>
        </button>
        <button type="submit" class="up-down-vote-button" id="upbutton"><a href="#" class="card-link">&#128077;</a>
        </button>

        <div class="card-body">
            <h3 class="card-title"><strong>Chipotle</strong></h3>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Address: 1234 Main Street, Techtown, USA</li>
            <li class="list-group-item">Phone: (773)202-5862</li>
            <li class="list-group-item">Open: 10:00AM - 10:00PM</li>
            <li class="list-group-item">Price: $</li>
        </ul>
    </div>
</div>


<%@ include file="common/footer.jspf" %>
