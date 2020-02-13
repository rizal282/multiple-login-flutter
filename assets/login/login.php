<?php
    include_once "koneksi.php";

    $username = $_POST["username"];
    $password = $_POST["password"];

    $datauser = array();

    $sqldatauser = mysqli_query($koneksi, "select * from user where username = '".$username."' and password = '".$password."'");
    while($rowdatauser = mysqli_fetch_array($sqldatauser)){
        $datauser[] = $rowdatauser;
    }

    echo json_encode($datauser);

?>
