<?php

	function addMovie($cover, $title, $year, $runtime, $story, $trailer, $release, $genre)
	{
		include('connect.php');
		if($cover['type'] == "image/jpg" || $cover['type'] == "image/jpeg"){
		$targetpath = "../images/{$cover['name']}"; //where we want it to go

		if(move_uploaded_file($cover['tmp_name'], $targetpath)){
			//echo "worked";
			$th_copy = "../images/TH_{$cover['name']}";
			if(!copy($targetpath, $th_copy)){
					$message = "Didn't work.";
					return $message;
			}
			$qstring = "INSERT INTO tbl_movies VALUES(NULL, '{$cover['name']}', '{$title}', '{$year}', '{$runtime}', '{$story}', '{$trailer}', '{$release}')";
			$result = mysqli_query($link, $qstring);
			if($result){
				$qstring2 = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
				$result2 = mysqli_query($link, $qstring2);
				$row = mysqli_fetch_array($result2);
				$lastID = $row['movies_id'];
				echo $lastID;
				$qstring3 = "INSERT INTO tbl_mov_genre VALUES(NULL, {$lastID}, {$genre})";
				$result3 = mysqli_query($link, $qstring3);
		}
		redirecet_to("admin_index.php");
		//$size = getimagesize($targetpath);
		//echo $size[3];
	}else{
		//echo "nrejn";
	}
	}
}

?>