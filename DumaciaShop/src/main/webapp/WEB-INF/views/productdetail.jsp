<script>
	window.pdtitle = '${title}';
</script>

<div class="container">

	<div class="row">
		
		<!-- sidebar -->
		<div class="col-lg-3">
			<%@include file="./shared/sidebar.jsp" %>
		</div>
		
		<!-- content -->
		<div class="col-lg-9">
		
			<!-- breadcrumb -->
			<div class="row">
				<div class="col-lg-12">
					
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item active">Category</li>
						<li class="breadcrumb-item active">${category.name}</li>
						<li class="breadcrumb-item"><a href="${contextRoot}/show/all/products">Products</a></li>
						<li class="breadcrumb-item active">${product.name}</li>
					</ol>
					
				</div>
			</div>
			
			
			
			<!-- product detail -->
			<div class="row">
			
				<!-- Image -->
				<div class="col-xs-12 col-sm-4">
					
					<div class="">
						<img src="${images}/${product.code}.jpg" class="img-fluid"/>
					</div>
					
				</div>
				
				<!-- Details -->
				<div class="col-xs-12 col-sm-8">
					
					<h3>${product.name}</h3>
					<hr/>
					
					<p>${product.description }</p>
					<hr/>
					
					<h4>Price: <strong>&#36; ${product.unitPrice}</strong></h4>
					<hr/>
					
					<c:choose>
						<c:when test="${product.quantity < 1}">
							<h6>Avaiable: <span style="color:red">Out of stock!</span></h6>
							<a href="javascript:void(0)" class="btn btn-outline-secondary m-2 disabled"><strike><i class="fa fa-cart-plus" aria-hidden="true"> Add to Cart</i></strike></a>
						</c:when>
						<c:otherwise>
							<h6>Avaiable: ${product.quantity}</h6>
							<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-outline-secondary m-2"><i class="fa fa-cart-plus" aria-hidden="true"> Add to Cart</i></a>
						</c:otherwise>
					</c:choose>
					
					
					<a href="${contextRoot}/show/all/products" class="btn btn-outline-primary m-2">Continue Shopping</a>
				</div>
			
			</div>
			
		</div>
		
		
		
	</div>

</div>