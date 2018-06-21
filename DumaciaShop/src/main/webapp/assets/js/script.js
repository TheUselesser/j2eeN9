$(function() {
	switch (menu) {
	case 'All Products':
		$('#products').addClass('active');
		break;
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'Products':
		$('#products').addClass('active');
		$('#id_' + menuitem).addClass('active');
		console.log(menuitem);
		break;
	case pdtitle:
		$('#products').addClass('active');
		$('#id_' + menu).addClass('active');
		break;
	case 'Shopping Cart':
		$('#userBtn').addClass('active');
		break;
	default:
		break;
	}

	// dataTable js
	var $table = $('#productsTable');
	if ($table.length) {
		var jsonUrl = '';
		if (window.categoryId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products';
		} else {
			jsonUrl = window.contextRoot + '/json/data/category/'
					+ window.categoryId + '/products';
		}

		$table
				.DataTable({
					lengthMenu : [ [ 6, 12, 36, -1 ],
							[ '6', '12', '36', 'ALL' ] ],
					pageLength : 6,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [

							{
								data : 'code',
								mRender : function(data, type, row) {
									image = '<img src="'
											+ window.contextRoot
											+ '/resources/images/'
											+ data
											+ '.jpg" class="col-xl-12 dataTableImg"/>';

									return image;
								}
							},
							{
								data : 'name'
							},
							{
								data : 'brand'
							},
							{
								data : 'unitPrice',
								mRender : function(data, type, row) {
									return data + ' &#8363;'
								}
							},
							{
								data : 'quantity',
								mRender : function(data, type, row) {
									if (data < 1) {
										return '<span style="color:red">Out of stock!</span>';
									}
									return data;
								}
							},
							{
								data : 'id',
								mRender : function(data, type, row) {
									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/show/product/'
											+ data
											+ '" class="btn btn-outline-primary m-2"><i class="fa fa-eye" aria-hidden="true"></i></a> &nbsp;';

									if (row.quantity < 1) {
										str += '<a href="javascript:void(0)" class="btn btn-outline-secondary m-2 disabled"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>';
									} else {
										str += '<a href="'
												+ window.contextRoot
												+ '/cart/add/product/'
												+ data
												+ '" class="btn btn-outline-secondary m-2"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>';
									}

									return str;
								}
							}

					]
				});
	}

	/* validating the loginform */

	// validating the product form element
	// fetch the form element
	$loginForm = $('#loginForm');

	if ($loginForm.length) {

		$loginForm.validate({
			rules : {
				username : {
					required : true,
					email : true

				},
				password : {
					required : true
				}
			},
			messages : {
				username : {
					required : 'Please enter your username!',
					email : 'Please enter a valid email address!'
				},
				password : {
					required : 'Please enter your password!'
				}
			},
			errorElement : "em",
			errorPlacement : function(error, element) {
				// Add the 'help-block' class to the error element
				error.addClass("help-block");

				// add the error label after the input element
				error.insertAfter(element);
			}
		}

		);

	}
});