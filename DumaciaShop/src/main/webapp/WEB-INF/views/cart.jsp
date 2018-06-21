<div class="container">

	<h1 class="my-4">Shopping Cart</h1>

	<c:if test="${not empty message}">

		<div class="alert alert-infor">

			<h3 class="text-center">${message}</h3>

		</div>

	</c:if>

	<c:choose>

		<c:when test="${not empty cartLines}">

			<table id="cart" class="table table-hover table-condensed">
				<thead>
					<tr>
						<th style="width: 50%">Product</th>
						<th style="width: 10%">Price</th>
						<th style="width: 8%">Quantity</th>
						<th style="width: 22%" class="text-center">Subtotal</th>
						<th style="width: 10%"></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${cartLines}" var="cartLine">

						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-lg-4 col-sm-2 hidden-xs">
										<img src="${images}/${cartLine.product.code}.jpg"
											alt="${cartLine.product.name} image" style="width: 100%" />
									</div>
									<div class="col-lg-8 col-sm-10">
										<h4 class="nomargin">
											${cartLine.product.name}
											<c:if test="${cartLine.available == false}">
												<strong class="unavailable">(Not Available)</strong>
											</c:if>
										</h4>
										<p>Brand - ${cartLine.product.brand}</p>
										<p>Description - ${cartLine.product.description}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">&#36; ${cartLine.buyingPrice}</td>
							<td data-th="Quantity"><input type="number"
								id="count_${cartLine.id}" min="1" max="3"
								class="form-control text-center"
								value="${cartLine.productCount}"></td>
							<td data-th="Subtotal" class="text-center">&#36;
								${cartLine.total}</td>
							<td class="actions" data-th="">
								<!--<c:if test="${cartLine.available == true}">
									 <button type="button" name="refreshCart"
										class="btn btn-info btn-sm" value="${cartLine.id}">
										<i class="fa fa-refresh" aria-hidden="true"> </i>
									</button> </c:if>--> <a
								href="${contextRoot}/cart/${cartLine.id}/update?count=${cartLine.productCount}"
								class="btn btn-danger btn-sm"><i class="fa fa-refresh"
									aria-hidden="true"> </i> </a> <a
								href="${contextRoot}/cart/${cartLine.id}/delete"
								class="btn btn-danger btn-sm"><i class="fa fa-trash-0"
									aria-hidden="true"> </i></a>
							</td>
						</tr>

					</c:forEach>


				</tbody>
				<tfoot>
					<tr class="visible-xs">
						<td class="text-center"><strong>Total &#36;
								${userModel.cart.grandTotal}</strong></td>
					</tr>
					<tr>
						<td><a href="${contextRoot}/show/all/products"
							class="btn btn-outline-primary m-2"><i
								class="fa fa-angle-left"></i> Continue Shopping</a></td>
						<td colspan="2" class="hidden-xs"></td>
						<td class="hidden-xs text-center"><strong>Total
								&#36; ${userModel.cart.grandTotal}</strong></td>
						<td><a href="#" class="btn btn-outline-secondary m-2">Checkout
								<i class="fa fa-angle-right"></i>
						</a></td>
					</tr>
				</tfoot>
			</table>

		</c:when>
		<c:otherwise>

			<div class="jumbotron">
				<div class="center">
					<strong>Your cart is empty!</strong>
				</div>
			</div>

		</c:otherwise>

	</c:choose>

</div>