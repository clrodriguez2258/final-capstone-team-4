<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<c:url var="createEvent" value="/css/eventInvite.css"/>
<link rel="stylesheet" href="${createEvent}"/>


<div class="testbox">
    <div class="banner">
        <h1>Create Your Event</h1>
    </div>

    <div <%--action="/"--%>>
        <div>
            <c:url var="createEventImage" value="/img/groupdinner.jpg"/>
            <img class="groupdinner" src="${ createEventImage }"/>
        </div>
        <c:url var="addGuests" value="/login/createEvent"/>
        <form:form action="${ addGuests }" method="POST">
            <div id="eventForm">
                <form method="POST" action="${ addGuests }"/>
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
                    <p>Decision due date</p>
                    <span>
                <input type="date" name="decisionDate" id="decisionDate" required/>
<%--                <input type="input" name="time" value="24:00:00">required/>--%>
                </span>
                </div>
                <div class="btn-block">
                <input id="event-btn" type="submit" name="submit" value="Choose Restaurants"/>
                </div>
            </div>
            </form>
        </form:form>

    </div>
</div>


<%@ include file="common/footer.jspf" %>