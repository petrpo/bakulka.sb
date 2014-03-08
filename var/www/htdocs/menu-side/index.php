<?php
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- Based on a template by Ben Meadowcroft, see http://www.benmeadowcroft.com/webdev/  for more info-->
<title>My Amazing template site</title>

  <link href="style3.css" rel="stylesheet">

</head>
<body>

<div class="title">
<h1>Jbox - local settings</h1>
</div>

<!--
from : http://www.phpro.org/tutorials/Introduction-to-PHP-templating.html
-->

<!-- Begin Dynamic Content -->
<div class="Content">
<p>This is the template layout of we use in this tutorial. All the code belongs in this area
for the Dynamic Content. Below is some dummy text in latin to fill it out. It is left as a  task
for the user to translate it.
</p>
<h2>Dummy text</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi </p>

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
  	<p><a href="http://kraftel.eu">Kraftel web</a></p>
  </div>

</div>
<!-- End sidebar Content -->

  <?php include("footer.php"); ?>

</body>
</html>
