<%@ include file = "common/header.jspf" %>


<%--    <title>Restaurant Reservation Form</title>--%>
<%--    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">--%>
<%--    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">--%>

<div class="testbox">
    <div action="/">
        <div class="banner">
            <h1>Where To Eat - Event Sign-Up</h1>
        </div>
        <div class="item">
            <p>Event Name</p>
            <div class="event-name-item">
                <input type="text" name="name"/>
            </div>
        </div>
        <div class="item">
            <p>Email</p>
            <input type="email" name="email"/>
        </div>
        <div class="item">
            <p>Event Date</p>
            <input type="date" name="event-date" required/>
            <i class="fas fa-calendar-alt"></i>
        </div>
        <div class="item">
            <p>Event Time</p>
            <input type="time" name="event-time" required/>
        </div>
        <div class="item">
            <p>Invitees</p>
            <textarea rows="3"></textarea>
        </div>
        <div class="pref-header">
            <h2>Restaurant Preferences</h2>
        </div>
        <div class="item">
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
        <div class="item">
            <p>Price Range</p>
            <select name="price" id="price">
                <option value="null">Any</option>
                <option value="1"> Budget friendly</option>
                <option value="2"> Moderate</option>
                <option value="3">Mid</option>
                <option value="4">High</option>
            </select>
        </div>
        <div class="item">
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
        <div class="item">
            <p>Pet-friendly</p>
            <select name="Pet" id="Pet">
                <option value="null">Any</option>
                <option value="true">Yes</option>
                <option value="false">No</option>

            </select>
        </div>
        <div class="btn-block">
            <button type="submit" id="submit-btn" href="/">Send</button>
        </div>
    </form>
</div>


<%@ include file = "common/footer.jspf" %>