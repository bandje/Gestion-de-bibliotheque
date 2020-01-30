<?php 
 
 if(!empty($success))
 {
    echo "<div class='alert alert-success' role='alert'>";
     echo "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>
            <span aria-hidden='true'>&times;</span>
           </button>";
         
             echo $success."<br/>";
         
     echo "</div>";
 }

 