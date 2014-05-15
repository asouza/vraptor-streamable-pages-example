<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
</head>
<body>
	<p>inicio</p>	
	${streamer.jsp(pageContext.out).local(8080).unorder("index/pagelet1", "index/pagelet2").await()}
	<p>footer</p>	
</body>
</html>
