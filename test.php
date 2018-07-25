<?php  header('content-type:text/html;charset:UTF-8');
set_include_path('.' . PATH_SEPARATOR . './admin'. PATH_SEPARATOR . get_include_path());
include("global.php");
$threadid  = intval($_REQUEST[threadid]);

//初始化全局变量
session_start();
$studentId = $_SESSION["studentId"];
$user = $_SESSION["user"];

if($_POST["action"]=="dotest"){
   $_POST[radio]     = $_POST[radio]    ? $_POST[radio]    : array();
   $_POST[checkbox]  = $_POST[checkbox] ? $_POST[checkbox] : array();
   
   //取得单选和多选分值
   $getsetmark = $db->query_first("SELECT radio,checkbox FROM ".$db_prefix."setmark");
   //缓存所有正确答案
   $answers = $db->query("SELECT id,title,choicetype,answer FROM ".$db_prefix."title");
   $answer_array = array();
   $titles       = array();
   $error        = array();
   $tmark = 0;
   while($row = $db->fetch_array($answers)){
         $answer_array[$row[id]] = $row[answer];
		 $titles[$row[id]]       = $row[title];
		 if($row[choicetype]=="radio"){
		    $tmark += $getsetmark[radio];
		 }elseif($row[choicetype]=="checkbox"){
		    $tmark += $getsetmark[checkbox];
		 }
   }
   $mark = 0;
   foreach($_POST[radio] as $titleid=>$choice){
              
           if($choice == $answer_array[$titleid]){
		      $mark += $getsetmark[radio];
		   }else{
		      $error[] = array($titleid,$choice,$answer_array[$titleid]);
		   }
		   
   
   }
   

   foreach($_POST[checkbox] as $titleid=>$choice){
   
          $c_answers = explode(",",$answer_array[$titleid]);
		  $flag = false; 
		  
		  foreach($c_answers as $answer){
		          if(!in_array($answer,$choice)){
				     $flag = true;
				  }
		  }
		  foreach($choice as $answer){
		          if(!in_array($answer,$c_answers)){
				     $flag = true;
				  }
		  }
		  
		  if($flag){
		     $error[] = array($titleid,implode(",",$choice),$answer_array[$titleid]);
			 continue;
		  }
		  $mark += $getsetmark[checkbox];
   
   } 
   
   
   
   
   
   $msg = "本次考试总分{$tmark}分\\n你的得分{$mark}分\\n";
   if($error){
      $msg .= "以下题目你回答错误:\\n";
	  foreach($error as $v){
	          $msg .= "{$titles[$v[0]]}\\n你的答案：{$v[1]}\\n正确答案：{$v[2]}\\n\\n";
	  }
   }
   //保存成绩
   //session_start();
   //$studentId = $_SESSION["studentId"];
   //$user = $_SESSION["user"];
   $subject = "php和mysql web应用开发";
   $time = time()+8*3600;
   $test_time = date("Y-m-d H:i:s",$time);
   $scoreSQL = $db->query("INSERT INTO `scores`(`student_id`, `user`, `subject`, `test_time`, `score`) VALUES ('$studentId','$user','$subject','$test_time','$mark')");   
   session_start();
   $_SESSION["infor"] = $msg;
   header("location:displayinfor.php");
}
if(!$threadid){
   echo "参数错误";
   echo '<meta http-equiv="refresh" content="2; url=index.php">';
   exit;

}
//考试名称
$threads = $db->query_first("SELECT name FROM ".$db_prefix."thread WHERE id=$threadid");
$threadtitle = $threads[name];


//题目表单
$conditions = $threadid ? "threadid='$threadid'" : 1;
$randnum = rand(1, 3);
$order="answer";
switch($randnum){
	case 1: $order="id";break;
	case 2: $order="title";break;
	case 3: $order="answer";break;
}
$titles = $db->query("SELECT * FROM ".$db_prefix."title WHERE $conditions ORDER BY rand()");
$titlelist = false;
$int = 0;
while($title = $db->fetch_array($titles)){
      $int++;
	  $choices = false;
	  $tests = $db->query("SELECT * FROM ".$db_prefix."choice WHERE extends=$title[id] ORDER BY rand()");
	  $i=0;
	  while($test=$db->fetch_array($tests)) {
	        $i++;
	 	    $checked = $test["IsDefault"] ? "checked" : false;   
		       
		    if($title[choicetype]=="radio"){
		  	   $choices .="&nbsp;&nbsp;"."<input name=\"radio[$title[id]]\" type=\"radio\" value=\"$test[choice]\" $checked check=\"^0$\" warning=\"$title[title]\"> $test[choice]";  //
			}else{
			   $choices .= "&nbsp;&nbsp;"."<input name=\"checkbox[$title[id]][]\" type=\"checkbox\" value=\"$test[choice]\" $checked check=\"^0{1,}$\" warning=\"$title[title]\"> $test[choice]";//
			}
	  }
	  eval("\$titlelist .= \"".gettemplate("test_title_list")."\";");   
}
$user = $_SESSION["user"];
eval("\$header = \"".gettemplate("test_header")."\";");
eval("\$footer = \"".gettemplate("test_footer")."\";");
eval("dooutput(\"".gettemplate("test_test")."\");");
?>