<?php header('content-type: text/html; charset:utf-8');
require "admin/config.php";
require "admin/db_mysql.php";
// 初始化数据库
$db=new db_sql;
$db->database=$dbdatabase;
$db->user=$dbuser;
$db->password=$dbpassword;
$db->connect();
$db->select_db();
?>