
<?php
include "dsnpdo.php";

$year=$_POST['year'];
$mon=$_POST['month'];
//$cod=$_POST['code'];
$num=$_POST['number'];
$exp=$_POST['expend'];

$sql="insert into `receipt`(`year`,`month`,`num`,`money`)values('".$year."','".$mon."','".$num."','".$exp."')";
if($pdo->exec($sql)){
    echo "<h1>已經記錄了 ".$num." 號發票</h1>"."<br>" ;
}

echo '<a href="index.html">回首頁繼續輸入</a>';

?>