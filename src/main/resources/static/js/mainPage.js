$(function() {
    var mapContainer = document.getElementById('map'),
        mapOption = {
            center : new kakao.maps.LatLng(33.450701, 126.570667),
            level: 3,
        };

    var map = new kakao.maps.Map(mapContainer, mapOption);

    postions.forEach(pos => {
        new kakao.maps.Marker({
            position: new kakao.maps.LatLng(
                pos.latitude,
                pos.longitude
            )
        }).setMap(map);
    })



});