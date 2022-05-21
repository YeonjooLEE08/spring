$(document).ready(function(){
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
});