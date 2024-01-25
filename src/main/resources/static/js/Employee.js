var calendar;
$(function() {

    var calendarEl = document.getElementById('calendar');

    calendar = new FullCalendar.Calendar(calendarEl, {
        timeZone: 'KST',
        headerToolbar : {
            left: 'prev',
            center: 'title',
            right: 'next',
        },
        footerToolbar : {
            left: 'list add',
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
                    $(`#addCompany`).modal("show");
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
            // console.log(info);
            $('#startAt').val(info.dateStr + ' 00:00');
            $('#endAt').val(info.dateStr + ' 00:00');
            $('#inputModal').modal('show');
        },
        eventClick: function (info) {
            console.log(info.event);
        },
        editable: false,
        dayMaxEvents: 3,
        locale: 'ko',
        expandRows: true,
        navLinks: false,
    });

    calendar.render();

    (function() {
        const origin = $('#fc-dom-1').text();
        $('#fc-dom-1').text(`${origin} (전체)`);
    })();

    $('li[id^="list"]').off().click(function() {
        $(this).siblings('li').removeClass('active');
        $(this).addClass('active');

        $('#listModal').modal('hide');

        let origin = $('#fc-dom-1').text();
        const idx = origin.indexOf('(');

        origin = origin.slice(0, idx);

        $('#fc-dom-1').text(`${origin} (${$(this).text()})`);

    })

    // Datetimepicker initialize
    $('#startAt').bootstrapMaterialDatePicker({
        year: true,
        date: true,
        time: true,
        format: 'yyyy-MM-DD HH:mm'
    });

    $('#endAt').bootstrapMaterialDatePicker({
        year: true,
        date: true,
        time: true,
        format: 'yyyy-MM-DD HH:mm'
    });


    $('#perPay').off().on("propertychange change keyup paste input",function() {
        const start = new Date($('#startAt').val());
        const end = new Date($('#endAt').val());

        const diffMSec = end.getTime() - start.getTime();
        const diffDate = Math.round(diffMSec / ( 60 * 60 * 100 )) / 10;

        if($(this).val() === '') {
            $('#totalPay').val('');
        } else {
            $('#totalPay').val(`${diffDate} * ${$(this).val()} = ${diffDate * Number($(this).val())}`)
        }
    })

    $('#inputModalClose').click(function() {
        $('#inputModal input').val('');
    })
    
    // 저장을 눌렀을 때,
    // 해당 Job을 테이블에 저장해두어야 함.
    // 어떤 회사에서 누가 알바를 얼마큼 했냐
    $('#jobSave').click(function() {
        const eventData = {
            title: $('#totalPay').val().split(' = ')[1],
            start: $('#startAt').val(),
            end: $('#endAt').val(),
            editable: false,
            display: 'block',
            allDay: true,
            timezone: 'KST',
        }

        if( eventData.start >= eventData.end) {
            alert("시간을 잘못 입력하였습니다.")
        } else {
            // console.log(eventData)
            calendar.addEvent(eventData);
            $('#inputModal').modal('hide');
            $('#inputModal input').val('');
        }
    })

});

const listUp = (e) => {
    // alert("clicked!!");
    console.log(e);
    $('#listModal').modal('show');
}
