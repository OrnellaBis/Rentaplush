import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
    const mapElement = document.getElementById('map');
    // only build a map if there's a div#map to inject into
    if (mapElement) {
        mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
        const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v10'
        });

        const markers = JSON.parse(mapElement.dataset.markers);
        markers.forEach((marker) => {
            new mapboxgl.Marker()
                .setLngLat([ marker.lng, marker.lat ])
                .addTo(map);
        });

        map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));
        addMarkersToMap(map, markers);
        fitMapToMarkers(map, markers);
    }
};

const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 0 });
};

const addMarkersToMap = (map, markers) => {
    markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window);

        // Create a HTML element for your custom marker
        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url('${marker.image_url}')`;
        element.style.backgroundSize = 'cover';
        element.style.width = '50px';
        element.style.height = '50px';

        // Pass the element as an argument to the new marker
        new mapboxgl.Marker(element)
            .setLngLat([marker.lng, marker.lat])
            .setPopup(popup)
            .addTo(map);
    });
};

export { initMapbox };
