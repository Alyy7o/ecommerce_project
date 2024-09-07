<!DOCTYPE html>
<html>
  <head> 
    @include('admin.css')

    <style>
        h2{
            display: inline-block;
            width: 200px;
            padding: 20px;
        }
        label{
            display: inline-block;
            width: 200px;
            padding: 20px;
            color: white;
        }
        textarea{
            height: 110px;
            width: 450px;
        }
        input[type="text"]{
            height: 40px;
            width: 300px;
        }
    </style>
    
</head>
<body>
      @include('admin.header')
      
      <!-- Sidebar Navigation start-->
      @include('admin.sidebar')
      
      <!-- Sidebar Navigation end-->
      
      <div class="page-content">
          <div class="page-header">
              <div class="container-fluid">

              <h2 style="color: white;">Edit Product</h2>

              <div class="div_deg d-flex justify-content-center align-item-center">

                <form action="{{url('edit_product',$data->id)}}" method="post" enctype="multipart/form-data">

                @csrf

                <div>
                        <label for="">Title</label>
                        <input type="text" name="title" value="{{$data->title}}">
                </div>
                
                <div>
                    <label for="">Description</label>
                    <textarea col name="description" id="description">{{$data->description}}</textarea>
                </div>

                <div>
                        <label for="">Category</label>
                        <select name="category">
                            <option value="{{$data->category}}">{{$data->category}}</option>

                            @foreach($category as $category)
                            <option value="{{$category->category_name}}">{{$category->category_name}}</option>
                            @endforeach
                        </select>
                </div>
                
                <div>
                        <label for="">Price</label>
                        <input type="number" name="price" value="{{$data->price}}">
                </div>

                <div>
                        <label for="">Quantity</label>
                        <input type="number" name="quantity" value="{{$data->quantity}}">
                </div>

                <div>
                    <label for="">Current Image</label>
                    <img width="150" src="/products/{{$data->image}}" alt="">
                </div>
                
                <div>
                    <label for="">New Image</label>
                    <input type="file" name="image">
                </div>

                <div>
                    <input class="btn btn-success" type="submit" value="Update Product">
                </div>

                </form>
              </div>


        
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="{{asset('admincss/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('admincss/vendor/popper.js/umd/popper.min.js')}}"> </script>
    <script src="{{asset('admincss/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('admincss/vendor/jquery.cookie/jquery.cookie.js')}}"> </script>
    <script src="{{asset('admincss/vendor/chart.js/Chart.min.js')}}"></script>
    <script src="{{asset('admincss/vendor/jquery-validation/jquery.validate.min.js')}}"></script>
    <script src="{{asset('admincss/js/charts-home.js')}}"></script>
    <script src="{{asset('admincss/js/front.js')}}"></script>
  </body>
</html>