<%@ page contentType="text/html; charset=GBK" %>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���ŷ���ϵͳ</title>
<link rel="stylesheet" href="../css/text.css" type="text/css">
<script language="javascript">
	function check(){
		if(user_login.userName.value==""){
			alert("����������");
			return false;
		}
		if(user_login.userName.value.length>20){
			alert("����������20λ");
			return false;
		}
		if(user_login.passWd.value==""){
			alert("����������");
			return false;
		}
		if(user_login.passWd.value.length>20){
			alert("���벻����20λ");
			return false;
		}
		if(user_login.passWd.value.length<6){
			alert("���벻����6λ");
			return false;
		}
		return true;
	}
</script>
</head>

<body leftMargin=0  topMargin=0 marginheight="0" marginwidth="0">
<br>
<br>
<br>
<br>
<div align="center">
  <center>
  <table align=center border=0 cellPadding=0 cellSpacing=0 width=600>
    <tr>
      <td width=134 height=37><IMG src="../images/top_left2.gif"></td>
      <td width="100%" background=../images/top_middle2.gif height=37>
      <p align="center"><font color="#FFFFFF">��ӭ�������ŷ���ϵͳ!!!</font></td>
      <td width=49 height=37>
      <IMG height=37 src="../images/top_right2.gif" width=49></td>
    </tr>
  </table>
  </center>
</div>
<div align=center>
  <center>
  <table border=0 cellPadding=0 cellSpacing=0 width=600 height=113 bordercolor="#111111">
    <tr>
      <td width=11 background="../images/middle_left.gif" height=113>��</td>
      <td width=578 align="center" height=21>
    <br>
    <table border="2" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#6687BA" width="48%" id="AutoNumber1" height="112">
      <form method="post" action="checkuser.jsp" name="user_login" onsubmit="return check();">
      <tr>
        <td width="100%" height="24" colspan="2" background="../images/admin_left.gif">
        <p align="center">
        <font style="LINE-HEIGHT: 150%" face="Wingdings" color="#6687ba" size="2">
        v</font>�û���¼<font style="LINE-HEIGHT: 150%" face="Wingdings" color="#6687ba" size="2">v</font></td>
      </tr>
      <tr>
        <td width="31%" height="30">
        <p align="center">�û�����</td>
        <td width="69%" height="30">
        <p align="center">
                    <input name="userName" type="text" size="20">
                  </td>
      </tr>
      <tr>
        <td width="31%" height="31">
        <p align="center">��&nbsp; �룺</td>
        <td width="69%" height="31">
        <p align="center">
                    <input name="passWd" type="password" size="20">
                  </td>
      </tr>
      <tr>
        <td width="100%" height="27" colspan="2">
        <p align="center">
                    <input type="submit" value="��¼">
                    &nbsp;&nbsp;&nbsp; <input type="reset" value="����"> </td>
      </tr>
      </form>
    </table>
    <br>
      </td>
      <td width=11 background="../images/middle_left.gif" height=113>��</td>
    </tr>
    </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width=600>
    <tr>
    <td width="133" height="72"><IMG height="72" src="../images/bottom_left.gif" width="133"></td>
    <TD width="100%" background=../images/bottom_middle.gif height=72>
    <font color="#FFFFFF">All Rights Reserved.Copyleft &copy; 2001-2003 </font>
    <a href="http://www.sanqing.com"><font color="#FFFFFF">www.sanqing.com </font>
    </a> </TD>
    <td width="22" height="72"><IMG height="72" src="../images/bottom_right.gif" width="22"></td>
    </tr>
  </table>
  </center>
</div>
</body>
</html>