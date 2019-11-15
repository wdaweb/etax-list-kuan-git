<?php
    include "dsnpdo.php";

    $y=$_POST['year'];
    $m=$_POST['period'];
    $ssp = $_POST['awa1'];
    $sp = $_POST['awa2'];
    $first=$_POST['awa3'];
    $cr=$_POST['awa4'];

    $sql="insert into `award`(`year`,`month`,`ssp`,`sp`,`fp1`,`fp2`,`fp3`,`cr1`,`cr2`,`cr3`)
    values('".$y."','".$m."','".$ssp."','".$sp."','".$first[0]."','".$first[1]."','".$first[2]."','".$cr[0]."','".$cr[1]."','".$cr[2]."')";

    $pdo->exec($sql);





?>