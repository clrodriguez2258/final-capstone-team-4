<%@ include file="common/header.jspf" %>

<c:url var="cssUrl" value="/css/site.css"/>
<link rel="stylesheet" href="${cssUrl}"/>

<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>
<br>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <h1>Welcome to HANGRY, The Restaurant Tinder!</h1>
        <h4>You have successfully logged in.</h4>
        <p>User: ${user.capitalizedUsername}</p>
    </div>
</div>

<div class="row">
    <div id="card1" class="col-sm-6 col-md-4" style="width: 50%;">
        <div id="card-content-card1">
            <c:url var="createEventUrl" value="/img/scheduleEvent.jpg"/>
            <img src="${ createEventUrl }" alt="people eating food" class="event-image">
            <div class="caption">
                <h3 class="decision-card-title">Set Up An Event</h3>
                <c:url var="getStartedBtn" value="/login/createEvent"/>
                <form action="${ getStartedBtn }" method="POST" >
                    <button class="submit-btn" type="submit" name="submit" >Get Started</button>
                </form>
            </div>
        </div>
    </div>
    <div id="card2" class="col-sm-6 col-md-4" style="width: 50%;">
        <div id="card-content-card2">
            <c:url var="createEventUrl" value="/img/searchRestaurants.jpg"/>
            <img src="${ createEventUrl }" alt="people eating food" class="search-image">
            <div class="caption">
                <h3 class="decision-card-title">Search For Restaurants</h3>
                <c:url var="searchForRestaurantsBtn" value="/login/restaurants"/>
                <form action="${ searchForRestaurantsBtn }" method="POST" >
                    <button class="submit-btn" type="submit" name="submit" >Subdue your HANGER</button>
                </form>
            </div>
        </div>
    </div>
</div>


<%@ include file="common/footer.jspf" %>