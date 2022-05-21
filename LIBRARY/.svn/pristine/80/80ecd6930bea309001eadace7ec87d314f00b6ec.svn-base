<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/book/newBookSlide.css" rel="stylesheet">
<link href='${pageContext.request.contextPath}/resources/fullcalendar-5.11.0/lib/main.css' rel='stylesheet' />
<script src="/resources/fullcalendar-5.11.0/lib/main.js"></script>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('calendar');

	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    googleCalendarApiKey: 'AIzaSyD0lcip5CzP0Ytmssc6U56vXYD2uZq-Wz8',
	    eventSources: [
	    {
	          googleCalendarId: 'ko.south_korea#holiday@group.v.calendar.google.com',
	          className: '공휴일',
	          color: '#be5683', //rgb,#ffffff 등의 형식으로 할 수 있어요.
	          //textColor: 'black' 
	        }/*,
	      {
	          googleCalendarId: '여기에 구글 캘린더 ID를 붙여넣기하시면 됩니다.',
	          className: '늘봄 휴관일',
	            color: '#204051',
	            //textColor: 'black' 
	        },*/

	    ]
	  });
	  calendar.render();
	});
</script>


<style type="text/css">
#calendar{
width:60%;
margin: 20px auto;
}
</style>
</head>

<body>
<div class="container">

<div id='calendar'></div>

</div>


</body>
</html>