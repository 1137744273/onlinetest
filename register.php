<html>
<head>
<title>用户注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<h1 align="center">考生注册</h1>
	<form name="form1" method="post" action="registerdo.php">
		<table width="300" border="0" align="center" cellpadding="2"
			cellspacing="2">
			<?php
			if (isset ( $_REQUEST ['error'] )) {
				echo "<tr align='center'><td colspan=2><font color='red'>" . $_REQUEST ['error'] . "</font></td></tr>";
			}
			?>
			<tr>
				<td width="150"><div align="right">班级：</div></td>
				<td width="150"><select name="className">
						<option value="软件1506">软件1506</option>
						<option value="软件1507">软件1507</option>
						<option value="软件1508">软件1508</option>
						<option value="软件1509">软件1509</option>
				</select></td>
			</tr>
			<tr>
				<td width="150"><div align="right">学号：</div></td>
				<td width="150"><input type="text" name="studentId" maxlength=8></td>
			</tr>
			<tr>
				<td width="150"><div align="right">姓名：</div></td>
				<td width="150"><input type="text" name="user"></td>
			</tr>
			<tr>
				<td><div align="right">密码：</div></td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><div align="right">再输密码：</div></td>
				<td><input type="password" name="password2"></td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" name="submit" value="确定"> &nbsp; &nbsp; &nbsp;
			&nbsp; <input type="reset" name="reset" value="清空">
		</p>
	</form>
</body>
</html>
