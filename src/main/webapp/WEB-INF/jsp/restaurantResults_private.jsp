<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>

<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>
<br>
<br>
<br>
<form for="restaurantSearch" action="restaurantResults" method="POST">
    <div class="searchbar1">
        <div class="btn-group">
            <button id="submit-btn" type="submit" name="submit" formaction="restaurantResults">Create Event</button>
        </div>
    </div>

    <%--                       Code used after database works                         --%>
    <div id=" masonry-page">
        <div id="grid">
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
                                <h3><strong>${ restaurant.restaurantName }</strong></h3>
                                <p><strong>Cuisine: </strong>${ restaurant.typeOfEstablishment }</p>
                                <p style="color: ${ openCloseColor };"><strong>${ isOpen }</strong></p>
                                <p><strong>Hours: </strong>${ restaurant.openTime }AM - ${ restaurant.closeTime.minusHours(12) }PM
                                </p>
                                <p>
                                    <strong>Address:</strong> ${ restaurant.street } ${ restaurant.city }, ${ restaurant.state } ${ restaurant.zipCode }
                                </p>
                                <span>
                            <h5><strong>Call To Order:&nbsp;&nbsp;&nbsp;</strong><a
                                    href="tel:${ restaurant.phoneNumber }"
                                    style="color: red; font-size: 24px;">&#9742;</a></h5>
                                </span>
                                <div class="rating">
                                    <p><strong>Rating: </strong>
                                        <c:url var="pizzaSliceImage" value="/img/pizzaSlice.png"/>
                                        <c:forEach begin="1" end="${ restaurant.rating }" var="pizzaCount">
                                    <span><img id="pizzaSliceImage" src="${ pizzaSliceImage }"
                                               alt="Pizza Slice Rating"></span>
                                        </c:forEach>
                                    </p>
                                </div>
                                <label for="Restaurant${ restaurant.restaurantId }">Add Restaurant to Event: </label>
                                <input type="checkbox" id="restaurant${ restaurant.restaurantId }"
                                       name="restaurantCheckbox" value="${ restaurant.restaurantId }"/>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</form>
<%@ include file="common/footer.jspf" %>