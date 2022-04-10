<%@ include file="common/header.jspf" %>

<c:url var="cssUrl" value="/css/site.css"/>
<link rel="stylesheet" href="${cssUrl}"/>
<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>

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
                        <span>
                        <button type="button" class="btn btn-default btn-sm"
                                style="margin-top: 5px; background: lightgreen; display: inline-block; width: 49%"><span
                                class="glyphicon glyphicon-ok"
                                style="color: darkgreen; font-size: 150%;"></span></button>
                        <button type="button" class="btn btn-default btn-sm"
                                style="margin-top: 5px; background: lightcoral; display: inline-block; width: 49%"><span
                                class="glyphicon glyphicon-remove"
                                style="color: darkred; font-size: 150%;"></span></button>
                        </span>
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
                        <img id="pizzaSliceImage" src="img/pizzaSlice${ restaurant.rating }.png"
                             alt="Pizza Slice Rating">
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>
<%@ include file="common/footer.jspf" %>
