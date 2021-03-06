<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
	A 8-year-long effort, lovely brought to you by:

	- Marco Diana <m.diana@entando.com>
	- Eugenio Santoboni <e.santoboni@entando.com>
	- William Ghelfi <w.ghelfi@@entando.com>
	- Andrea Dessì <a.dessi@agiletec.it>
--%>

<wp:headInfo type="JS" info="entando-misc-jquery/jquery-1.9.1.min.js" />
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
	<c:if test="${previousLevel != 0}">
		<c:forEach begin="${0}" end="${previousLevel -1}"></ul></li></c:forEach>
	</c:if>

</ul>