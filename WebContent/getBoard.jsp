<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 
	EL(Expression Language)
	session�̳� request ���尴ü�� ����� �����͸� JSPȭ�鿡 ����ϱ� ���� ǥ����

	JSTL(JSP Standard Tag Library)
	JSP ���Ͽ��� if, for, switch ��� ���� �ڹ� �ڵ带 ��ü�ϴ� ǥ�� �׼� �±�
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ��</title>
</head>
<body>
	<center>
	<h3>�� ��</h3>
	<h3><font color="red">${userName }</font>�� ȯ���մϴ�.</h3>
	<a href="logout.do">Log-out</a>
	<hr>
	<form action="updateBoard.do" method="post">
	<input name="seq" type="hidden" value="${board.seq }"/>
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td bgcolor="orange">����</td>
				<td align="left"><input name="title" type="text" value="${board.title }"/></td>
			</tr>
			<tr>
				<td bgcolor="orange">�ۼ���</td>
				<td align="left">${board.writer }</td>
			</tr>
			<tr>
				<td bgcolor="orange">����</td>
				<td align="left"><textarea name="content" cols="40" rows="10">${board.content }</textarea></td>
			</tr>
			<tr>
				<td bgcolor="orange">�����</td>
				<td align="left">${board.regDate }</td>
			</tr>
			<tr>
				<td bgcolor="orange">��ȸ��</td>
				<td align="left">${board.cnt }</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="�� ����"/>
				</td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="insertBoard.html">�۵��</a>&nbsp;&nbsp;&nbsp;
	<c:if test="${userRole == 'Admin' }">
		<a href="deleteBoard.do?seq=${board.seq }">�ۻ���</a>&nbsp;&nbsp;&nbsp;
	</c:if>
	<a href="getBoardList.do">�۸��</a>
	</center>
</body>
</html>





