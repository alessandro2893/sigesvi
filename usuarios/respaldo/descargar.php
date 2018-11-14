<?php
include ("function_backup.php");
$dbhost = 'localhost';
$dbname = 'sincomin';
$dbuser = 'root';
$dbpass = '';
echo backup_tables("$dbhost","$dbuser","$dbpass","$dbname");

$fecha=date("Y-m-d");
header("Content-disposition: attachment; filename=db-backup-".$fecha.".sql");
header("Content-type: MIME");
readfile("backups/db-backup-".$fecha.".sql");
