$(function(){
	switch (menu){
		case 'Home':
			$('#home').addClass('active');
			break;
		case 'All Products':
			$('#products').addClass('active');
			break;
		case 'Your Shopping Cart':
			$('#cart').addClass('active');
			break;
		case 'About Us':
			$('#about').addClass('active');
			break;
		case 'Contact Us':
			$('#contact').addClass('active');
			break;
		default:
			$('#products').addClass('active');
			$('#id_'+menu).addClass('active');
			break;
	}
	
	//dataTable js
	var $table = $('#productsTable');
	if ($table.length) {
		var jsonUrl = '';
		if (window.categoryId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products';
		}
		else {
			jsonUrl = window.contextRoot + '/json/data/category/'+ window.categoryId +'/products';
		}
		
		$table.DataTable({
			lengthMenu: [[6,12,36,-1], ['6', '12', '36', 'ALL']],
			pageLength: 6,
			ajax: {
				url: jsonUrl,
				dataSrc: ''
			},
			columns: [
				
					{
						data: 'code',
						mRender: function(data, type, row){
							image = '<img src="' + window.contextRoot + '/resources/images/' + data + '.jpg" class="col-xl-12 dataTableImg"/>';
							
							return image;
						}
					},
					{
						data: 'name'
					},
					{
						data: 'brand'
					},
					{
						data: 'unitPrice',
						mRender: function(data, type, row){
							return data + ' &#8363;'
						}
					},
					{
						data: 'quantity',
						mRender: function(data, type, row){
							if (data < 1) {
								return '<span style="color:red">Out of stock!</span>';
							}
							return data;
						}
					},
					{
						data: 'id',
						mRender: function(data, type, row){
							var str = '';
							str += '<a href="' + window.contextRoot + '/show/product/' + data + '" class="btn btn-primary">View</a> &nbsp;';
							
							if (row.quantity < 1){
								str += '<a href="javascript:void(0)" class="btn btn-success disabled">Add to Cart</a>';
							}
							else {
								str += '<a href="' + window.contextRoot + '/cart/add/product/' + data + '" class="btn btn-success">Add to Cart</a>';
							}
							
							return str;
						}
					}
				
					]
		});
		
	}
	
});