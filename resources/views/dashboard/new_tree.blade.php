@extends('layouts.app')
@section('title', 'Register New Tree')

@section('content')
    <main>
        <div class="container-fluid">
            <div class="row m-1">
                <div class="col-12">
                    <h4 class="main-title mb-3">Register New Tree</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="row g-3" method="POST" enctype="multipart/form-data" id="treeForm">
                                @csrf

                                {{-- Basic Tree Details --}}
                                <div class="col-md-3 col-6">
                                    <label class="form-label">Ward / Plot No</label>
                                    <input type="text" name="ward_plot_no" class="form-control"
                                        value="{{ old('ward_plot_no') }}" required>
                                </div>
                                <div class="col-md-3 col-6">
                                    <label class="form-label">Tree No</label>
                                    <input type="text" name="tree_no" class="form-control" value="{{ old('tree_no') }}"
                                        required>
                                </div>
                                <div class="col-md-3 col-6">
                                    <label class="form-label">Tree Name</label>
                                    <input type="text" name="tree_name" class="form-control"
                                        value="{{ old('tree_name') }}" required>
                                </div>
                                <div class="col-md-3 col-6">
                                    <label class="form-label">Scientific Name</label>
                                    <input type="text" name="scientific_name" class="form-control"
                                        value="{{ old('scientific_name') }}">
                                </div>

                                {{-- Tree Measurements --}}
                                <div class="col-md-3 col-6">
                                    <label class="form-label">Family</label>
                                    <input type="text" name="family" class="form-control" value="{{ old('family') }}">
                                </div>
                                <div class="col-md-2 col-6">
                                    <label class="form-label">Girth (cm)</label>
                                    <input type="number" step="0.01" name="girth" class="form-control"
                                        value="{{ old('girth') }}">
                                </div>
                                <div class="col-md-2 col-6">
                                    <label class="form-label">Height (m)</label>
                                    <input type="number" step="0.01" name="height" class="form-control"
                                        value="{{ old('height') }}">
                                </div>
                                <div class="col-md-2 col-6">
                                    <label class="form-label">Canopy (m)</label>
                                    <input type="number" step="0.01" name="canopy" class="form-control"
                                        value="{{ old('canopy') }}">
                                </div>
                                <div class="col-md-2 col-6">
                                    <label class="form-label">Age (years)</label>
                                    <input type="number" name="age" class="form-control" value="{{ old('age') }}">
                                </div>

                                {{-- Condition --}}
                                <div class="col-md-3 col-12">
                                    <label class="form-label">Condition</label>
                                    <select name="condition" class="form-select" required>
                                        <option value="">Select Condition</option>
                                        <option value="Poor" {{ old('condition') == 'Poor' ? 'selected' : '' }}>Poor
                                        </option>
                                        <option value="Medium" {{ old('condition') == 'Medium' ? 'selected' : '' }}>Medium
                                        </option>
                                        <option value="Good" {{ old('condition') == 'Good' ? 'selected' : '' }}>Good
                                        </option>
                                        <option value="Disease" {{ old('condition') == 'Disease' ? 'selected' : '' }}>
                                            Disease</option>
                                        <option value="Dead" {{ old('condition') == 'Dead' ? 'selected' : '' }}>Dead
                                        </option>
                                    </select>
                                </div>

                                {{-- Location & Address --}}
                                <div class="col-md-4 col-12">
                                    <label class="form-label">Address</label>
                                    <div class="input-group">
                                        <input type="text" name="address" id="address" class="form-control"
                                            placeholder="Click location icon" readonly required
                                            value="{{ old('address') }}">
                                        <button type="button" class="btn btn-primary" id="getLocationBtn">
                                            <i class="ph-duotone ph-map-pin-line f-s-20"></i>
                                        </button>
                                    </div>
                                </div>

                                <div class="col-md-3 col-6">
                                    <label class="form-label">Landmark</label>
                                    <input type="text" name="landmark" class="form-control"
                                        value="{{ old('landmark') }}">
                                </div>

                                {{-- Ownership --}}
                                <div class="col-md-3 col-6">
                                    <label class="form-label">Ownership</label>
                                    <select name="ownership" class="form-select" required>
                                        <option value="">Select Ownership</option>
                                        <option value="Pvt" {{ old('ownership') == 'Pvt' ? 'selected' : '' }}>Private
                                        </option>
                                        <option value="Gov" {{ old('ownership') == 'Gov' ? 'selected' : '' }}>
                                            Government</option>
                                        <option value="Park" {{ old('ownership') == 'Park' ? 'selected' : '' }}>Park
                                        </option>
                                        <option value="Road" {{ old('ownership') == 'Road' ? 'selected' : '' }}>Road
                                        </option>
                                        <option value="Open Space"
                                            {{ old('ownership') == 'Open Space' ? 'selected' : '' }}>Open Space</option>
                                        <option value="Riverside" {{ old('ownership') == 'Riverside' ? 'selected' : '' }}>
                                            Riverside</option>
                                    </select>
                                </div>

                                <div class="col-md-4 col-12">
                                    <label class="form-label">Concern Person Name</label>
                                    <input type="text" name="concern_person" class="form-control"
                                        value="{{ old('concern_person') }}">
                                </div>

                                <div class="col-md-8 col-12">
                                    <label class="form-label">Remark</label>
                                    <textarea name="remark" class="form-control" rows="2">{{ old('remark') }}</textarea>
                                </div>

                                {{-- Image Upload --}}
                                <div class="col-md-6 col-12">
                                    <label class="form-label fw-bold text-success">Upload Image</label>
                                    <input type="file" accept="image/*" class="form-control" id="fileUpload"
                                        name="tree_image_upload" multiple>
                                    <small class="text-muted">Choose from gallery or files</small>
                                </div>

                                {{-- Live Camera Capture --}}
                                <div class="col-md-6 col-12">
                                    <label class="form-label fw-bold text-primary">Capture Live Image</label><br>
                                    <div class="d-flex flex-wrap gap-2 mb-2">
                                        <button type="button" id="startCamera" class="btn btn-secondary btn-sm">Open
                                            Camera</button>
                                        <button type="button" id="switchCamera" class="btn btn-outline-dark btn-sm"
                                            style="display:none;">Switch Camera</button>
                                        <button type="button" id="captureImage" class="btn btn-success btn-sm"
                                            style="display:none;">Capture</button>
                                    </div>
                                    <video id="cameraStream" autoplay playsinline
                                        style="width:100%; max-width:100%; height:auto; border-radius:8px; border:1px solid #ddd; display:none;"></video>
                                    <input type="hidden" name="captured_image" id="captured_image">
                                </div>

                                {{-- Gallery Preview --}}
                                <div class="col-12">
                                    <label class="form-label">Captured Images</label>
                                    <div id="imageGallery" class="row g-2" style="max-height:400px; overflow-y:auto;">
                                        <p class="text-muted">No images captured yet</p>
                                    </div>
                                </div>

                                {{-- Hidden Canvas --}}
                                <canvas id="snapshotCanvas" style="display:none;"></canvas>

                                {{-- Hidden Fields --}}
                                <input type="hidden" id="latitude" name="latitude">
                                <input type="hidden" id="longitude" name="longitude">
                                <input type="hidden" id="datetime" name="datetime">

                                {{-- Store all captured images data --}}
                                <input type="hidden" id="allCapturedImages" name="all_captured_images" value="[]">

                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <button type="reset" class="btn btn-secondary">Clear</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script>
        let useFrontCamera = false;
        let cameraStream = null;
        let capturedImages = [];

        /* Get Location */
        document.getElementById("getLocationBtn").addEventListener("click", function() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(async function(position) {
                    const lat = position.coords.latitude;
                    const lon = position.coords.longitude;
                    const dateTime = new Date().toLocaleString();

                    document.getElementById("latitude").value = lat;
                    document.getElementById("longitude").value = lon;
                    document.getElementById("datetime").value = dateTime;

                    try {
                        const response = await fetch(
                            `https://nominatim.openstreetmap.org/reverse?lat=${lat}&lon=${lon}&format=json`
                        );
                        const data = await response.json();
                        document.getElementById("address").value = data.display_name ||
                            "Address not found";
                    } catch (e) {
                        document.getElementById("address").value = "Unable to fetch address";
                    }
                }, () => alert("Please allow location access."));
            } else {
                alert("Geolocation not supported.");
            }
        });

        /* File Upload Preview with Metadata */
        document.getElementById("fileUpload").addEventListener("change", async function(e) {
            const files = e.target.files;
            let processedCount = 0;

            for (let i = 0; i < files.length; i++) {
                const file = files[i];
                const reader = new FileReader();

                reader.onload = function(event) {
                    const lat = document.getElementById("latitude").value || "N/A";
                    const lon = document.getElementById("longitude").value || "N/A";
                    const address = document.getElementById("address").value || "Unknown Address";
                    const dateTime = document.getElementById("datetime").value || new Date()
                    .toLocaleString();

                    const img = new Image();
                    img.onload = function() {
                        const canvas = document.createElement('canvas');
                        canvas.width = img.width;
                        canvas.height = img.height + 110;

                        const ctx = canvas.getContext('2d');
                        ctx.drawImage(img, 0, 0);

                        // Red background strip at bottom
                        const stripHeight = 110;
                        ctx.fillStyle = "rgba(255, 0, 0, 0.9)";
                        ctx.fillRect(0, canvas.height - stripHeight, canvas.width, stripHeight);

                        // White text
                        ctx.font = "bold 16px Arial";
                        ctx.fillStyle = "white";
                        ctx.textAlign = "left";

                        const paddingX = 15;
                        const startY = canvas.height - stripHeight + 28;
                        const lineHeight = 26;

                        ctx.fillText(`Address: ${address}`, paddingX, startY);
                        ctx.fillText(`Date: ${dateTime}`, paddingX, startY + lineHeight);
                        ctx.fillText(`Lat: ${lat}  |  Lon: ${lon}`, paddingX, startY + lineHeight * 2);

                        const imageData = canvas.toDataURL('image/png');
                        capturedImages.push(imageData);
                        document.getElementById('allCapturedImages').value = JSON.stringify(
                            capturedImages);

                        addImageToGallery(imageData, `Uploaded Image ${processedCount + 1}`);
                        processedCount++;
                    };
                    img.src = event.target.result;
                };
                reader.readAsDataURL(file);
            }
        });

        /* Camera Controls */
        const startBtn = document.getElementById('startCamera');
        const switchBtn = document.getElementById('switchCamera');
        const captureBtn = document.getElementById('captureImage');
        const video = document.getElementById('cameraStream');
        const canvas = document.getElementById('snapshotCanvas');

        startBtn.addEventListener('click', startCamera);
        switchBtn.addEventListener('click', switchCamera);
        captureBtn.addEventListener('click', captureImage);

        async function startCamera() {
            try {
                cameraStream = await navigator.mediaDevices.getUserMedia({
                    video: {
                        facingMode: useFrontCamera ? 'user' : 'environment'
                    }
                });
                video.srcObject = cameraStream;
                video.style.display = 'block';
                switchBtn.style.display = 'inline-block';
                captureBtn.style.display = 'inline-block';
            } catch (err) {
                alert("Camera access denied or not available.");
            }
        }

        async function switchCamera() {
            if (cameraStream) {
                cameraStream.getTracks().forEach(track => track.stop());
            }
            useFrontCamera = !useFrontCamera;
            await startCamera();
        }

        function captureImage() {
            const context = canvas.getContext('2d');
            canvas.width = video.videoWidth;
            canvas.height = video.videoHeight;
            context.drawImage(video, 0, 0, canvas.width, canvas.height);

            const lat = document.getElementById("latitude").value || "N/A";
            const lon = document.getElementById("longitude").value || "N/A";
            const address = document.getElementById("address").value || "Unknown Address";
            const dateTime = document.getElementById("datetime").value || new Date().toLocaleString();

            // Red background strip at bottom
            const stripHeight = 110;
            context.fillStyle = "rgba(255, 0, 0, 0.9)";
            context.fillRect(0, canvas.height - stripHeight, canvas.width, stripHeight);

            // White text
            context.font = "bold 16px Arial";
            context.fillStyle = "white";
            context.textAlign = "left";

            const paddingX = 15;
            const startY = canvas.height - stripHeight + 28;
            const lineHeight = 26;

            context.fillText(`Address: ${address}`, paddingX, startY);
            context.fillText(`Date: ${dateTime}`, paddingX, startY + lineHeight);
            context.fillText(`Lat: ${lat}  |  Lon: ${lon}`, paddingX, startY + lineHeight * 2);

            const imageData = canvas.toDataURL('image/png');
            capturedImages.push(imageData);
            document.getElementById('allCapturedImages').value = JSON.stringify(capturedImages);

            addImageToGallery(imageData, `Capture ${capturedImages.length}`);
        }

        function addImageToGallery(src, label) {
            const gallery = document.getElementById('imageGallery');

            // Remove "No images" message
            if (gallery.querySelector('.text-muted')) {
                gallery.querySelector('.text-muted').remove();
            }

            const colDiv = document.createElement('div');
            colDiv.className = 'col-6 col-md-4';
            colDiv.innerHTML = `
        <div class="position-relative">
            <img src="${src}" class="img-fluid rounded border" style="width:100%; height:200px; object-fit:cover;">
            <small class="d-block text-center mt-1">${label}</small>
            <button type="button" class="btn btn-sm btn-danger position-absolute top-0 end-0 m-1" onclick="removeImage(this)">×</button>
        </div>
    `;
            gallery.appendChild(colDiv);
        }

        function removeImage(btn) {
            const index = Array.from(document.querySelectorAll('#imageGallery > div')).indexOf(btn.closest('div')
                .parentElement);
            capturedImages.splice(index, 1);
            document.getElementById('allCapturedImages').value = JSON.stringify(capturedImages);
            btn.closest('div').parentElement.remove();

            if (capturedImages.length === 0) {
                document.getElementById('imageGallery').innerHTML = '<p class="text-muted">No images captured yet</p>';
            }
        }
    </script>
@endsection
