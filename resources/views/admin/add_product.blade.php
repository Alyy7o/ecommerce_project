<!DOCTYPE html>
<html>
  <head> 
    @include('admin.css')
    <style>
        .div_deg{
            display: flex; 
            justify-content: center; 
            align-items: center;
            margin-top: 60px;
        }
        label{
            display: inline-block;
            width: 200px;
            font-size: 18px !important;
            color: white !important;
        }
        input[type='text']{
            width: 350px;
            height: 50px;
        }
        textarea{
            height: 80px;
            width: 450px
        }
        .input_deg{
            padding: 15px;
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

              <h1  style="color: white">Add Product</h1>

              <div class="div_deg">

                <form action="{{url('upload_product')}}" method="post" enctype="multipart/form-data">

                @csrf
                    
                    <div class="input_deg">
                        <label>Product Title</label>
                        <input type="text" name="title" required>
                    </div>

                    <div class="input_deg">
                        <label>Description</label>
                        <textarea name="description" id="description" required></textarea>
                    </div>

                    <div class="input_deg">
                        <label>Price</label>
                        <input type="text" name="price" required>
                    </div>

                    <div class="input_deg">
                        <label>Quantity</label>
                        <input type="number" name="quantity" required>
                    </div>

                    <div class="input_deg">
                        <label>Product Category</label>

                        <select name="category" required>
                            <option>Select an Option</option>

                            @foreach($category as $category)
                            <option value="{{$category->category_name}}">{{$category->category_name}}</option>
                            @endforeach

                        </select>                    
                    </div>

                    <div class="input_deg">
                        <label>Product Image</label>
                        <input type="file" name="image">
                    </div>
                    
                    <div class="input_deg">
                        <input class="btn btn-success" type="submit" value="Add Product" name="add_product">
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