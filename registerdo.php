<?php

header ( 'content-type:text/html;charset:UTF-8' );
session_start ();
if (filter_has_var ( INPUT_POST, "user" )) {
	// 获取用户输入
	$className = $_REQUEST ["className"];
	$studentId = $_REQUEST ["studentId"];
	$user = $_REQUEST ["user"];
	if (strlen ( $studentId ) < 8 || strlen ( $user ) < 2) {
		header ( "location:register.php?error=学号或者用户名有错!" );
	} else {
		$password = $_REQUEST ["password"];
		$password2 = $_REQUEST ["password2"];
		if ("" == $user || "" == $password)
			echo "请输入用户名和密码！";
		else if ($password != $password2)
			echo "再次密码不一致！"; // 自动跳转到登录页
		else {
			// 选择数据库之前需要先连接数据库服务器
			require 'opendatabase.php';
			// 执行SQL语句
			$queryString = "insert into account(class_name,student_id,user,password) values('$className','$studentId','$user','$password')";
			$result = mysql_query ( $queryString ) or die ( "用户注册失败1" );
			if ($result) {
				mysql_close ( $con );
				// 保存用户信息
				$_SESSION ['studentId'] = $studentId;
				$_SESSION ['user'] = $user;
				header ( "location:main.php" );
			} else {
				echo "用户注册失败2";
			}
			mysql_close ( $con );
		}
	}
} else
	header ( "location:register.php" );
?>
