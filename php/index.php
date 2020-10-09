<!DOCTYPE html>
<html>
<head>
<title>Dryer Status Monitor</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<style>
h2 { font-family: 'Roboto', sans-serif; text-align: center; color: white; width: auto; height: auto; padding: 20px; }
h2.on { background-color: green; }
h2.off { background-color: red; }
</style>
</head>

<body>
<p>
<?php
$status_file_name = "/home/pi/dryer-status-monitor/python/dryer_status.txt";
echo nl2br(file_get_contents($status_file_name));
?>
</body>
</html>
