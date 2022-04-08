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
            <div class="item">
                <p>Event Location</p>
                <div class="event-location-item">
                    <input type="text" name="name"/>
                </div>
            </div>
            <div class="item">
                <p>Email</p>
                <input type="email" name="email"/>
            </div>
            <div class="eventDate">
                <p>Event Date</p>
                <input type="date" name="eventDate" id="eventDate"> required/>
                <i class="fas fa-calendar-alt"></i>
            </div>
            <div class="eventTime">
                <p>Event Time</p>
                <input type="time" name="eventTime" id="eventTime"> required/>
            </div>
            <div class="decisionDate">
                <p>Decision due date & time</p>
                <span>
                <input type="date" name="decisionDate" id="decisionDate"> required/>
                <input type="datetime-local" name="decision-time" value="24:00">required/>
                    <label for="startTime">Start time: </label>
  <input type="time" id="startTime">
  <p>
    Value of the <code>time</code> input: <code>
            "<span id="value">n/a</span>"</code>.
  </p>
                </span>
            </div>
            <div class="item">
                <p>Invitees</p>
                <textarea rows="3"></textarea>
            </div>
            <div class="btn-block">
                <button type="submit" id="submit-btn" href="/">Send</button>
            </div>
            </form>
        </form:form>

        <div class="pref-header">
            <h2>Search for and add restaurants</h2>
        </div>

        <div class="addToInvite">
            <input type="radio" id="city" name="location" value="City">
            <label for="city">City</label><br>
            <input type="radio" id="zip" name="location" value="Zip code">
            <label for="zip">Zip code</label>
            <p><input type="text" name="location" id="locationValue" maxlength="255"></p>
        </div>
        <div class="addToInvite">
            <p>Cuisine</p>
            <select name="cuisine" id="cuisine">
                <option value="null">Any</option>
                <option value="American">American</option>
                <option value="Barbecue">Barbecue</option>
                <option value="Pizza">Pizza</option>
                <option value="Chinese">Chinese</option>
                <option value="Italian">Italian</option>
                <option value="Mexican">Mexican</option>
                <option value="Southwestern">Southwestern</option>
                <option value="Seafood">Seafood</option>
                <option value="French">French</option>
                <option value="Indian">Indian</option>
                <option value="Japanese">Japanese</option>
                <option value="Sushi">Sushi</option>
                <option value="Steak">Steak</option>
                <option value="Thai">Thai</option>
                <option value="Fast Food">Fast Food</option>
                <option value="Cantonese">Cantonese</option>
                <option value="Diner">Diner</option>
                <option value="Mediterranean">Mediterranean</option>
                <option value="Vegan">Vegan</option>
                <option value="Vegetarian">Vegetarian</option>
                <option value="Gluten-Free">Gluten-Free</option>
            </select>
        </div>
        <div class="addToInvite">
            <p>Price Range</p>
            <select name="price" id="price">
                <option value="null">Any</option>
                <option value="1"> Budget friendly</option>
                <option value="2"> Moderate</option>
                <option value="3">Mid</option>
                <option value="4">High</option>
            </select>
        </div>
        <div class="addToInvite">
            <p>Atmosphere</p>
            <select name="Atmosphere" id="Atmosphere">
                <option value="null">Any</option>
                <option value="Casual">Casual</option>
                <option value="Contemporary Casual"> Contemporary Casual</option>
                <option value="Family style"> Family Style</option>
                <option value="Fine Dining">Fine Dining</option>
                <option value="Food Truck">Food Truck</option>
            </select>
        </div>
        <div>
            <p>Pet-friendly</p>
            <input type="checkbox" id="pets" name="pets" value="true">
        </div>
        <button type="submit">Search</button>
    </div>
</div>


<%@ include file="common/footer.jspf" %>