<section class="shop_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Latest Products
        </h2>
      </div>
      <div class="row">

      @foreach($product as $products)

        <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
            <a href="{{url('products_details',$products->id)}}">
              <div class="img-box">
                <img src="products/{{$products->image}}" alt="">
              </div>
              <div class="detail-box">
                <h6>{{$products->title}}</h6>
                <h6>
                  Price
                  <span>
                    Rs.{{$products->price}}
                  </span>
                </h6>
              </div>

              <div class="p-1">
                <a class="btn btn-success" href="{{url('add_cart',$products->id)}}">Add to Cart</a>
              </div>

              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>

        @endforeach

        </div>
      </div>
      
    </div>
  </section>