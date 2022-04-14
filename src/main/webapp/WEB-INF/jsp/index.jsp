<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>

<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>

<br>
<br>
<br>
<div class="welcome">
    <h1>Welcome to HANGRY!</h1>
    <p>Your solution to quick restaurant decisions</p>
</div>
<div class="searchbar1">
    <form for="restaurantSearch" action="restaurants" method="POST">
        <label for="restaurantSearch" style="font-size: 30px;">Restaurant Search</label><br>
        <div class="btn-group">
            <label for="searchCity"> Search by city</label>
            <input type="radio" id="searchCity" class="searchCity" name="searchRadio" value="city">
            <br>
            <label for="searchZip"> Search by zipcode</label>
            <input type="radio" id="searchZip" class="searchZip" name="searchRadio" value="zip" checked>
            <br/>
            <input type="text" id="restaurantSearch" name="restaurantSearch" placeholder="Enter a city or zip code"
                   style="width: 60%;" required>
            <button id="submit-btn" type="submit" name="submit">Search</button>
        </div>
    </form>
</div>
<div class="hompageImg">
    <c:url var="image1" value="/img/mandarin.jpg"/>
    <img src="${image1}" height="70%" width="100%"/>
</div>

<%@ include file="common/footer.jspf" %>
