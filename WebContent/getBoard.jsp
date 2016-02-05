<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 
	EL(Expression Language)
	session이나 request 내장객체에 저장된 데이터를 JSP화면에 출력하기 위한 표현식

	JSTL(JSP Standard Tag Library)
	JSP 파일에서 if, for, switch 등과 같은 자바 코드를 대체하는 표준 액션 태그
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>글 상세</title>
</head>
<body>
	<center>
	<h3>글 상세</h3>
	<h3><font color="red">${userName }</font>님 환영합니다.</h3>
	<a href="logout.do">Log-out</a>
	<hr>
	<form action="updateBoard.do" method="post">
	<input name="seq" type="hidden" value="${board.seq }"/>
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td bgcolor="orange">제목</td>
				<td align="left"><input name="title" type="text" value="${board.title }"/></td>
			</tr>
			<tr>
				<td bgcolor="orange">작성자</td>
				<td align="left">${board.writer }</td>
			</tr>
			<tr>
				<td bgcolor="orange">내용</td>
				<td align="left"><textarea name="content" cols="40" rows="10">${board.content }</textarea></td>
			</tr>
			<tr>
				<td bgcolor="orange">등록일</td>
				<td align="left">${board.regDate }</td>
			</tr>
			<tr>
				<td bgcolor="orange">조회수</td>
				<td align="left">${board.cnt }</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글 수정"/>
				</td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="insertBoard.html">글등록</a>&nbsp;&nbsp;&nbsp;
	<c:if test="${userRole == 'Admin' }">
		<a href="deleteBoard.do?seq=${board.seq }">글삭제</a>&nbsp;&nbsp;&nbsp;
	</c:if>
	<a href="getBoardList.do">글목록</a>
	</center>
</body>
</html>






