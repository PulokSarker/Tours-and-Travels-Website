
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link rel="stylesheet" href="./css/header.css">
        <link rel="stylesheet" href="./css/banner.css">
        <!-- <link rel="stylesheet" href="./css/footer.css"> -->
        <link rel="stylesheet" href="./css/body.css">
        <link rel="stylesheet" href="./css/style.css">

        <style>
        #launch_bgimage {
  border: 2px solid black;
  padding: 150px;
  background: url(../images/bus_bgimage.jpg);
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

    
    <title>Bus</title>


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
    <h1><strong>Bus Ticket Search</strong></h1>
  
    </div>
        </center>





    
<center>
                
                <legend><h3>Bus Travel Information</h3></legend>
          
                <h4>Destination</h4>
                <label>From:</label>

                <select name="start_location" id="start_location">
                    <option value=""></option>
                    <option value="dhaka">Dhaka</option>
                    <option value="chapainawabganj">Chapainawabganj</option>
                    <option value="chittagong">Chittagong</option>
                    <option value="barisal">Barisal</option>
                    <option value="kuakata">Kuakata</option>
                    <option value="sylhet">Sylhet</option>
                    <option value="teknaf">Teknaf</option>
                    </select>
                    

                    <label>To:</label>

                <select  name="end_location" id="end_location">
                <option value=""></option>
                    <option value="dhaka">Dhaka</option>
                    <option value="chapainawabganj">Chapainawabganj</option>
                    <option value="chittagong">Chittagong</option>
                    <option value="barisal">Barisal</option>
                    <option value="kuakata">Kuakata</option>
                    <option value="sylhet">Sylhet</option>
                    <option value="teknaf">Teknaf</option>
                    </select>
                    
                      <label>Ticket Type:</label>
                    <select name="ticket_type" id="ticket_type">
                        <option value=""></option>
                        <option value="ac">AC</option>
                        <option value="non-ac">Non-AC</option>
                        
                        </select>
                        
                

                <label for="date">Travel Date:</label>
                 <input type="date" name="journey_date" id="journey_date"> 
                 
          
                 
<button id="search" class="search-btn button" onclick="toggle()"> <label for="show" style="color:#4FC3A1;">Search</label> </button>
               
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
                                        <th>Operator Name</th>
          <th>Ticket Type</th>
          <th>Ticket Price</th>
          <th>Ticket Available</th>
          <th>Seat Available</th>
          <th>Destination</th>
          <th>Journey Date</th>
          <th>Arrival Time</th>
          <th>Departure Time</th>
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
<div style="width:100%; margin:0 auto;">
                    

                    <section class="bus_route">
    
                        <center>
                            <table id="bus_route">
                                <tr>
                                    <th>
                                        <h2>BUS ROUTES</h2>
                                    </th>
                                </tr>
                            </table>
                        </center>
    
                    </section>

<script type="text/javascript">
  $(document).ready(function(){
    $("#search").click(function(){
      $.ajax({
        type:'POST',
        url:'./Search/bus_search.php',
        data:{
         
          start_location:$("#start_location").val(),
          end_location:$("#end_location").val(),
          ticket_type:$("#ticket_type").val(),
          journey_date:$("#journey_date").val(),
        },
        
        success:function(data){
          $("#output").html(data);
        }
      });
    });
  });
</script>

<script type="text/javascript">
            $.ajax({
                url: '../model/json/bus_route.json',
                dataType: 'json',
                success: function(data) {
                    for (var i = 0; i < data.length; i++) {
                        var row = $('<tr><td><style="text-decoration:none; color:black">&nbsp;&nbsp;' + data[i].name + '</style=></td></tr>');
                        $('#bus_route').append(row);
                    }
                },
                error: function(jqXHR, textStatus, errorThrown){
        alert('Error: ' + textStatus + ' - ' + errorThrown);
                }    
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

