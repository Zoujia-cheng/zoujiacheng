﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>修改调查信息</TITLE>
	    
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
       
	</head>
<%
  String id="";
 
   %>
<script language="javascript">

function gows()
{
	document.location.href="diaochaxinxi_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>
	<body>
			<form action="updateDiaochaxinxi.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改调查信息<input type="hidden" name="id" value="${diaochaxinxi.id}" /></td>
						</tr>
						<tr ><td width="200">调查编号：</td><td><input name='diaochabianhao' type='text' id='diaochabianhao' value='' onblur='hsgcheck()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeldiaochabianhao' /></td></tr>		<tr ><td width="200">话题名称：</td><td><select name='huatimingcheng' id='huatimingcheng' style=' height:19px; border:solid 1px #000000; color:#666666'><%=connDbBean.hsggetoption("huatixinxi","huatimingcheng")%></select>&nbsp;*<label id='clabelhuatimingcheng' /></td></tr>		<tr ><td width="200">调查名称：</td><td><input name='diaochamingcheng' type='text' id='diaochamingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeldiaochamingcheng' /></td></tr>		<tr ><td width="200">参与人数：</td><td><input name='canyurenshu' type='text' id='canyurenshu' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelcanyurenshu' /></td></tr>		<tr ><td width="200">调查值：</td><td><input name='diaochazhi' type='text' id='diaochazhi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">总值：</td><td><input name='zongzhi' type='text' id='zongzhi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">公司编号：</td><td><input name='gongsibianhao' type='text' id='gongsibianhao' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=(String)request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.diaochabianhao.value='${diaochaxinxi.diaochabianhao}';</script>	<script language="javascript">document.form1.huatimingcheng.value='${diaochaxinxi.huatimingcheng}';</script>	<script language="javascript">document.form1.diaochamingcheng.value='${diaochaxinxi.diaochamingcheng}';</script>	<script language="javascript">document.form1.canyurenshu.value='${diaochaxinxi.canyurenshu}';</script>	<script language="javascript">document.form1.diaochazhi.value='${diaochaxinxi.diaochazhi}';</script>	<script language="javascript">document.form1.zongzhi.value='${diaochaxinxi.zongzhi}';</script>	<script language="javascript">document.form1.gongsibianhao.value='${diaochaxinxi.gongsibianhao}';</script>	
					 </table>
			</form>
   </body>
</html>






<script language=javascript >  
 
 function checkform(){  
 
	var diaochabianhaoobj = document.getElementById("diaochabianhao"); if(diaochabianhaoobj.value==""){document.getElementById("clabeldiaochabianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入调查编号</font>";return false;}else{document.getElementById("clabeldiaochabianhao").innerHTML="  "; } 	var huatimingchengobj = document.getElementById("huatimingcheng"); if(huatimingchengobj.value==""){document.getElementById("clabelhuatimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入话题名称</font>";return false;}else{document.getElementById("clabelhuatimingcheng").innerHTML="  "; } 	var diaochamingchengobj = document.getElementById("diaochamingcheng"); if(diaochamingchengobj.value==""){document.getElementById("clabeldiaochamingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入调查名称</font>";return false;}else{document.getElementById("clabeldiaochamingcheng").innerHTML="  "; } 	var canyurenshuobj = document.getElementById("canyurenshu"); if(canyurenshuobj.value==""){document.getElementById("clabelcanyurenshu").innerHTML="&nbsp;&nbsp;<font color=red>请输入参与人数</font>";return false;}else{document.getElementById("clabelcanyurenshu").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
