

<html>
	<head>
	<title>Form</title>
          <link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>


	<h1 class="center"><p>JBbox local settings</p></h1>
	<p class="center">(change predefined values to your real ones)</p>
	<br>

<table class="center">
<form method="post" action="handler.php">

<tr>
    <td>GPRS APN : </td>
    <td>GPRS PIN : </td>   
    <td>Set Own Serial Number</td>
</tr>

<tr>
    <td>
        <input type="text" name="gprs-apn" value="APN name">
    </td>
    <td>
        <input type="text" name="gprs-pin" value="1234">
    </td>
    <td>
        <input type="text" name="own-sn2" value="YXAC344AS1">
    </td>
</tr>

<tr>
    <td>ip address 1</td>
    <td>netmask1</td>		
    <td>gateway1</td>
</tr>
<tr>
    <td>
      <input type="text" name="ipaddress1" value="10.10.10.10">
      </td>
    <td>
      <input type="text" name="netmask1" value="255.255.255.0">
    </td>
    <td>
      <input type="text" name="gateway1" value="10.10.10.1">
    </td>
</tr>
<tr>
    <td>ip address 2</td>
    <td>netmask2</td>		
    <td>gateway2</td>
</tr>
<tr>
    <td>
        <input type="text" name="ipaddress2" value="20.20.20.20">
    </td>
    <td>
        <input type="text" name="netmask2" value="255.255.255.0">
    </td>
    <td>
        <input type="text" name="gateway2" value="20.20.20.1">
    </td>
</tr>

<tr>
    <td><input type="submit" value="Submit" />
    </td>
 </tr>

</form>
 
</table>

<br />

<div id="footer">
    <?php include("footer.php"); ?>
</div>

</body>
</html>
