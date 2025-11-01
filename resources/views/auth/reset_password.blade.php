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
    <title>Tree Expert | Reset Password</title>

    <link rel="stylesheet" href="{{ asset('assets/vendor/fontawesome/css/all.css') }}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="{{ asset('assets/vendor/tabler-icons/tabler-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/bootstrap/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/responsive.css') }}">

    <style>
        .password-wrapper {
            position: relative;
        }

        .toggle-password {
            position: absolute;
            right: 10px;
            top: 70%;
            transform: translateY(-50%);
            cursor: pointer;
            color: #6c757d;
        }

        .toggle-password:hover {
            color: #000;
        }
    </style>
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
                                <form class="app-form" action="{{ route('admin.reset.password') }}" method="POST">
                                    @csrf
                                    <input type="hidden" name="email" value="{{ $email }}">
                                    <input type="hidden" name="otp" value="{{ $otp }}">

                                    <div class="mb-3 text-center">
                                        <h3>Reset Password</h3>
                                        <p class="f-s-12 text-secondary">Enter your new password below.</p>
                                    </div>

                                    @if ($errors->any())
                                        <div class="alert alert-danger text-center">
                                            {{ $errors->first() }}
                                        </div>
                                    @endif

                                    <div class="mb-3 password-wrapper">
                                        <label class="form-label">New Password</label>
                                        <input type="password" id="password" name="password" class="form-control"
                                            required minlength="6">
                                        <i class="ti ti-eye toggle-password" id="togglePassword"></i>
                                    </div>

                                    <div>
                                        <button type="submit" class="btn btn-success w-100">Reset Password</button>
                                    </div>

                                    <div class="text-center mt-3">
                                        <a href="{{ route('login') }}"
                                            class="text-secondary text-decoration-underline">
                                            Back to Login
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

    <script>
        const togglePassword = document.querySelector('#togglePassword');
        const passwordField = document.querySelector('#password');

        togglePassword.addEventListener('click', function() {
            const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordField.setAttribute('type', type);

            // Toggle eye / eye-off icon
            this.classList.toggle('ti-eye');
            this.classList.toggle('ti-eye-off');
        });
    </script>
</body>

</html>
