<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>ģ�����RFID��ǩ����</title>
</head>
<body>
<h1>ģ�����RFID��ǩ����</h1>
<form action="/meeting/admin/base/rfidTagTrigger.action" method="post">
	&nbsp;&nbsp;����ID��<input type="text" name="meetingId" value="166"/>
	<br/>
	ǩ���¼���<input type="text" name="rfidSignIn.signEvent" value="����ǩ��"/>
	<br/>
	&nbsp;&nbsp;��ǩID��<input type="text" name="rfidSignIn.tagId" value="950001"/>
	<br/>
	
	<input type="submit" value="ǩ��" />
</form>

<br>
<a href="/meeting/admin/base/rfidTagTrigger.action?meetingId=167&rfidSignIn.tagId=950001&rfidSignIn.signEvent=����ǩ��">����ǩ��</a>
</body>
</html>