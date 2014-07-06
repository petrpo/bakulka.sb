<?php
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- Based on a template by Ben Meadowcroft, see http://www.benmeadowcroft.com/webdev/  for more info-->
<title>My Amazing template site</title>

  <link href="style.css" rel="stylesheet">

</head>
<body>

<div class="title">
<h1>Welcome at Jbox configuration</h1>
</div>

<!--
from : http://www.phpro.org/tutorials/Introduction-to-PHP-templating.html
-->

<!-- Begin Dynamic Content -->
<div class="Content">
<h2>Local settings and reading data</h2>
<p>Choose in menu your precerencies
</p>
</div>
<!-- End Dynamic Content -->

<!-- Begin sidebar Content -->
<div class="sidebar" id="sidebar">
<ul class="menu">

<li><a href="index.php">Home</a></li>
<li><a href="readbox.php">read Jbox</a></li>
<li><a href="setbox.php">set Jbox</a></li>
<li><a href="logbox.php">logs</a></li>
<li><a href="about.php">about Jbox</a></li>

<!--<li><a href="<?php echo htmlentities($_SERVER['PHP_SELF']);?>?page=page4">about Jbox</a></li>

<li>&nbsp;</li>
<li><a href="http://kraftel.eu">Kraftel web</a></li>

<li>&nbsp;</li>
<li><a href="http://www.phpro.org">Link</a></li>
-->
</ul>

  <div class="other">
  	<p><a href="http://dispecink.kraftel.eu">dispecink 1</a></p>
  	<p><a href="http://dispecink2.kraftel.eu">dispecink 2</a></p>
  	<p>at <a href="http://kraftel.eu">Kraftel</a></p>
  </div>

</div>
<!-- End sidebar Content -->

    <div id="footer">
	<?php include("footer.php"); ?>
    </div>
</body>

</html>

