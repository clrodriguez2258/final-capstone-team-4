<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>

<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>
<br>
<br>
<br>
<div class="searchbar1">
    <form for="restaurantSearch" action="restaurants" method="POST">
        <label for="restaurantSearch" style="font-size: 30px;">Restaurant Search</label><br>
        <div class="btn-group">
            <label for="searchCity"> Search by city</label>
            <input type="radio" id="searchCity" class="searchCity" name="searchRadio" value="city">
            <br>
            <label for="searchZip"> Search by zipcode</label>
            <input type="radio" id="searchZip" class="searchZip" name="searchRadio" value="zip" checked>
            <input type="text" id="restaurantSearch" name="restaurantSearch" placeholder="Enter a city or zip code"
                   style="width: 100%;">
            <button type="submit">Search</button>
        </div>
    </form>
</div>

<%--                       Code used after database works                         --%>
<div id=" masonry-page">
    <div id="grid" >
        <c:forEach var="restaurant" items="${ restaurants }">
        <c:choose>
            <c:when test="${ restaurant.isOpen() }">
                <c:set var="isOpen" value="Open Now"/>
                <c:set var="openCloseColor" value="green"/>
            </c:when>
            <c:otherwise>
                <c:set var="isOpen" value="Closed"/>
                <c:set var="openCloseColor" value="red"/>
            </c:otherwise>
        </c:choose>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img class="displayRestaurantImage" src="<c:url value="/img/${ restaurant.image }"/>"
                         alt="Restaurant Logo"/>
                    <div class="restaurantInfo">
                        <h3>${ restaurant.restaurantName }</h3>
                        <p>Cuisine: ${ restaurant.typeOfEstablishment }</p>
                        <p style="color: ${ openCloseColor };"><strong>${ isOpen }</strong></p>
                        <p>Hours: ${ restaurant.openTime }AM - ${ restaurant.closeTime.minusHours(12) }PM</p>
                        <p>
                            Address: ${ restaurant.street } ${ restaurant.city }, ${ restaurant.state } ${ restaurant.zipCode }</p>
                        <span>
                    <h5>Phone Number: ${ restaurant.phoneNumber }</h5>
                    <button type="button" style="width: 45%">Call to Order</button>
                </span>
                        <img id="pizzaSliceImage" src="img/pizzaSlice${ restaurant.rating }.png" alt="Pizza Slice Rating">
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
<%@ include file="common/footer.jspf" %>