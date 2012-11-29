<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<wp:headInfo type="JS" info="entando-misc-jquery/jquery-1.7.2.min.js" />
<wp:headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />

<wp:currentPage param="code" var="currentPageCode" />
<c:set var="currentPageCode" value="${currentPageCode}" />

<ul class="nav">
<wp:nav var="page">

<c:if test="${previousPage.code != null}">
	<c:set var="previousLevel" value="${previousPage.level}" />
	<c:set var="level" value="${page.level}" />
	<%@ include file="entando-showlet-navigation_bar_include.jsp" %>
</c:if>

	<c:set var="previousPage" value="${page}" />
</wp:nav>

	<c:set var="previousLevel" value="${previousPage.level}" />
	<c:set var="level" value="${0}"  /> <%-- we are out, level is 0 --%>
	<%@ include file="entando-showlet-navigation_bar_include.jsp" %>

	<c:if test="${previousLevel >= 2}">
		<%--
		previousLevel - 2 :
			1 because we're starting from 0,
			1 because we skipped 1 cycle in this whole algorithm and previousLevel did not get the last update
		--%>
		<c:set var="endHere" value="${previousLevel - 2}" />
	</c:if>

	<c:if test="${previousLevel < 2}">
		<c:set var="endHere" value="${previousLevel}" />
	</c:if>

	<c:if test="${endHere != 0}">
		<c:forEach begin="${0}" end="${endHere}"></ul></li></c:forEach>
	</c:if>

</ul>