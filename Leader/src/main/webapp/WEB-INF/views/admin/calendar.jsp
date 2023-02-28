<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../side.jsp"%>
  <%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src='dist/index.global.js'></script>
<script>
document.addEventListener('DOMContentLoaded', function () {
    $(function () {
        var request = $.ajax({
            url: "/adminCalendar.mdo", // 변경하기
            method: "GET",
            dataType: "json"
        });

        request.done(function (data) {
            console.log(data); // log 로 데이터 찍어주기.

            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                headerToolbar: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
                },
                eventClick: function(arg) {
                    if (confirm('Are you sure you want to delete this event?')) {
                      arg.event.remove()
                    }
                  },
                editable: true,
                displayEventTime: false,
                droppable: true, // this allows things to be dropped onto the calendar
                drop: function (arg) {
                    // is the "remove after drop" checkbox checked?
                    if (document.getElementById('drop-remove').checked) {
                        // if so, remove the element from the "Draggable Events" list
                        arg.draggedEl.parentNode.removeChild(arg.draggedEl);
                    }
                },
                /**
                 * data 로 값이 넘어온다. log 값 전달.
                 */
                events: data
            });

            calendar.render();
        });

        request.fail(function( jqXHR, textStatus ) {
            alert( "Request failed: " + textStatus );
        });
    });

});
 

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }

</style>
</head>
<body>
	<form name="calendarFrm">
  <div id='calendar'></div>
	</form>
</body>
</html>