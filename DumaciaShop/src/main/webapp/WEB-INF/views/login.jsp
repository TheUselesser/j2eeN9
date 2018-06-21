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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Dumacia Shop - ${title}</title>


<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- DataTables css -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Bootswatch.com --- Simplex - Mini and minimalist -->
<link href="${css}/bootswatch-style.css" rel="stylesheet">

<!-- Colorful css -->
<link href="${css}/colorful.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/styles.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
		<div class="container">
			<a class="navbar-brand" href="${contextRoot}/home">Dumacia Shop</a>
		</div>
	</nav>

	<div class="container">

		<div class="row">

			<div class="col-lg-12">
				<h1 class="my-4">Login</h1>
				<hr>
				<div class="col-lg-4" style="margin: 0 auto">
					<div class="panel panel-default">
						<div class="panel-body">
							<form action="${contextRoot}/login" method="post" id="loginForm">
								<fieldset>
									<div class="form-group">
										<input id="username" class="form-control" placeholder="E-mail" name="username"
											type=text autofocus>
									</div>
									<div class="form-group">
										<input id="password" class="form-control" placeholder="Password"
											name="password" type="password" value="">
									</div>
									
								<c:if test="${not empty errorMessage}">
									<p style="color:red">${errorMessage}</p>
								</c:if>
									
									<button id="loginButton" class="btn btn-outline-secondary btn-block">Login</button>
									<p>
										New Member? <a href="${contextRoot}/signup" class="disabled">Sign
											up</a>
									</p>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>