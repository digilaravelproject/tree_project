@extends('layouts.app')

@section('title')
    | {{ $page_title }}
@endsection

@section('content')
    <style>
        .filter-label {
            font-weight: 600;
            font-size: 13px;
            margin-bottom: 5px;
            color: #333;
        }

        .form-control,
        .form-select {
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 14px;
        }

        /* Custom Info Window Style */
        .gm-style-iw {
            padding: 0 !important;
            border-radius: 8px !important;
            overflow: hidden !important;
        }

        .tree-info-window {
            width: 350px;
            font-family: 'Roboto', sans-serif;
        }

        .tree-img-container {
            width: 100%;
            height: 150px;
            background-color: #f0f0f0;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .tree-img-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .tree-details {
            padding: 15px;
            max-height: 300px;
            overflow-y: auto;
        }

        .tree-row {
            display: flex;
            border-bottom: 1px solid #eee;
            padding: 6px 0;
            font-size: 13px;
        }

        .tree-row:last-child {
            border-bottom: none;
        }

        .tree-label {
            width: 40%;
            font-weight: bold;
            color: #555;
        }

        .tree-val {
            width: 60%;
            color: #333;
        }

        .map-container-wrapper {
            position: relative;
            width: 100%;
            height: 600px;
        }

        .map-layers-wrapper {
            position: absolute;
            top: 15px;
            left: 15px;
            z-index: 99;
        }

        .map-layers-trigger {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: #fff;
            border: none;
            box-shadow: 0 2px 6px rgba(0,0,0,0.2);
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            color: #555;
            font-size: 20px;
            transition: all 0.2s ease;
        }

        .map-layers-trigger:hover {
            background-color: #f8f9fa;
            color: #7cb342;
        }

        .map-layers-panel {
            position: absolute;
            top: 48px;
            left: 0;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            padding: 15px;
            width: 260px;
            display: none;
            z-index: 100;
        }

        .panel-section .section-title {
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            color: #777;
            margin-bottom: 10px;
            letter-spacing: 0.5px;
            border-bottom: 1px solid #eee;
            padding-bottom: 5px;
        }

        .type-grid {
            display: flex;
            gap: 10px;
        }

        .type-item {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            cursor: pointer;
            text-align: center;
        }

        .type-item span {
            font-size: 11px;
            margin-top: 5px;
            font-weight: 500;
            color: #333;
        }

        .type-icon-wrapper {
            width: 55px;
            height: 55px;
            border-radius: 8px;
            border: 2px solid transparent;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            transition: all 0.2s ease;
        }

        .type-item.active .type-icon-wrapper {
            border-color: #7cb342;
            box-shadow: 0 0 0 2px rgba(124, 179, 66, 0.2);
        }

        .roadmap-bg {
            background-color: #e8f0fe;
            color: #1a73e8;
        }
        .satellite-bg {
            background-color: #e6f4ea;
            color: #137333;
        }
        .terrain-bg {
            background-color: #fdf4e7;
            color: #b06000;
        }

        .details-grid {
            display: flex;
            gap: 15px;
            justify-content: space-around;
        }

        .detail-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            cursor: pointer;
            text-align: center;
        }

        .detail-item span {
            font-size: 11px;
            margin-top: 5px;
            font-weight: 500;
            color: #333;
        }

        .detail-icon-circle {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background-color: #f1f3f4;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #5f6368;
            font-size: 16px;
            transition: all 0.2s ease;
        }

        .detail-item.active .detail-icon-circle {
            background-color: #e8f0fe;
            color: #1a73e8;
        }
    </style>

    <main>
        <div class="container-fluid">
            <div class="row m-1">
                <div class="col-12">
                    <h4 class="main-title mb-3">🌳 Tree Location Map</h4>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="filterForm">
                                <div class="row">
                                    <div class="col-md-3 mb-2">
                                        <label class="filter-label">Select Project</label>
                                        <select class="form-select" name="project_id" id="project_id">
                                            <option value="">Select Project</option>
                                            @foreach ($projects as $proj)
                                                <option value="{{ $proj->id }}">{{ $proj->project_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    {{-- Start/End date filters removed per request --}}
                                    <div class="col-md-3 mb-2">
                                        <label class="filter-label">Ward Number</label>
                                        <select class="form-select" name="ward_plot_no" id="ward_plot_no">
                                            <option value="">Select Ward</option>
                                            @foreach ($wards as $ward)
                                                <option value="{{ $ward }}">{{ $ward }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3 mb-2">
                                        <label class="filter-label">Tree Number</label>
                                        <input type="text" class="form-control" name="tree_no" id="tree_no"
                                            placeholder="Enter Tree No">
                                    </div>
                                    <div class="col-md-3 mb-2">
                                        <label class="filter-label">Ownership</label>
                                        <select class="form-select" name="ownership" id="ownership">
                                            <option value="">Select Ownership</option>
                                            @foreach ($ownerships as $own)
                                                <option value="{{ $own }}">{{ $own }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3 mb-2 d-flex align-items-end">
                                        <button type="button" class="btn w-100" style="background-color: #7cb342; color: #ffffff;" id="btn-get-data"
                                            onclick="loadMapData()">
                                            <i class="fa fa-filter"></i> Get Data
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 text-end">
                    <span class="badge fs-6" style="background-color: #7cb342;">Total Trees Found: <span id="tree-count">0</span></span>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body p-0">
                            <div class="map-container-wrapper">
                                <div class="map-layers-wrapper">
                                    <button type="button" class="map-layers-trigger" id="map-layers-btn" title="Map Type & Details">
                                        <i class="ti ti-layers-difference"></i>
                                    </button>
                                    <div class="map-layers-panel" id="map-layers-panel">
                                        <div class="panel-section">
                                            <h6 class="section-title">Map Type</h6>
                                            <div class="type-grid">
                                                <div class="type-item" onclick="changeMapType('roadmap')" id="type-roadmap">
                                                    <div class="type-icon-wrapper roadmap-bg">
                                                        <i class="ti ti-map"></i>
                                                    </div>
                                                    <span>Default</span>
                                                </div>
                                                <div class="type-item active" onclick="changeMapType('hybrid')" id="type-hybrid">
                                                    <div class="type-icon-wrapper satellite-bg">
                                                        <i class="ti ti-satellite"></i>
                                                    </div>
                                                    <span>Satellite</span>
                                                </div>
                                                <div class="type-item" onclick="changeMapType('terrain')" id="type-terrain">
                                                    <div class="type-icon-wrapper terrain-bg">
                                                        <i class="ti ti-mountain"></i>
                                                    </div>
                                                    <span>Terrain</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-section mt-3">
                                            <h6 class="section-title">Map Details</h6>
                                            <div class="details-grid">
                                                <div class="detail-item" onclick="toggleMapDetail('traffic')" id="detail-traffic">
                                                    <div class="detail-icon-circle"><i class="ti ti-traffic-cone"></i></div>
                                                    <span>Traffic</span>
                                                </div>
                                                <div class="detail-item" onclick="toggleMapDetail('transit')" id="detail-transit">
                                                    <div class="detail-icon-circle"><i class="ti ti-bus"></i></div>
                                                    <span>Transit</span>
                                                </div>
                                                <div class="detail-item" onclick="toggleMapDetail('bicycling')" id="detail-bicycling">
                                                    <div class="detail-icon-circle"><i class="ti ti-bike"></i></div>
                                                    <span>Bicycling</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="map" style="width: 100%; height: 100%; border-radius: 4px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAPS_API_KEY') }}&callback=initMap" async defer>
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        let map;
        let markers = [];
        let infoWindow;
        const initialWards = @json($wards->toArray());

        $(document).ready(function() {
            // Project selection change listener
            $('#project_id').on('change', function() {
                const projectId = $(this).val();
                const $wardSelect = $('#ward_plot_no');
                
                if (projectId) {
                    $wardSelect.html('<option value="">Loading Wards...</option>');
                    $.ajax({
                        url: "/projects/" + projectId + "/wards",
                        type: "GET",
                        success: function(response) {
                            if (response.success) {
                                $wardSelect.html('<option value="">Select Ward</option>');
                                response.wards.forEach(ward => {
                                    $wardSelect.append('<option value="' + ward + '">' + ward + '</option>');
                                });
                            } else {
                                $wardSelect.html('<option value="">Select Ward</option>');
                            }
                        },
                        error: function() {
                            console.error('Error fetching wards');
                            $wardSelect.html('<option value="">Select Ward</option>');
                        }
                    });
                } else {
                    // Restore initial wards when no project is selected
                    $wardSelect.html('<option value="">Select Ward</option>');
                    initialWards.forEach(ward => {
                        $wardSelect.append('<option value="' + ward + '">' + ward + '</option>');
                    });
                }
            });
        });

        function initMap() {
            const defaultCenter = {
                lat: 20.5937,
                lng: 78.9629
            }; // India
            map = new google.maps.Map(document.getElementById('map'), {
                zoom: 5,
                center: defaultCenter,
                mapTypeId: 'hybrid', // Enable satellite view by default first time
                mapTypeControl: true,
                mapTypeControlOptions: {
                    style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
                    position: google.maps.ControlPosition.TOP_LEFT
                },
                streetViewControl: true
            });
            infoWindow = new google.maps.InfoWindow();
        }

        let trafficLayer = null;
        let transitLayer = null;
        let bicyclingLayer = null;

        // Toggle panel display
        $(document).on('click', '#map-layers-btn', function(e) {
            e.stopPropagation();
            $('#map-layers-panel').toggle();
        });

        // Close panel when clicking outside
        $(document).on('click', function(e) {
            if (!$(e.target).closest('.map-layers-wrapper').length) {
                $('#map-layers-panel').hide();
            }
        });

        function changeMapType(type) {
            if (map) {
                map.setMapTypeId(type);
                $('.type-item').removeClass('active');
                $('#type-' + type).addClass('active');
            }
        }

        function toggleMapDetail(layerName) {
            if (!map) return;
            
            const $item = $('#detail-' + layerName);
            const active = !$item.hasClass('active');
            
            if (active) {
                $item.addClass('active');
            } else {
                $item.removeClass('active');
            }

            if (layerName === 'traffic') {
                if (!trafficLayer) trafficLayer = new google.maps.TrafficLayer();
                trafficLayer.setMap(active ? map : null);
            } else if (layerName === 'transit') {
                if (!transitLayer) transitLayer = new google.maps.TransitLayer();
                transitLayer.setMap(active ? map : null);
            } else if (layerName === 'bicycling') {
                if (!bicyclingLayer) bicyclingLayer = new google.maps.BicyclingLayer();
                bicyclingLayer.setMap(active ? map : null);
            }
        }

        function loadMapData() {
            // Get current map bounds - always available after map init
            let bounds = map.getBounds();
            
            // If bounds don't exist (shouldn't happen), use map center with a default radius
            if (!bounds) {
                const center = map.getCenter();
                bounds = new google.maps.LatLngBounds(
                    new google.maps.LatLng(center.lat() - 5, center.lng() - 5),
                    new google.maps.LatLng(center.lat() + 5, center.lng() + 5)
                );
            }

            const ne = bounds.getNorthEast();
            const sw = bounds.getSouthWest();

            const formData = {
                project_id: $('#project_id').val(),
                ward_plot_no: $('#ward_plot_no').val(),
                tree_no: $('#tree_no').val(),
                girth: $('#girth').val(),
                ownership: $('#ownership').val(),
                // Map bounds (always send these)
                north_lat: ne.lat(),
                south_lat: sw.lat(),
                east_lng: ne.lng(),
                west_lng: sw.lng()
            };

            $('#btn-get-data').html('<i class="fa fa-spinner fa-spin"></i> Loading...').prop('disabled', true);

            $.ajax({
                url: "{{ route('tree.map') }}",
                type: "GET",
                data: formData,
                dataType: "json",
                success: function(response) {
                    if (response.success) {
                        $('#tree-count').text(response.count);
                        updateMapMarkers(response.trees);
                    } else {
                        alert('Error fetching data');
                    }
                },
                error: function(xhr) {
                    console.error(xhr);
                    alert('Error fetching tree data.');
                },
                complete: function() {
                    $('#btn-get-data').html('<i class="fa fa-filter"></i> Get Data').prop('disabled', false);
                }
            });
        }

        function updateMapMarkers(trees) {
            clearMarkers();
            if (trees.length === 0) {
                alert("No trees found for the selected filters in this zoomed area.");
                return;
            }

            trees.forEach(tree => {
                const lat = parseFloat(tree.latitude);
                const lng = parseFloat(tree.longitude);

                if (!isNaN(lat) && !isNaN(lng)) {
                    const position = {
                        lat: lat,
                        lng: lng
                    };
                    const marker = new google.maps.Marker({
                        position: position,
                        map: map,
                        animation: google.maps.Animation.DROP
                    });

                    marker.addListener('click', () => {
                        showTreeDetails(tree, marker);
                    });

                    markers.push(marker);
                }
            });
            
            // Do NOT call fitBounds - keep the current map view
        }

        function clearMarkers() {
            markers.forEach(m => m.setMap(null));
            markers = [];
        }

        function showTreeDetails(tree, marker) {
            const content = generateInfoWindowContent(tree);
            infoWindow.setContent(content);
            infoWindow.open(map, marker);
        }

        function generateInfoWindowContent(tree) {
            let imageUrl = '';
            // try {
            //     if (tree.all_captured_images) {
            //         const images = JSON.parse(tree.all_captured_images);
            //         if (images.length > 0) {
            //             imageUrl = "{{ asset('') }}" + images[0];
            //         }
            //     }
            // } catch (e) {
            //     console.error("Image error", e);
            // }

            let imgHtml = `<span class="text-muted" style="color:#aaa;">No Image</span>`;

            try {
                let images = tree.all_captured_images || [];

                if (typeof images === 'string') {
                    images = JSON.parse(images);
                }

                if (Array.isArray(images) && images.length > 0) {

                    const carouselId = 'carousel_' + tree.id;

                    let indicators = '';
                    let slides = '';

                    images.forEach((img, index) => {

                        const imageUrl = "{{ asset('') }}" + img;

                        indicators += `
                            <button type="button"
                                data-bs-target="#${carouselId}"
                                data-bs-slide-to="${index}"
                                class="${index === 0 ? 'active' : ''}"
                                aria-current="${index === 0 ? 'true' : 'false'}"
                                aria-label="Slide ${index + 1}">
                            </button>
                        `;

                        slides += `
                            <div class="carousel-item ${index === 0 ? 'active' : ''}">
                                <img src="${imageUrl}"
                                    class="d-block w-100"
                                    alt="Tree Image"
                                    style="height:250px;object-fit:cover;">
                            </div>
                        `;
                    });

                    imgHtml = `
                        <div id="${carouselId}" class="carousel slide" data-bs-ride="carousel">
                            
                            <div class="carousel-indicators">
                                ${indicators}
                            </div>

                            <div class="carousel-inner">
                                ${slides}
                            </div>

                            ${images.length > 1 ? `
                                <button class="carousel-control-prev"
                                    type="button"
                                    data-bs-target="#${carouselId}"
                                    data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                </button>

                                <button class="carousel-control-next"
                                    type="button"
                                    data-bs-target="#${carouselId}"
                                    data-bs-slide="next">
                                    <span class="carousel-control-next-icon"></span>
                                </button>
                            ` : ''}
                        </div>
                    `;
                }

            } catch (e) {
                console.error("Image error", e);
            }

            const createdDate = new Date(tree.created_at).toLocaleDateString();

            const projectName = tree.project ? tree.project.project_name : '-';
            const treeName = tree.tree ? tree.tree.name : (tree.tree_id || '-');
            const scientificName = tree.scientific ? tree.scientific.scientific_name : '-';
            const familyName = tree.family ? tree.family.family_name : '-';

            return `
                <div class="tree-info-window">
                    <div class="tree-img-container">${imgHtml}</div>
                    <div class="tree-details">
                        <div class="tree-row">
                            <div class="tree-label">Tree Number</div>
                            <div class="tree-val">${tree.tree_no || '-'}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Tree Name</div>
                            <div class="tree-val"><b>${treeName}</b></div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Scientific Name</div>
                            <div class="tree-val"><i>${scientificName}</i></div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Family</div>
                            <div class="tree-val">${familyName}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Project</div>
                            <div class="tree-val">${projectName}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Address</div>
                            <div class="tree-val">${tree.address || '-'}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Girth</div>
                            <div class="tree-val">${tree.girth ? tree.girth + ' cm' : '-'}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Height</div>
                            <div class="tree-val">${tree.height ? tree.height + ' m' : '-'}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Canopy</div>
                            <div class="tree-val">${tree.canopy ? tree.canopy + ' m' : '-'}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Age</div>
                            <div class="tree-val">${tree.age ? tree.age + ' Years' : '-'}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Condition</div>
                            <div class="tree-val">${tree.condition || '-'}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Ownership</div>
                            <div class="tree-val">${tree.ownership || '-'}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Landmark</div>
                            <div class="tree-val">${tree.landmark || '-'}</div>
                        </div>
                        <div class="tree-row">
                            <div class="tree-label">Date</div>
                            <div class="tree-val">${createdDate}</div>
                        </div>
                        <div class="tree-row" style="background:#f9f9f9; border:none; margin-top:5px; font-size:11px;">
                            <div class="tree-val" style="width:100%; color:#999;">Lat: ${tree.latitude}, Lng: ${tree.longitude}</div>
                        </div>
                    </div>
                </div>
            `;
        }
    </script>
@endsection