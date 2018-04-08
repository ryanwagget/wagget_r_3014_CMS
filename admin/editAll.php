<?php
  require_once("phpscripts/config.php");

 ?>
 <!doctype html>
 <html>
 <head>
 <meta charset="UTF-8">
 <title>Movie World - Edit Movie</title>
 <link rel="stylesheet" href="css/style.css">
 </head>
 <body>
   <?php
   include('../includes/nav.html');

    $tbl = "tbl_movies";
    $col = "movies_id";
    $id = 1;
    echo single_edit($tbl, $col, $id);
   ?>
 </body>
 </html>
