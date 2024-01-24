var calendar;
$(function () {

    var calendarEl = document.getElementById('calendar');

    calendar = new FullCalendar.Calendar(calendarEl, {
        headerToolbar: {
            left: 'list add',
            center: 'title',
            right: 'today prev next',
        },
        customButtons: {
            list: {  // 회사 목록
                text: '알바 목록',
                click: listUp,
            },
            add: {
                text: '가게 등록',
                click: addCompany,
            },
        },
        initialView: 'dayGridMonth',
        dateClick: function (info) {
            $('#inputModalTrigger').trigger('click');
        },
    });

    calendar.render();

    // 주소찾기 클릭 시 Kakao 주소 검색 api 띄우기
    $('#addressBtn').click(function () {
        const width = 500;
        const height = 600;
        new daum.Postcode({
            width: width,
            height: height,
            // 주소 검색 완료시, 받은 정보를 토대로 input 필드 채워넣기
            oncomplete: function (data) {
                $('#address').val(data.roadAddress + `${data.buildingName !== undefined ? ' ' + data.buildingName : ''}`);
                $('#detailAddress').focus();
            },
        }).open({
            autoClose: true,
            left: (window.screen.width / 2) - (width / 2),
            top: (window.screen.height / 2) - (height / 2),
        });
    })

});

const listUp = () => {
    // alert("clicked!!");
    $('#listModalTrigger').trigger('click');
}

const addCompany = () => {
    $('#createModalTrigger').trigger('click');

    $('#createBtn').off().click(function () {
        $(this).siblings('button').trigger('click');
        $('#showCodeModalTrigger').trigger('click');
        searchGeocoder($('#address').val())
    })
}

function searchGeocoder(address) {
    const geocoder = new kakao.maps.services.Geocoder();
    geocoder.addressSearch(address, function (result, status) {
        if (status === kakao.maps.services.Status.OK) {
            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
            createCompany(coords);
        }
    })
}

function createCompany(geo) {
    $.ajax({
        type: "GET",
        url: "/employer/createCode"
    }).done((response) => {

        const companyInfo = {
            name: $('#name').val(),
            code: response,
            payFrequency: $('input[name="frequency"]:checked').val(),
            state: $('#recruiting:checked') !== undefined,
            address: `${$('#address').val()} ${$('#detailAddress').val()}`,
            latitude: geo.Ma,
            longitude: geo.La,
        };

        saveCompany(companyInfo);
    });
}

function saveCompany(data) {
    $.ajax({
        type: "POST",
        url: "/employer/saveCompany",
        contentType: "application/json;charset=utf-8",
        data: JSON.stringify(data),
    }).done((response) => {
        if(!response) {
            alert("오류 발생!! 다시 시도 해주세요");
            return;
        }
        const res = `
                        Employee can register your company, using this code : <br>
                        <span class="fs-2">${data.code}</span>
                        &nbsp;
                        <span id="copyCode" class="cursor-pointer fs-4"><i class="fa-regular fa-clipboard"></i></span>
                    `;

        $('#showCodeModal .modal-body').html(res);
        copyCode(data.code);
    });
}

function copyCode(code) {
    $('#copyCode').click(function () {
        window.navigator.clipboard.writeText(code).then(() => {
            $(this).html(`<i class="fa-solid fa-check"></i>`);
            setTimeout(() => {
                $(this).html(`<i class="fa-regular fa-clipboard"></i>`);
            }, 1000);
        });
    });
}
