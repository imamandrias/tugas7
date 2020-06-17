<?php
include "config.php";
/*if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$response = array();
	$text = $_POST['text'];	
	$cek = "SELECT *FROM tb_terjemahan
			WHERE bhs_inggris = '".$text."'
	";
	$result = mysqli_fetch_array(mysqli_query($connect, $cek));
	if(isset($result)){
		$response['value']=1;
		$response['message'] = "Terjemahan ditemukan";
		$response['text'] = $result['bhs_indonesia'];
		echo json_encode($response);
	}else{
		$response['value'] = 0 ;
		$response['message'] = "Terjemahan Tidak ditemukan" ;
		echo json_encode($response);
	}	
}*/
mysqli_set_charset($connect, 'utf8');
$query = mysqli_query($connect, 'SELECT *FROM tb_terjemahan');
while($row = mysqli_fetch_assoc($query)) {
	$data[] = $row;
}
			
$json = json_encode($data);
echo $json;
?>