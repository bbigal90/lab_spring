<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	StringBuilder path = new StringBuilder(request.getContextPath());
	path.append("/");
%>    
<html>
<head>
<meta charset="UTF-8">
<title>게시판 구현 - WEB-INF/View</title>
<!-- jEasyUI 시작 -->
<link rel="stylesheet" type="text/css" href="<%=path.toString() %>themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=path.toString() %>themes/icon.css"> 
<!-- jEasyUI JS 시작 -->
<script type="text/javascript" src="<%=path.toString() %>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path.toString() %>js/jquery.easyui.min.js"></script>   

</head>
<body>
<!-- http://localhost:9000/board/jsonGetBoardList.sp4  -->
	<table class="easyui-datagrid"
		data-options="url:'./jsonGetBoardList.sp4',title:'게시판', toolbar:'#tb_board'"
		style="width: 1200px; height: 500px">

		<thead>
			<tr>
				<th data-options="field:'BM_NO'" style="width: 100px">글번호</th>
				<th data-options="field:'BM_TITLE'" style="width: 350px">제목</th>
				<th data-options="field:'BM_DATE'" style="width: 150px">작성일</th>
				<th data-options="field:'BS_FILE'" style="width: 200px">첨부파일</th>
				<th data-options="field:'BM_HIT'" style="width: 100px">조회수</th>
			</tr>
		</thead>
<!-- 		<tbody>
			<tr>
				<td>001</td>
				<td>name1</td>
				<td>2323</td>
			</tr>
			<tr>
				<td>002</td>
				<td>name2</td>
				<td>4612</td>
			</tr>
		</tbody> -->
	</table>
	<div id="tb_board" style="padding: 2px 5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-search"
			plain="true" id="icon-search"> 조회</a> 
		<a href="#" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true"> 수정</a> 
		<a href="#"
			class="easyui-linkbutton" iconCls="icon-save" plain="true"> 저장</a> <a
			href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">삭제</a>
	</div>
</body>
</html>