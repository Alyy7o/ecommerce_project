<!DOCTYPE html>
<html>
  <head> 
    @include('admin.css')

    <style>
        input[type='text']{
            width: 400px;
            height: 50px;
        }

        .tabel_deg{
            border: 2px solid yellowgreen;
            width: 600px;
            text-align: center;

        }
        th{
            background: skyblue;
            padding: 15px;
            font-size: 20px;
            font-weight: bold;
            color: white;
        }
        td{
            text-align: center;
            color: white;
            padding: 10px;
            border: 1px solid skyblue;
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
             
                  <h1 style="color: white">Add Category</h1>
              <div class="div_deg d-flex justify-content-center align-item-center m-4">

                  <form action="{{url('add_category')}}" method="post">

                  @csrf
                      <div>
                          <input type="text" name="category">
                          
                          <input type="submit" class="btn btn-primary" value="Add Category">
                        </div>
                    </form>
                </div>

                <div>
                    <table class="m-auto mt-4 tabel_deg">
                        <tr>
                            <th>Category Name</th>

                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>

                        @foreach($data as $data)

                        <tr>
                            <td>{{$data->category_name}}</td>

                            <td><a href="{{url('edit_category',$data->id)}}" class="btn btn-success">Edit</a></td>
                            
                            <td><a href="{{url('delete_category',$data->id)}}" onclick="confirmation(event)" class="btn btn-danger">Delete</a></td>
                        </tr>

                        @endforeach
                        
                    </table>
                </div>
        
        </div>
      </div>
    </div>
    <!-- JavaScript files-->

    <script>
        function confirmation(ev){
            ev.preventDefault();

            var urlToRedirect = ev.currentTarget.getAttribute('href');

            console.log(urlToRedirect);

            swal({
                title: "Are You Sure to Delete This",
                text: "This delete will be permanent",
                icon: "Warning",
                buttons: true,
                dangerMode: true,
            })

            .then((willCancel)=>
            {
                if(willCancel){
                    window.location.href = urlToRedirect;
                }

        }); 
        }
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

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