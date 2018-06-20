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
				
					<c:if test="${mappingAllProducts == true}">
					
					<script>
						window.categoryId = '';
					</script>
					
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item active">Products</li>
					</ol>
					</c:if>
					
					<c:if test="${mappingCategoryProducts == true}">
					
					<script>
						window.categoryId = '${category.id}';
					</script>
					
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item active">Category</li>
						<li class="breadcrumb-item active">${category.name}</li>
					</ol>
					</c:if>
					
				</div>
			</div>
			
			
			
			<!-- products -->
			<div class="row">
			
				<div class="col-lg-12">
					
					<table id="productsTable" class="table table-bordered">
						
						<thead>
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Price</th>
							<th>Avaiable</th>
							<th></th>
						</thead>
						
						
					</table>
					
				</div>
			
			</div>
			
		</div>
		
		
		
	</div>

</div>