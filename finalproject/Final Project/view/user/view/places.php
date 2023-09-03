
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

    <link rel="stylesheet" href="./css/header.css">
        <link rel="stylesheet" href="./css/banner.css">
        <!-- <link rel="stylesheet" href="./css/footer.css"> -->
        <link rel="stylesheet" href="./css/body.css">
        <link rel="stylesheet" href="./css/place.css">
        <style>
        #launch_bgimage {
  border: 2px solid black;
  padding: 150px;
  background: url(../images/place_bgimage.jpg);
  background-repeat: no-repeat;
  background-size: 100% 160%;
}
        </style>

        
       
    <title>Places</title>

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
    <h1><Strong>Places To Travel</Strong></h1>

    </div>
        </center>
        
        



        <center>
                <legend><h3>Places</h3></legend>
          
                
                <label>Places:</label>

                <select name="places" id="places">
                    <option value=""></option>
                    <option value="kuakata">Kuakata</option>
                    <option value="sundarban">Sundarban</option>
                    <option value="chittagong">Chittagong</option>
                    <option value="barisal">Barisal</option>
                    <option value="rajshahi">Rajshahi</option>
                    <option value="khulna">Khulna</option>
                    </select>
                    <!-- <br><br> --> 

                   
          
                
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

                                        <th>Place Name</th>
                                        <th>Place Description</th>
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
                url:'./Search/places_search.php',
                data:{
                 
                  places:$("#places").val(),
                  
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

