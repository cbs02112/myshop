<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="myshop.board.*"%>

<% 	String goods_code = request.getParameter("goods_code");
	int code = 0;

	MyShopDAO goodsDAO = MyShopDAO.getInstance();//new myshopDAO();
	MyShopDTO dto = new MyShopDTO();
	if(goods_code != null)
	{
	dto = goodsDAO.detailGoods(Integer.parseInt(goods_code));
	}
	
%>

<% 
  int num=0,ref=1,re_step=0,re_level=0;
  try{  
    if(request.getParameter("num")!=null){
		num=Integer.parseInt(request.getParameter("num"));
		ref=Integer.parseInt(request.getParameter("ref"));
		re_step=Integer.parseInt(request.getParameter("re_step"));
		re_level=Integer.parseInt(request.getParameter("re_level"));
		}
%>
   
<body bgcolor="eaeaea">  
<center><b>글쓰기</b><br>
<form method="post" name="goodsQnaWrite" action="goodsQnaWritePro.jsp" onsubmit="return writeSave()">
		<input type="hidden" name="num" value="<%=num%>">
		<input type="hidden" name="ref" value="<%=ref%>">
		<input type="hidden" name="re_step" value="<%=re_step%>">
		<input type="hidden" name="re_level" value="<%=re_level%>">
		<input type="hidden" name="goods_code" value="<%=goods_code%>">

<table width="400" border="1" cellspacing="0" cellpadding="0"  bgcolor="eaeaea" align="center">
   <tr>
   	<td align="right" colspan="2" bgcolor="eaeaea">
	    <a href="goodsQnaList.jsp"> 글목록</a> 
   </td>
   </tr>
   <tr>
   	<th width="70"  bgcolor="eaeaea" align="center">이 름</th>
   	<td width="330">
       <input type="text" size="10" maxlength="10" name="writer"></td>
  </tr>
  <tr>
    <th width="70"  bgcolor="eaeaea" align="center" >제 목</th>
    <td width="330">
    <%// if(request.getParameter("num")==null){ %>
       <input type="text" size="40" maxlength="50" name="subject"></td>
	<%// }else{ %>
	   <input type="text" size="40" maxlength="50" name="subject" value="[답변]"></td>
	<%// } %>
  </tr>
  <tr>
    <th width="70"  bgcolor="eaeaea" align="center">Email</th>
    <td width="330">
       <input type="text" size="40" maxlength="30" name="email"></td>
  </tr>
  <tr>
    <th width="70"  bgcolor="eaeaea" align="center" >내 용</th>
    <td width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>
  <tr>
    <th width="70"  bgcolor="eaeaea" align="center" >비밀번호</th>
    <td width="330" >
     <input type="password" size="8" maxlength="12" name="passwd"> 
	</td>
  </tr>
  <tr>      
 	<td colspan=2 bgcolor="eaeaea" align="center"> 
  	<input type="submit" value="글쓰기" >  
  	<input type="reset" value="다시작성">
  	<input type="button" value="목록보기" OnClick="window.location='goodsQnaList.jsp'">
	</td>
  </tr>
  </table>
  
	<%
	  }catch(Exception e){}
	%>