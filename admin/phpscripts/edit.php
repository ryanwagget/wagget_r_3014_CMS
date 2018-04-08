<?php
include('connect.php');

$tbl = $_POST['tbl'];
$col = $_POST['col'];
$id = $_POST['id'];

unset($_POST['tbl']);
unset($_POST['col']);
unset($_POST['id']);
unset($_POST['submit']);


$count = 0;
$num = count($_POST);

$qstring = "UPDATE {$tbl} SET ";

//$qstring .= "WHERE {$col}={$id}";

foreach($_POST as $key => $value){
  $count++;
  if($count != $num){
    $qstring .= $key." = '".htmlspecialchars($value, ENT_QUOTES)."', ";
  }else{
    $qstring .= $key." = '".htmlspecialchars($value, ENT_QUOTES)."' ";
  }

}

$qstring .= "WHERE {$col}={$id}";

$updatequery = mysqli_query($link, $qstring);
if($updatequery){
  header("Location:../../index.php");
}else{
  echo "Content change failed. Please try again.";
}
//echo $qstring;
//echo count($_POST);

mysqli_close($link);
 ?>
