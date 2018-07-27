<html>
<head>
<script language="javascript">
String.prototype.getBytes = function() {
    var cArr = this.match(/[^\x00-\xff]/ig);
    return this.length + (cArr == null ? 0 : cArr.length);
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考试系统登录</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

#login001 {
	font-family: "宋体";
	text-decoration: none;
	width: 1002px;
	margin-right: auto;
	margin-left: auto;
}

.text0012 {
	font-family: "宋体";
	font-size: 12px;
	color: #333;
	text-decoration: none;
	line-height: 18px;
}

.text00120 {
	font-family: "宋体";
	font-size: 12px;
	line-height: 18px;
	color: #1B9E86;
	text-decoration: none;
}

.text00121 {
	font-family: "宋体";
	font-size: 12px;
	line-height: 18px;
	color: #F00;
	text-decoration: none;
}

.text00122 {
	font-family: "宋体";
	font-size: 12px;
	line-height: 18px;
	color: #666;
	text-decoration: none;
}

.text0014 {
	font-family: "宋体";
	font-size: 16px;
	color: #1B9E86;
	text-decoration: none;
	font-weight: bold;
}

#login002 {
	font-family: "宋体";
	text-decoration: none;
	width: 1002px;
	margin-right: auto;
	margin-left: auto;
	background-image: url(images/Login0_02.jpg);
	background-repeat: no-repeat;
	background-position: top;
}

#login01 {
	font-family: "宋体";
	font-size: 14px;
	color: #333;
	text-decoration: none;
	text-align: left;
	text-indent: 2em;
	margin-top: 70px;
	padding-right: 25px;
	padding-bottom: 20px;
	padding-left: 70px;
	height: 125px;
	line-height: 22px;
}

#login02 {
	font-family: "宋体";
	font-size: 14px;
	line-height: 22px;
	color: #FFF;
	text-decoration: none;
	text-align: left;
	text-indent: 2em;
	height: 88px;
	padding-right: 25px;
	padding-bottom: 15px;
	padding-left: 70px;
	margin-top: 80px;
}

#login03 {
	font-family: "宋体";
	height: 92px;
	margin-top: 110px;
	margin-right: 72px;
	padding-right: 20px;
	padding-left: 20px;
}

#login04 {
	font-family: "宋体";
	text-decoration: none;
	text-align: left;
	margin-top: 25px;
}

#login05 {
	font-family: "宋体";
	text-decoration: none;
	text-align: left;
	padding-left: 50px;
	padding-top: 20px;
	font-size: 12px;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}
-->
</style>
</head>

<body>
	<center>
		<div class="login" id="login001">
			<img src="login_files/Logina_01.jpg" height="94" width="1002">
		</div>
		<div class="login" id="login002">
			<table width="100%">
				<tbody>
					<tr>
						<td align="left" valign="top" width="490">
							<div id="login01">各位同学大家好：为了掌握基础理论和编程技能，为后继的项目开发奠定基础，同学们一致赞成使用本系统进行基础知识的检测。游戏规则是参加测试的同学成绩在80分及
								其以上者算通过。如果没有通过，则次周选择一课外时间再次测试。如果还是不通过，重复上述过程直到通过为止。</div>
							<div id="login02">第一次考试前，请先注册。注意注册信息的必须真实准确。</div>
						</td>
						<td width="33">&nbsp;</td>
						<td align="left" valign="top" width="463">
							<div id="login03">
								<form name="Login" id="Login" method="post" action="logindo.php">
									<table width="100%">
										<tbody>
											<tr>
												<td class="text0012" align="right" width="24%">学号：</td>
												<td colspan="2" align="left" width="42%"><label> <input
														name="studentId" id="studentId" size="20" maxlength="32"
														type="text">

												</label></td>
												<td width="34%">&nbsp;</td>
											</tr>
											<tr>
												<td class="text0012" align="right">密 码：</td>
												<td colspan="2" align="left"><label> <input
														name="password" id="password" size="20" maxlength="32"
														type="password">
												</label></td>
												<td class="text00120"></td>
											</tr>
											<tr>
												<td colspan="4" height="6"></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td align="center"><img style="cursor: pointer;"
													src="login_files/Login12.png" onclick="javascript:login()"
													onmousemove="this.style.cursor='pointer'" border="0"
													height="26" width="72"></td>
												<td align="center"><a href="register.php" target="_blank"><img
														src="login_files/Login14.png" border="0" height="24"
														width="53"></a></td>
												<td>&nbsp;</td>
											</tr>
										</tbody>
									</table>
								</form>
							</div>
							<div id="login04">
								<table width="100%">
									<tbody>
										<tr>
											<td class="text0014">考试流程:</td>
										</tr>
										<tr>
											<td height="103">
												<p><font color='red'>１.如果是第一次登录时，需要先注册</font></p>
												<p>２.输入登录信息，开始考试</p>
											</td>
										</tr>
										<tr>
											<td class="text0012"><span class="text00121">注意：</span>
												请务必填写真实姓名及相关信息，以利于进行身份审核和出具成绩合格证明。</td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<table width="100%">
				<tbody>
					<tr>
						<td height="50">&nbsp;</td>
					</tr>
					<tr>
						<td class="text00122" align="center">杜籽浩 <br>
						</td>
					</tr>
					<tr>
						<td align="center">&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
	</center>
	<script language="JavaScript">
  function login(){
      if(document.getElementById("studentId").value.length==0){
        alert("请输入用户名!");
        return ;
      }
      if(document.getElementById("password").value.length==0){
        alert("请输入密码!");
        return ;
      }
      document.Login.target = "_top";
      document.Login.submit();
  }
</script>
</body>
</html>