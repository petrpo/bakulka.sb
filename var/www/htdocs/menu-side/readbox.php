<!DOCTYPE html>

<html>
<head>
  <title>About</title>
   <link href="style.css" rel="stylesheet">
  </head>
  
  <body>
    <?php include("header.php"); ?>
    <div id="main">
    
	<h1 class="center">Jbox - read the data</h1>
	
<!--	<p>... place a code here to read Jbox data</p>
   -->
<table class="center">

<tr>
    <td>GSM APN : </td> 
    <td>$gsm-apn</td> 

    <td>GSM PIN : </td>   
    <td>$gsm-pin</td>   
</tr>

<tr>
    <td>System Serial Number : </td>
    <td>$sys-sn</td>

    <td>Own Serial Number2 : </td> 
    <td>$own-sn2</td> 
    
</tr>

<br />

<tr>
    <td>ip address 1 : </td>
    <td>netmask1 : </td>    
    <td>gateway1 : </td>

    <td>$ipaddress1</td>
    <td>$netmask1</td>    
    <td>$gateway1</td>
    
</tr>

<tr>
    <td>ip address 2 : </td>
    <td>netmask2 : </td>    
    <td>gateway2 : </td>

    <td>$ipaddress2</td>
    <td>$netmask2</td>    
    <td>$gateway2</td>
</tr>

</table>

    <div id=footer>
        <?php include("footer.php"); ?>
    </div>
</div>

</body>

</html>