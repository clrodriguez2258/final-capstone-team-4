<%@ include file="common/header.jspf" %>
<c:url var="eventLinkExpired" value="/css/eventInvite.css"/>
<link rel="stylesheet" href="${ eventLinkExpired }"/>

<div class="linkExpired">
    <div class="bannerPageExpired">
        <h1 class="oneandhalf">Decision date has passed, you are no longer able to submit your restaurant choice</h1>
    </div>
</div>
<div class="linkExpired">
    <c:url var="hangryLogo" value="/img/animatedLogoShadow.png"/>
    <img class="decisionLogo" src="${hangryLogo}"/>
</div>
<%@ include file="common/footer.jspf" %>