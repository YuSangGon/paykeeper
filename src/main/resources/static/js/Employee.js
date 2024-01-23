var calendar;
$(function() {

    var calendarEl = document.getElementById('calendar');

    calendar = new FullCalendar.Calendar(calendarEl, {
        headerToolbar : {
            left: 'list add',
            center: 'title',
            right: 'today prev next',
        },
        customButtons: {
            list: {  // 알바 장소 목록 리스트
                text: '알바 목록',
                click: listUp,
            },
            add: {
                text: '알바 추가',
                click: function() {

                }
            }
        },
        initialView: 'dayGridMonth',
        dateClick: function(info) {
            $('#inputModalTrigger').trigger('click');
        },
    });

    calendar.render();

});

const listUp = () => {
    // alert("clicked!!");
    $('#listModalTrigger').trigger('click');
}
