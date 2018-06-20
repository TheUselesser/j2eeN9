
<h3 class="my-4">Categories</h3>

<div class="list-group">
	<c:forEach var="category" items="${categories}">
		<a href="${contextRoot}/show/category/${category.id}/" id="id_${category.name}" class="list-group-item">${category.name}</a>
	</c:forEach>
</div>