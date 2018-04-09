<?php
	require_once('phpscripts/config.php');

	$tbl = "tbl_genre";
	$genQuery = getAll($tbl);
	//echo $genQuery;

	if(isset($_POST['submit'])){
		$cover = $_FILES['cover'];
		$title = trim($_POST['title']);
		$year = trim($_POST['year']);
		$runtime = trim($_POST['runtime']);
		$story = trim($_POST['story']);
		$genre = $_POST['genList'];
		$result = addMovie($cover, $title, $year, $runtime, $story, $genre);
		$message = $result;

		//echo $cover['type'];
		//echo $cover['name'];
		//echo $cover['size'];
		//echo $cover['tmp_name'];
	}

?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie World - Add Movie</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<?php if(!empty($message)){ echo $message;} ?>
<?php
include('../includes/nav.html');
?>

	<form action="admin_addMovie.php" method="post" enctype="multipart/form-data">
		<label>Cover Image:</label>
		<input type="file" name="cover" value="">
		<br><br>
		<label>Movie Title:</label>
		<input type="text" name="title" value="">
		<br><br>
		<label>Movie Year:</label>
		<input type="text" name="year" value="">
		<br><br>
		<label>Movie Runtime:</label>
		<input type="text" name="runtime" value="">
		<br><br>
		<label>Movie Storyline:</label>
		<input type="text" name="story" value="">
		<br><br>
		<select name="genList">
			<option>Movie Genre</option>
			<br><br>
			<?php
			while($row = mysqli_fetch_array($genQuery))
			{
				echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
			}

		 	?>

		</select>
		<input type="submit" name="submit" value="Add" class="submit">
	</form>
</body>
</html>
