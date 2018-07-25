<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<?php
header("Content-type:text/html;charset=utf-8");
session_start ();
if (filter_has_var ( INPUT_POST, "studentId" )) {
	// 选择数据库之前需要先连接数据库服务器
	require 'opendatabase.php';
	// 获取用户输入
	session_start ();
	$studentId = $_REQUEST ["studentId"];
	$password = $_REQUEST ["password"];
	// 执行SQL语句
	$queryString = "select user,student_id from account where student_id='$studentId' and password = '" . $password . "'";
	$result = mysql_query ( $queryString ) or die ( "SQL语句执行失败" );
	if ($row = mysql_fetch_array ( $result )) {
		// 保存用户信息
		$_SESSION ['user'] = $row ['user'];
		$_SESSION ['studentId'] = $row ['student_id'];
		$settings ["studentId"] = $_SESSION ["studentId"];
		$settings ["$user"] = $_SESSION ["user"];
		header ( "location:main.php" );
	} else {
		echo '用户名或密码错误! <input type="button" onClick="location.href=\'login.php\'" value="回到登录页" />';
	}
} else
	header ( "location:login.php" ); // 自动跳转到登录页
?>
</body>
</html>

