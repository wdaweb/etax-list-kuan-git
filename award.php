<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>發票對獎</title>
</head>
<body>
<?php
include "dsnpdo.php";
include "kMatch.php";

$searYear=2019;
$searMonth=7;
$ssp=45698621;
$sp=19614436;
$firp1=96182420;
$firp2=47464012;
$firp3=62781818;
$c1=928;
$c2=899;


$sql="select `num`,`id` from `receipt` where `year` =" .$searYear." && `month` in(".$searMonth.",".($searMonth+1).")";


$data=$pdo->query($sql)->fetchAll();

// print_r($data);
// echo "<br>";


foreach ($data as $k => $v) {
    $n=$v['num'];
    if ($ssp==$n) {
        echo $n."  恭喜你中特別獎! 獎金 1000 萬<br>";
    }else if ($sp==$n) {
        echo $n."  恭喜中特獎! 獎金 200萬<br>";
    }else{

    $piz[1]=kMatch($firp1,$n);
    $piz[2]=kMatch($firp2,$n);
    $piz[3]=kMatch($firp3,$n);
    $prize=max($piz);
    
    switch ($prize) {
        case 8:
          echo $n." 恭喜妳中頭獎! 獎金20萬元<br>";
          break;
        case 7:
          echo $n." 恭喜妳中 二獎! 獎金4萬元 <br>";
          break;
        case 6:
          echo $n." 恭喜妳中 三獎! 獎金1萬元  <br>";
          break;
        case 5:
          echo $n." 恭喜妳中 四獎! 獎金4千元<br>";
          break;
        case 4:
          echo $n." 恭喜妳中 五獎! 獎金1千元<br>";
          break;
        case 3:
          echo $n." 恭喜妳中 六獎! <br>";
          break;
        
      }

    }
}


?>
</body>
</html>