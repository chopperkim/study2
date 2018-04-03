<%@page import="com.study.board.service.BoardServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>    
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>타이틀을 입력하세요!!</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
  </head>  
<body>
<div class="container">
<jsp:useBean id="board" class="com.study.board.vo.Board" />
<jsp:setProperty property="*" name="board"/>
<%
	board.setBo_ip( request.getRemoteAddr() );
	BoardServiceImpl boardService = new BoardServiceImpl();
	int cnt = boardService.registBoard(board);
 
	if(cnt > 0){
	%>
	<div class="row text-center" >
		<div class="alert alert-info col-md-4 col-md-offset-4">
			글 등록 성공 	
		</div>
	</div>
	<%		
	}else{
	%>	
	<div class="row">
		글 등록 실패
	</div>
	<%	
	}
	%>

<div class="row">
	<div class="col-md-6 col-xs-4">
		<a href="boardList.jsp" class="btn btn-sm btn-warning">목록으로</a>
	</div>
</div>	
</div>
</body>
</html>














