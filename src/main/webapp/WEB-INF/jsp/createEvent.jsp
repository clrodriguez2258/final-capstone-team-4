<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<c:url var="createEvent" value="/css/eventInvite.css"/>
<link rel="stylesheet" href="${createEvent}"/>


<div class="testbox">
    <div class="banner">
        <h1>Create Your Event</h1>
    </div>
    <div>
        <c:url var="createEventImage" value="/img/groupdinner.jpg"/>
        <img class="groupdinner" src="${ createEventImage }"/>
    </div>
    <div class="imgBackground" <%--action="/"--%>>
        <c:url var="addRestaurants" value="login/addRestaurants"/>
        <form:form action="${ addRestaurants }" method="POST">
            <div id="eventForm">
                <form method="POST" action="${ addRestaurants }">
                <div class="subheader">
                    <p><span>Invite your favorite people for great food and fun!</span></p>
                </div>
                <div class="item">
                    <p>Event Name</p>
                    <div class="eventName">
                        <input type="text" name="eventName" id="eventName"/>
                    </div>
                </div>
                <div class="eventDate">
                    <p>Event Date</p>
                    <input type="date" name="eventDate" id="eventDate" required/>
                    <i class="fas fa-calendar-alt"></i>
                </div>
                <div class="eventTime">
                    <p>Event Time</p>
                    <input type="time" name="eventTime" id="eventTime" required/>
                </div>
                <div class="decisionDate">
                    <p>Decision due date & time</p>
                    <span>
                <input type="date" name="decisionDate" id="decisionDate" required/>
<%--                <input type="input" name="time" value="24:00:00">required/>--%>
                </span>
                </div>
                <c:url var="addRestaurants" value="login/addRestaurants"/>
                <input onclick="${ addRestaurants }" id="submit-btn" type="submit" name="submit"/>
            </div>
            </form>
        </form:form>
    </div>
</div>


<%@ include file="common/footer.jspf" %>