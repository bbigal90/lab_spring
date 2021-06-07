<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% StringBuilder path = new StringBuilder(request.getContextPath());
path.append("/"); %>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>게시판 구현 - WebContent/board</title>
    <!-- jEasyUI 시작 -->
    <link
      rel="stylesheet"
      type="text/css"
      href="<%=path.toString() %>themes/default/easyui.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="<%=path.toString() %>themes/icon.css"
    />
    <!-- jEasyUI JS 시작 -->
    <script
      type="text/javascript"
      src="<%=path.toString() %>js/jquery.min.js"
    ></script>
    <script
      type="text/javascript"
      src="<%=path.toString() %>js/jquery.easyui.min.js"
    ></script>
    <script>
      function search() {
        $('#dg_board').datagrid({
          url: 'jsonGetBoardList.sp4',
        });
      }
    </script>
    <script>
      function ins() {
        $('#dlg_board').dialog('open')
      }
    </script>
  </head>
  <body>
    <script type="text/javascript">
      $(document).ready(function () {
        $('#dg_board').datagrid({
          toolbar: '#tb_board2'
        });
      });
    </script>
    <!-- http://localhost:9000/board/jsonGetBoardList.sp4 -->
    <table id="dg_board" class="easyui-datagrid" data-options="title:'게시판'"
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
    </table>
    <div id="tb_board2" style="padding: 2px 5px">
		<a href="javascript:search()" class="easyui-linkbutton" iconCls="icon-search"
			plain="true" id="icon-search"> 조회</a> 
		<a href="javascript:ins()" class="easyui-linkbutton" iconCls="icon-edit" plain="true"> 입력</a> 
		<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"> 저장</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove"	plain="true">삭제</a>
	</div>
	<!----------------------글쓰기 화면 시작 --------------------------->
	    <div id="dlg_board" class="easyui-dialog" title="글쓰기" data-options="iconCls:'icon-save',closed:'false'" 
	    	style="width:600px;height:350px;padding:10px">
            <form id="ff" method="post">
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="name" style="width:100%" data-options="label:'Name:',required:true">
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="email" style="width:100%" data-options="label:'Email:',required:true,validType:'email'">
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="subject" style="width:100%" data-options="label:'Subject:',required:true">
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="message" style="width:100%;height:60px" data-options="label:'Message:',multiline:true">
            </div>
            <div style="margin-bottom:20px">
                <select class="easyui-combobox" name="language" label="Language" style="width:100%"><option value="ar">Arabic</option><option value="bg">Bulgarian</option><option value="ca">Catalan</option><option value="zh-cht">Chinese Traditional</option><option value="cs">Czech</option><option value="da">Danish</option><option value="nl">Dutch</option><option value="en" selected="selected">English</option><option value="et">Estonian</option><option value="fi">Finnish</option><option value="fr">French</option><option value="de">German</option><option value="el">Greek</option><option value="ht">Haitian Creole</option><option value="he">Hebrew</option><option value="hi">Hindi</option><option value="mww">Hmong Daw</option><option value="hu">Hungarian</option><option value="id">Indonesian</option><option value="it">Italian</option><option value="ja">Japanese</option><option value="ko">Korean</option><option value="lv">Latvian</option><option value="lt">Lithuanian</option><option value="no">Norwegian</option><option value="fa">Persian</option><option value="pl">Polish</option><option value="pt">Portuguese</option><option value="ro">Romanian</option><option value="ru">Russian</option><option value="sk">Slovak</option><option value="sl">Slovenian</option><option value="es">Spanish</option><option value="sv">Swedish</option><option value="th">Thai</option><option value="tr">Turkish</option><option value="uk">Ukrainian</option><option value="vi">Vietnamese</option></select>
            </div>
        </form>
    </div>

	<!----------------------글쓰기 화면 끝 ----------------------------->
  </body>
</html>
