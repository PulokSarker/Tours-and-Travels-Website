

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <link rel="stylesheet" href="./css/header.css">
        <link rel="stylesheet" href="./css/banner.css">
        <link rel="stylesheet" href="./css/footer.css">
        <link rel="stylesheet" href="./css/body.css">
        <link rel="stylesheet" href="./css/place.css">

        <style>
         #launch_bgimage {
  border: 2px solid black;
  padding: 150px;
  background: url(../images/hotel_bgimage.jpg);
  background-repeat: no-repeat;
  background-size: 100% 160%;
}
table {
    width: 50%;
}
th {
    background: #f1f1f1;
    font-weight: bold;
    padding: 6px;
}
td {
    background: #f9f9f9;
    padding: 6px;
}

         </style>
    
    <title>Hotel</title>
    <header>
    
<?php
            include './header.php';
            ?>
</header>
</head>

<body>




    <main>
    <center>
    <div id="launch_bgimage">
    <h1><strong>Hotel Search</strong></h1>
    </div>
        </center>
        
           



            <center>
                    <legend><h3>Hotel Information</h3></legend>
              
                    
                    <label>Destination:</label>

                    <select name="hotel_location" id="hotel_location">
                        <option value=""></option>
                        <option value="kuakata">Kuakata</option>
                        <option value="sylhet">Sylhet</option>
                        <option value="chittagong">Chittagong</option>
                        <option value="barisal">Barisal</option>
                        <option value="rajshahi">Rajshahi</option>
                        <option value="khulna">Khulna</option>
                        <option value="cox's bazar">Cox's Bazar</option>
                        </select>
                        <!-- <br><br> --> 

                        <label for="date">Booking Date:</label>
                     <input type="date" name="booking_date" id="booking_date"> 
                     
              
                    
                    <!-- <input type="submit"  name="search"  value="Search"><br><br> -->
                    <button id="search" class="search-btn button" onclick="toggle()"> <label for="show">Search</label> </button>
                    
            </center>
            <div id="searchResults">
                    <!-- POP UP SEARCH  -->
                    <div>
                        <input type="checkbox" id="show">
                        <div class="output-container">
                            <label for="show" class="close-btn fas fa-times" style="color:black;" title="close"></label>
                            <div class="table-wrapper">
                                <table class="fl-table">
                                    <thead>
                                        <tr>

                                            <th>Hotel Name</th>
                                            <th>Hotel Location</th>
                                            <th>Regular Price</th>
                                            <th>Discount Price</th>
                                            <th>Booking Date</th>
                                            <th>Hotel Service</th>
                                            <th>Image</th>

         
                                            
                                        </tr>
                                    </thead>
                                    <tbody id="output">

                                    <tbody>
                                </table>
                            </div>
                        </div>
                    </div> 
            </div>
              
                   
          
              
       
    </main>

    <script type="text/javascript">
  $(document).ready(function(){
    $("#search").click(function(){
      $.ajax({
        type:'POST',
        url:'./Search/hotel_search.php',
        data:{
         
          hotel_location:$("#hotel_location").val(),
          booking_date:$("#booking_date").val(),
        },
        
        success:function(data){
          $("#output").html(data);
        }
      });
    });
  });
</script>
    
    



    <footer>
        
    <?php
            // include './footer.php';
            ?> 
    </footer>

    <script src="./js/header.js"></script>
</body>

</html>

    
    