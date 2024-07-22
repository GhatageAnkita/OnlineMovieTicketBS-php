<?php
    $host = "localhost";
    $user = "root";                     
    $pass = "";                                  
    $db = "movietheatredb (2)";
    $port = 3306;
     $con = mysqli_connect($host, $user, $pass, $db, $port)or die(mysql_error());
?>