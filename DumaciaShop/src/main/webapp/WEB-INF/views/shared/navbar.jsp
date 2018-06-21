<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
     <div class="container">
       <a class="navbar-brand" href="${contextRoot}/home">Dumacia Shop</a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarResponsive">
         <ul class="navbar-nav mr-auto">
           <li id="products" class="nav-item">
             <a class="nav-link" href="${contextRoot}/show/all/products">Products</a>
           </li>
           <li id="about" class="nav-item">
             <a class="nav-link" href="${contextRoot}/about">About</a>
           </li>
           <li id="contact" class="nav-item">
             <a class="nav-link" href="${contextRoot}/contact">Contact</a>
           </li>
         </ul>
       
         <ul class="navbar-nav ml-auto">
         	<security:authorize access="isAnonymous()">
         	<li id="signup" class="nav-item">
         		<a class="nav-link href="${contextRoot}/signup">Sign up</a>
         	</li>
         	<li id="login" class="nav-item">
         		<a class="nav-link" href="${contextRoot}/login">Login</a>
         	</li>
         	</security:authorize>
         	
         	<security:authorize access="isAuthenticated()">
         	<li id="login" class="nav-item dropdown">
         		<a id="dropdownMenu1" data-toggle="dropdown" class="nav-link btn btn-default dropdown-toggle" href="javascript:void(0)">
         			${userModel.fullName}
         			<span class="caret"></span>
         		</a>
         		
         		<ul class="dropdown-menu">
         			<li id="cart">
		            	<a class="btn" href="${contextRoot}/cart/view">
		            		<span>Cart</span>
		            		<span class="badge">${userModel.cart.cartlines}</span>
		            	</a>
         			</li>
         			
         			<li id="logout" class="border-top">
         				<a class="btn" href="${contextRoot}/logout">Logout</a>
         			</li>
         		</ul>
         	</li>
         	</security:authorize>
         	
         </ul>
       </div>
     </div>
          
</nav>

<div class="page-header">I'm cheating on this part</div>