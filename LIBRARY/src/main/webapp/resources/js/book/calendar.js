$(document).ready(function(){
document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {
    googleCalendarApiKey: 'AIzaSyD0lcip5CzP0Ytmssc6U56vXYD2uZq-Wz8',
    eventSources: [
    {
          googleCalendarId: 'ko.south_korea#holiday@group.v.calendar.google.com',
          className: '공휴일',
          color: '#ffffff' //rgb,#ffffff 등의 형식으로 할 수 있어요.
          //textColor: 'black' 
        },
      {
          googleCalendarId: 'o4bmtultrdr3k2uljoa8bg38m4@group.calendar.google.com',
          className: '늘봄도서관',
            color: '#be5683'
            //textColor: 'black' 
        }

    ]
  });
  calendar.render();
});
});