<%@ include file="common/header.jspf" %>

<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>

<div class="row">
    <div class="col-sm-6 col-md-4" style="width: 50%;">
        <div class="thumbnail">
            <c:url var="createEventUrl" value="/img/scheduleEvent.jpg"/>
            <img src="${ createEventUrl }" alt="people eating food" class="event-image">
            <div class="caption">
                <h3 class="decision-card-title">Set Up An Event</h3>
                <p><a href="#" class="btn btn-primary" role="button" style="width: 100%;">Set Up An Event</a></p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-4" style="width: 50%;">
        <div class="thumbnail">
            <c:url var="createEventUrl" value="/img/searchRestaurants.jpg"/>
            <img src="${ createEventUrl }" alt="people eating food" class="search-image">
            <div class="caption">
                <h3 class="decision-card-title">Search For Restaurants</h3>
                <p><a href="#" class="btn btn-primary" role="button" style="width: 100%;">Search For Restaurants</a></p>
            </div>
        </div>
    </div>
</div>


<%@ include file="common/footer.jspf" %>