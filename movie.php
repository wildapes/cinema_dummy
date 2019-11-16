<?php 
include "connect_db.php";


if(isset($_GET['title'])){
	$title = $_GET['title'];
	$sql = "SELECT * FROM showing_tb inner join movie_tb on showing_tb.movie_id = movie_tb.movie_id inner join theater_tb on showing_tb.theater_id = theater_tb.theater_id where title='$title'";
	$query = mysqli_query($connect, $sql) or die(mysqli_error($connect));
}elseif(isset($_GET['theater'])){
	$theater = $_GET['theater'];
	$sql = "SELECT * FROM showing_tb inner join movie_tb on showing_tb.movie_id = movie_tb.movie_id inner join theater_tb on showing_tb.theater_id = theater_tb.theater_id where theater_tb.theater_id='$theater'";
	$query = mysqli_query($connect, $sql) or die(mysqli_error($connect));
}else{
	$sql = "SELECT * FROM showing_tb inner join movie_tb on showing_tb.movie_id = movie_tb.movie_id inner join theater_tb on showing_tb.theater_id = theater_tb.theater_id";
	$query = mysqli_query($connect, $sql) or die(mysqli_error($connect));
}
if(mysqli_num_rows($query) < 1){
	return false;
}else{

	foreach ($query as $list) {
		$data[] = array(
			'Theater' => $list['theater_name'],
			'Judul Film' => $list['title'],
			'Genre' => $list['genre'],
			'Tanggal Rilis' => $list['release_date'],
			'Durasi' => $list['duration'],
			'Waktu Tayang'=> $list['show_time']
		);
	}
		$json = array(
			'result' => 'success',
			'data' => $data
		);
		echo json_encode($json);
}
?>