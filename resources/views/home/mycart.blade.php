<!DOCTYPE html>
<html>

<head>
  @include('home.css')
</head>

<style>
    table{
        border: 2px solid black;
        text-align: center;
        width: 800px;
    }
    th{
        border: 2px solid black;
        text-align: center;
        color: white;
        font: 20px;
        font-weight: bold;
        background-color: black;
    }
    td{
        border: 1px solid skyblue;
    }
    .order_deg{
        padding-right: 100px;
        /* margin-top: -100px; */
    }
    label{
        display: block;
        width: 200px;
        font-weight: bold;
    }
    .div_gap{
        padding: 15px;
    }
</style>


<body>
  <div class="hero_area">
    <!-- header section strats -->
    @include('home.header')

  </div>

  <div class="d-flex justify-content-center align-items-center m-5">

  <div class="order_deg">

    <form action="{{url('confirm_order')}}" method="post">
    
    @csrf

    <div class="div_gap">
        <label for="">Receiver Name</label>
        <input type="text" name="name" value="{{Auth::user()->name}}">
    </div>

    <div class="div_gap">
        <label for="">Receiver Address</label>
        <textarea  name="address">{{Auth::user()->address}}</textarea>
    </div>

    <div class="div_gap">
        <label for="">Receiver Phone</label>
        <input type="text" name="phone" value="{{Auth::user()->phone}}">
    </div>

    <div class="div_gap">
        <input type="submit" value="Place Order" class="btn btn-primary">
    </div>
    
    </form>
  </div>

    <table>
        <tr>
            <th>Product Title</th>
            <th>Price</th>
            <th>Image</th>
            <th>Remove</th>
        </tr>

        <?php 
        $value = 0;
        ?>

        @foreach($cart as $cart)

        <tr>
            <td>{{$cart->product->title}}</td>
            <td>{{$cart->product->price}}</td>
            <td>
                <img src="/products/{{$cart->product->image}}" width="150" alt="">
            </td>
            <td>
                <a href="{{url('delete_cart',$cart->id)}}" class="btn btn-danger">Remove</a>
            </td>
        </tr>

        <?php 

        $value = $value + $cart->product->price ;

        ?>

        @endforeach
    </table>

  </div>

  <div class="d-flex justify-content-center mb-5 p-5">
    <h3>Total Value of Cart is : Rs. {{$value}}</h3>
  </div>
  
  
  <!-- info section -->
  @include('home.footer')

  
</body>

</html>