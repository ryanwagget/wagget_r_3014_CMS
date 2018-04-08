<?php
	require_once('phpscripts/config.php');
	$errors = array();
	$ip = $_SERVER['REMOTE_ADDR'];
	//echo $ip;
	if(isset($_POST['submit'])){
	$name = trim($_POST['name']);
	$phone = trim($_POST['phone']);
	$address = trim($_POST['address']);

	$required = array("name", "phone", "address");
	foreach($required as $require) {
			$value = trim($_POST[$require]);
			if(!has_value($value)){
				$errors[$require] = ucfirst($require)."Cannot be blank.";
			}
		}
		$max_lengths = array("name" => 15, "phone" => 8);
		max_length($max_lengths);
	}

?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to our admin panel login</title>
</head>
<body>
	<?php echo form_errors($errors);//if(!empty($message)){ echo $message;}

	$no_attack = "&\'";
	$attack = "\x8F!!!";
//	echo htmlspecialchars($no_attack, ENT_QUOTES, 'UTF-8')."<br>";
//	echo htmlspecialchars($attack, ENT_QUOTES, 'UTF-8');
	?>
	<form action="<?php htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="post">
		<label>Name:</label>
		<input type="text" name="name" value="">
		<br><br>
		<label>Phone:</label>
		<input type="tel" name="phone" value="">
		<br><br>
		<label>Address:</label>
		<input type="text" name="address" value="">
		<br>
		<input type="submit" name="submit" value="Show Mollas">
	</form>
</body>
</html>
