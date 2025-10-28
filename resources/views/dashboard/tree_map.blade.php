@extends('layouts.app')
@section('title')
    | {{ $page_title }}
@endsection

@section('content')
    <!-- Body main section starts -->
    <main>
        <div class="container-fluid">

            <!-- Breadcrumb start -->
            <div class="row m-1">
                <div class="col-12">
                    <h4 class="main-title mb-3">🌳 Tree Location Map</h4>
                    <p class="text-muted">Track and monitor all planted trees across projects</p>
                </div>
            </div>

            <!-- Stats Cards -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <h3 class="text-primary" style="font-size: 32px;">{{ count($trees) }}</h3>
                            <p class="text-muted mb-0">Total Trees Mapped</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <h3 class="text-primary" style="font-size: 32px;">{{ $trees->unique('project_id')->count() }}
                            </h3>
                            <p class="text-muted mb-0">Active Projects</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <h3 class="text-primary" style="font-size: 32px;">100%</h3>
                            <p class="text-muted mb-0">Location Coverage</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Map Container -->
            <div class="row mb-3">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body p-0">
                            <div id="map" style="width: 100%; height: 600px;"></div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Tree List -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title mb-3">📍 Tree Locations</h5>
                            <div style="max-height: 400px; overflow-y: auto;">
                                @foreach ($trees as $tree)
                                    <div class="tree-item p-3 border-bottom"
                                        style="cursor: pointer; transition: background 0.3s;"
                                        onclick="focusOnTree({{ $tree->latitude }}, {{ $tree->longitude }}, {{ $tree->id }})"
                                        onmouseover="this.style.background='#f8f9fa'"
                                        onmouseout="this.style.background='white'">
                                        <div style="font-weight: 600; color: #333; margin-bottom: 4px;">
                                            🌲 {{ $tree->tree_name }}
                                        </div>
                                        <div style="font-size: 13px; color: #666;">
                                            {{ $tree->address ?? 'No address provided' }}
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </main>
    <!-- Body main section ends -->

    <style>
        .gm-style-iw-d {
            overflow: auto !important;
        }

        .info-window h5 {
            color: #667eea;
            margin-bottom: 8px;
        }

        .info-window p {
            margin: 5px 0;
            font-size: 14px;
            color: #555;
        }

        .info-window strong {
            color: #333;
        }
    </style>

    <script>
        let map;
        let markers = [];
        let infoWindows = [];

        // Trees data from Laravel
        const trees = @json($trees);
        const geocoder = new google.maps.Geocoder();

        function initMap() {
            const defaultCenter = {
                lat: 26.8467,
                lng: 80.9462
            };

            map = new google.maps.Map(document.getElementById('map'), {
                zoom: 12,
                center: trees.length > 0 ? {
                    lat: parseFloat(trees[0].latitude),
                    lng: parseFloat(trees[0].longitude)
                } : defaultCenter,
                mapTypeId: 'roadmap',
                styles: [{
                    featureType: "poi",
                    elementType: "labels",
                    stylers: [{
                        visibility: "off"
                    }]
                }]
            });

            const coordinateCount = {};

            // Add markers for each tree
            trees.forEach((tree, index) => {
                let lat = parseFloat(tree.latitude);
                let lng = parseFloat(tree.longitude);
                const coordKey = `${lat},${lng}`;

                // Offset slightly if another tree has same coordinates
                if (coordinateCount[coordKey]) {
                    const offset = coordinateCount[coordKey] * 0.00005;
                    lat = lat + offset;
                    lng = lng + offset;
                    coordinateCount[coordKey]++;
                } else {
                    coordinateCount[coordKey] = 1;
                }

                const position = {
                    lat,
                    lng
                };

                const marker = new google.maps.Marker({
                    position: position,
                    map: map,
                    title: tree.tree_name,
                    icon: {
                        url: 'data:image/svg+xml;charset=UTF-8,' + encodeURIComponent(`
                            <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 384 512">
                                <path fill="#EA4335" d="M172.268 501.67C26.97 291.031 0 269.413 0 192 
                                0 85.961 85.961 0 192 0s192 85.961 192 192c0 77.413-26.97 
                                99.031-172.268 309.67-9.535 13.774-29.93 
                                13.773-39.464 0zM192 272c44.183 0 80-35.817 
                                80-80s-35.817-80-80-80-80 35.817-80 
                                80 35.817 80 80 80z"/>
                            </svg>
                        `),
                        scaledSize: new google.maps.Size(38, 48),
                        anchor: new google.maps.Point(19, 48)
                    },
                    animation: google.maps.Animation.DROP
                });

                // Simple info window
                const infoWindow = new google.maps.InfoWindow({
                    content: `
                        <div class="info-window" style="padding: 12px; min-width: 280px;">
                            <h5 style="color: #EA4335; margin-bottom: 12px; font-size: 17px; font-weight: 600;">
                                🌳 ${tree.tree_name}
                            </h5>
                            <p style="margin: 6px 0; font-size: 13px; color: #555;">
                                <strong style="color: #333;">🆔 Tree ID:</strong> #${tree.id}
                            </p>
                            <p style="margin: 6px 0; font-size: 13px; color: #555;">
                                <strong style="color: #333;">📍 Address:</strong> ${tree.address || 'Address not available'}
                            </p>
                            <p style="margin: 6px 0; font-size: 12px; color: #999;">
                                <strong>Coordinates:</strong> ${lat}, ${lng}
                            </p>
                        </div>
                    `,
                    maxWidth: 350
                });

                marker.addListener('click', () => {
                    infoWindows.forEach(iw => iw && iw.close());
                    infoWindow.open(map, marker);
                });

                markers.push(marker);
                infoWindows.push(infoWindow);
            });

            // Fit map to show all markers
            if (trees.length > 0) {
                const bounds = new google.maps.LatLngBounds();
                markers.forEach(marker => bounds.extend(marker.getPosition()));
                map.fitBounds(bounds);
            }
        }

        function focusOnTree(lat, lng, treeId) {
            const markerIndex = trees.findIndex(t => t.id === treeId);
            if (markerIndex !== -1) {
                const position = markers[markerIndex].getPosition();
                map.setCenter(position);
                map.setZoom(16);
                infoWindows.forEach(iw => iw.close());
                infoWindows[markerIndex].open(map, markers[markerIndex]);
                markers[markerIndex].setAnimation(google.maps.Animation.BOUNCE);
                setTimeout(() => markers[markerIndex].setAnimation(null), 2000);
            }
        }

        window.onload = function() {
            initMap();
        };
    </script>

    <!-- Google Maps API -->
    <script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAPS_API_KEY') }}&callback=initMap" async defer>
    </script>
@endsection
