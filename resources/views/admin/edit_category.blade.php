<!DOCTYPE html>
<html>
  <head> 
    @include('admin.css')
    
</head>
<body>
      @include('admin.header')
      
      <!-- Sidebar Navigation start-->
      @include('admin.sidebar')
      
      <!-- Sidebar Navigation end-->
      
      <div class="page-content">
          <div class="page-header">
              <div class="container-fluid">
             
                  <h1 style="color: white">Edit Category</h1>

              <div class="d-flex justify-content-center align-items-center m-5">

                <form action="{{url('update_category',$data->id)}}" method="post">
                    @csrf

                    <input style="height: 43px; width: 400px" type="text" name="category" value="{{$data->category_name}}">

                    <input type="submit" name="" class="btn btn-primary" value="Update Category" id="">
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