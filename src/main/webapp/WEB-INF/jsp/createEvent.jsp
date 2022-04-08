<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<c:url var="createEvent" value="/css/eventInvite.css"/>
<link rel="stylesheet" href="${createEvent}"/>


<div class="testbox">
    <div action="/">
        <div class="banner">
            <h1>Create Your Event</h1>
            <div>
                <br>
            </div>
            <br>
            <div class="subheader">
                <p>Invite your favorite people for great food and fun! </p>
            </div>
        </div>

        <c:url var="createEvent" value="/createEvent"/>
        <form:form action="${createEvent}" method="POST">

            <form method="POST" action="${createEvent}"/>
            <div class="item">
                <p>Event Name</p>
                <div class="eventName">
                    <input type="text" name="eventName" id="eventName"/>
                </div>
            </div>
            <%--            &lt;%&ndash;            <div class="item">&ndash;%&gt;--%>
            <%--            &lt;%&ndash;                <p>Event Location</p>&ndash;%&gt;--%>
            <%--            &lt;%&ndash;                <div class="event-location-item">&ndash;%&gt;--%>
            <%--            &lt;%&ndash;                    <input type="text" name="name"/>&ndash;%&gt;--%>
            <%--            &lt;%&ndash;                </div>&ndash;%&gt;--%>
            <%--    </div>--%>
            <%--            <div class="item">--%>
            <%--                <p>Email</p>--%>
            <%--                <input type="email" name="email"/>--%>
            <%--            </div>--%>
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
            <%--            <div class="item">--%>
            <%--                <p>Invitees</p>--%>
            <%--                <textarea rows="3"></textarea>--%>
            <%--            </div>--%>
            <div class="btn-block">
                <button type="submit" id="submit-btn" href="/">Send</button>
            </div>
            </form>
        </form:form>


    </div>
</div>
<%@ include file="common/footer.jspf" %>