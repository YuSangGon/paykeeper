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
            list: {  // 회사 목록
                text: '가게 목록',
                click: listUp,
            },
            add: {
                text: '가게 추가',
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
