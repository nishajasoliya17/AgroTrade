<?php 
	require 'autoload.php';
	$obj = new Helper;
	$data = array(
		"username" => "krunal",
		"pass" => "456",
		"email" => "k@gmail.com",
		
	);
	$pk = array(
		"id" => "4"

		
	);

	//$obj -> inserData('admin',$data);
	$data = $obj -> getMasterData('admin');
	echo "<pre>";
?>

<html>
	<head>
	</head>
	<body>
		<table cellspacing="10px" cellpadding="10px" border="1px">
			<thead>
				<tr>
					<th>ID</th>
					<th>USERNAME</th>
					<th>PASSWORD</th>
					<th>EMAIL</th>
				</tr>
			</thead>

			<tbody>
				<?php 
				foreach($data as $val)
				{
					?>
					<tr>
					<td><?php echo $val['id']; ?></td>
					<td><?php echo $val['username']; ?></td>
					<td><?php echo $val['pass']; ?></td>
					<td><?php echo $val['email']; ?></td>
					</tr>
				<?php }

				?>
			</tbody>
			
		</table>
	</body>
</html>