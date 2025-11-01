<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
        content="Multipurpose, super flexible, powerful, clean modern responsive bootstrap 5 admin template">
    <meta name="keywords"
        content="admin template, ra-admin admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="la-themes">
    <link rel="icon" href="{{ asset('assets/images/logo/favicon.png') }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ asset('assets/images/logo/favicon.png') }}" type="image/x-icon">
    <title>Tree Expert | Verify OTP</title>

    <link rel="stylesheet" href="{{ asset('assets/vendor/fontawesome/css/all.css') }}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="{{ asset('assets/vendor/tabler-icons/tabler-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/bootstrap/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/responsive.css') }}">
</head>

<body>
    <div class="app-wrapper d-block">
        <main class="w-100 p-0">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 p-0">
                        <div class="login-form-container">
                            <div class="mb-4">
                                <a class="logo d-inline-block" href="/">
                                    <img src="{{ asset('assets/images/logo/1.png') }}" width="250" alt="Logo">
                                </a>
                            </div>

                            <div class="form_container">
                                <form class="app-form" action="{{ route('admin.verify.otp') }}" method="POST">
                                    @csrf
                                    <input type="hidden" name="email" value="{{ request('email') }}">

                                    <div class="mb-3 text-center">
                                        <h3>Verify OTP</h3>
                                        <p class="f-s-12 text-secondary">Enter the OTP sent to your email address.</p>
                                    </div>

                                    @if ($errors->any())
                                        <div class="alert alert-danger text-center">
                                            {{ $errors->first() }}
                                        </div>
                                    @endif

                                    <div class="mb-3">
                                        <label class="form-label">Enter OTP</label>
                                        <input type="text" name="otp" class="form-control" required>
                                    </div>

                                    <div>
                                        <button type="submit" class="btn btn-primary w-100">Verify OTP</button>
                                    </div>

                                    <div class="text-center mt-3">
                                        <a href="{{ route('admin.forgot.password') }}"
                                            class="text-secondary text-decoration-underline">
                                            Resend OTP
                                        </a>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <!-- Scripts -->
    <script src="{{ asset('assets/js/jquery-3.6.3.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/bootstrap/bootstrap.bundle.min.js') }}"></script>
</body>

</html>
