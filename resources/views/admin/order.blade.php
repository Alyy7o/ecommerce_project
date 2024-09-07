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
            border: 2px solid skyblue;
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
        input[type='search']{
            height: 50px;
            width: 400px;
            margin-right: 10px;
        }
        form{
            display: flex;
            justify-content: center;

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
             
                
                <form action="{{url('product_search')}}" method="get">
                    @csrf
                    <input type="search" name="search" placeholder="Search">
                    <input type="submit" value="Search" class="btn btn-secondary">
                </form>
                
                <h1 style="color: white">Orders</h1>
              <div class="div_deg d-flex justify-content-center align-item-center m-4">

                  
                

                <div>
                    <table class="m-auto mt-4 tabel_deg">
                        <tr>
                            <th>Customer Name</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Product Title</th>
                            <th>Price</th>
                            <th>Image</th>
                            <th>Status</th>

                            <th>Change Status</th>

                            
                        </tr>

                        @foreach($data as $data)

                        <tr>
                            <td>{{$data->name}}</td>
                            <td>{!!Str::words($data->rec_address,20)!!}</td>
                            <td>{{$data->phone}}</td>
                            <td>{{$data->product->title}}</td>
                            <td>{{$data->product->price}}</td>
                            <td>
                                <img src="products/{{$data->product->image}}" width="120" alt="">
                            </td>
                            <td>{{$data->status}}</td>

                            <td>
                                <a href="{{url('on_the_way',$data->id)}}" class="btn btn-primary ps-4 pe-4 m-3">On the Way</a>
                                <a href="{{url('delivered',$data->id)}}" class="btn btn-success ps-4 pe-4 m-3">Delivered</a>
                            </td>

                        </tr>

                        @endforeach

                        
                    </table>

                    
            </div>
                
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