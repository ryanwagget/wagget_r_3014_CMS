<?php
	require_once('admin/phpscripts/config.php');
	if(isset($_GET['id']))
	{
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		$getMovie = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<link rel="stylesheet" href="css/indexStyle.css">
</head>
<body id="detailsBody">
<?php
	if(!is_string($getMovie)){
		$row=mysqli_fetch_array($getMovie);
		echo "<img src=\"images/{$row['movies_cover']}\" alt=\"{row['movies_title']}\">
		<p>{$row['movies_title']}</p>
		<p>{$row['movies_year']}</p>
		<p>{$row['movies_storyline']}</p>
		<a href=\"index.php\">Back...</a>";
	}else{
		echo "<p>{$getMovie}</p>";
	}
?>
</body>
</html>
