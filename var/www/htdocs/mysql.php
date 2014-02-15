<?php

$UP=shell_exec("mysql -u root -p -e STATUS | grep Uptime | sed 's/Uptime/Mysql\ uptime/'");

echo "$UP";
?>

