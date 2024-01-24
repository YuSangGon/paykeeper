var calendar;
$(function() {

    var calendarEl = document.getElementById('calendar');

    calendar = new FullCalendar.Calendar(calendarEl, {
        headerToolbar : {
            left: 'list add',
            center: 'title',
            right: 'today prev next',
        },
        footerToolbar : {
          right: 'delete',
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
            },
            delete: {
                text: '그만 두기',
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

    $('#perPay').off().on("propertychange change keyup paste input",function() {
        const start = $('#startAt').val();
        const end = $('#endAt').val();

        if($(this).val() === '') {
            $('#totalPay').val('');
        } else {
            $('#totalPay').val(`4 * ${$(this).val()} = ${4 * Number($(this).val())}`)
        }
    })

});

const listUp = () => {
    // alert("clicked!!");
    $('#listModalTrigger').trigger('click');
}
