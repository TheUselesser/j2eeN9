<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css"/>
<spring:url var="images" value="/resources/images"/>
<spring:url var="js" value="/resources/js"/>
    
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dumacia Shop - ${title}</title>
    
    <script>
    	window.menu = '${title}';
	
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <!-- Bootswatch Shades Of Gunmetal Gray -->
    <link href="${css}/bootswatch-slate-shades-of-gunmetal-gray.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/styles.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <%@include file="./shared/navbar.jsp"%>

    <!-- Page Content -->
    <c:choose>
	    <c:when test="${mappingHome == true}">
	    	<%@include file="home.jsp" %>
	    </c:when>
	    <c:when test="${mappingAbout == true}">
	    	<%@include file="about.jsp" %>
	    </c:when>
	    <c:when test="${mappingProducts == true}">
	    	<%@include file="home.jsp" %>
	    </c:when>
	    <c:when test="${mappingContact == true}">
	    	<%@include file="contact.jsp" %>
	    </c:when>
	    <c:otherwise>
	    	<!--
	    	<div class="row" style="padding-top: 36px">
	    		<div class="col-lg-3">
	    			
	    		</div>
	    		<div class="col-lg-9">
	    			Hihihi
	    		</div>
	    	</div>
	    	-->
	    </c:otherwise>
    </c:choose>

    <!-- Footer -->
    <%@include file="./shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.min.js"></script>
    <script src="${js}/bootstrap.bundle.min.js"></script>
    <!-- My JavaScript -->
    <script src="${js}/script.js"></script>

  </body>

</html>
