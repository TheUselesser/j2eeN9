<div class="container">

      <div class="row">

        <div class="col-lg-3">

          <!-- sidebar -->
          <%@include file="./shared/sidebar.jsp" %>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="${images}/banner3.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="${images}/banner2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="${images}/banner4.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>


          <div class="row">
<!-- 1 -->
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/product/${product1.id}"><img class="card-img-top" src="${images}/${product1.code}.jpg" alt="${product1.name} image"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/product/${product1.id}">${product1.name}</a>
                  </h4>
                  <h5>&#36; ${product1.unitPrice}</h5>
                  <p class="card-text">${product1.description}</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>
<!-- 2 -->
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/product/${product2.id}"><img class="card-img-top" src="${images}/${product2.code}.jpg" alt="${product2.name} image"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/product/${product2.id}">${product2.name}</a>
                  </h4>
                  <h5>&#36; ${product2.unitPrice}</h5>
                  <p class="card-text">${product1.description}</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>
<!-- 3 -->
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/product/${product3.id}"><img class="card-img-top" src="${images}/${product3.code}.jpg" alt="${product4.name} image"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/product/${product3.id}">${product3.name}</a>
                  </h4>
                  <h5>&#36; ${product3.unitPrice}</h5>
                  <p class="card-text">${product3.description}</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>
<!-- 4 -->
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/product/${product4.id}"><img class="card-img-top" src="${images}/${product4.code}.jpg" alt="${product4.name} image"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/product/${product4.id}">${product4.name}</a>
                  </h4>
                  <h5>&#36; ${product4.unitPrice}</h5>
                  <p class="card-text">${product4.description}</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>
<!-- 5 -->
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/product/${product5.id}"><img class="card-img-top" src="${images}/${product5.code}.jpg" alt="${product5.name} image"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/product/${product5.id}">${product5.name}</a>
                  </h4>
                  <h5>&#36; ${product5.unitPrice}</h5>
                  <p class="card-text">${product5.description}</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>
<!-- 6 -->
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/product/${product6.id}"><img class="card-img-top" src="${images}/${product6.code}.jpg" alt="${product6.name} image"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/product/${product6.id}">${product6.name}</a>
                  </h4>
                  <h5>&#36; ${product6.unitPrice}</h5>
                  <p class="card-text">${product6.description}</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->