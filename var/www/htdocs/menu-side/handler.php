<?php

$strAPN = "<h1>GPRS APN : " . $_POST["gprs-apn"] . "</h1>";
$strPIN = "<h1>GPRS PIN : " . $_POST["gprs-pin"] . "</h1>";
$strOSN2 = "<h1>Own SN2 : " . $_POST["own-sn2"] . "</h1>";

$strIPaddress1 = "<h1>ip address 1 : " . $_POST["ipaddress1"] . "</h1>";
$strNetmask1 = "<h1>netmask 1 : " . $_POST["netmask1"] . "</h1>";
$strGateway1 = "<h1>gateway 1 : " . $_POST["gateway1"] . "</h1>";

$strIPaddress2 = "<h1>ip address 2 : " . $_POST["ipaddress2"] . "</h1>";
$strNetmask2 = "<h1>netmask 2 : " . $_POST["netmask2"] . "</h1>";
$strGateway2 = "<h1>gateway 2 : " . $_POST["gateway2"] . "</h1>";

?>

<html>
<head>
    <title>Form</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<h1 class="center"><p>You set these values in Jbox</p></h1>
<br />
<body>

<? echo $strAPN; ?>
<? echo $strPIN; ?>
<? echo $strOSN2; ?>

<? echo $strIPaddress1; ?>
<? echo $strNetmask1; ?>
<? echo $strGateway1; ?>

<? echo $strIPaddress2; ?>
<? echo $strNetmask2; ?>
<? echo $strGateway2; ?>

<div id="footer">
    <?php include("footer.php"); ?>
</div>

</body>
</html>
