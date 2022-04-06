<%@ include file="common/header.jspf" %>

<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>

<%--<div class="grid">--%>
<div class="searchbar1">
<form for="restaurantSearch">
    <label for="restaurantSearch" style="font-size: 30px;">Restaurant Search</label><br>
    <input type="text" id="restaurantSearch" placeholder="Enter Restaurant Name" style="width: 100%;">
</form>
</div>
<c:forEach var="count" begin="1" end="10">
    <div class="row">
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img class="displayRestaurantTile" src="<c:url value="/img/chipotle.jpg"/>" alt="Restaurant Logo"/>
                <div class="caption">
                    <h3>Chipotle</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua.</p>
                    <p>Open</p>
                    <p>Hours: 10:00AM - 10:00PM</p>
                    <p>$$</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img class="displayRestaurantTile" src="<c:url value="/img/pokebros.png"/>" alt="Restaurant Logo"/>
                <div class="caption">
                    <h3>Poke Bros</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua.</p>
                    <p>Open</p>
                    <p>Hours: 11:00AM - 11:00PM</p>
                    <p>$$$</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img class="displayRestaurantTile" src="<c:url value="/img/seasonspizza.jpg"/>" alt="Restaurant Logo"/>
                <div class="caption">
                    <h3>Seasons Pizza</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua.</p>
                    <p>Open</p>
                    <p>Hours: 2:00PM - 1:00AM</p>
                    <p>$$$</p>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
<%--</div>--%>


<%--                       Code used after database works                          --%>
<%--<div id="grid" class="main-content ">--%>
<%--    <c:forEach var="restaurants" items="${restaurant}">--%>
<%--      <ul>--%>
<%--          <li>${restaurants.imageName}</li>--%>
<%--      </ul>--%>
<%--    </c:forEach>--%>
<%--</div>--%>


<%--                       Code used after database works                          --%>
<%@ include file="common/footer.jspf" %>