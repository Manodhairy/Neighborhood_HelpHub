<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="utf-8" />
     <title>Sunshine Heights</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="resources/assets/images/favicon.ico">

    <!-- Theme Config Js -->
    <script src="resources/assets/js/config.js"></script>

    <!-- Vendor css -->
    <link href="resources/assets/css/vendor.min.css" rel="stylesheet" type="text/css" />

    <!-- App css -->
    <link href="resources/assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />

    <!-- Icons css -->
    <link href="resources/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<body class="h-100">

    <div class="auth-bg d-flex min-vh-100 justify-content-center align-items-center">
        <div class="row g-0 justify-content-center w-100 m-xxl-5 px-xxl-4 m-3">
            <div class="col-xl-4 col-lg-5 col-md-6">
                <div class="card overflow-hidden text-center h-100 p-xxl-4 p-3 mb-0">
                    <a href="index.html" class="auth-brand mb-3">
                        <img src="resources/assets/images/Sunshine Heights.png" alt="dark logo" height="70" class="logo-dark">
                        <img src="resources/assets/images/Sunshine Heights.png" alt="logo light" height="70" class="logo-light">
                    </a>

                    <h3 class="fw-semibold mb-2">Create New Password</h3>

                    <p class="text-muted mb-2">Please create your new password.</p>
                    <p class="mb-4">Need password suggestion ? <a href="#!"
                            class="link-dark fw-semibold text-decoration-underline">Suggestion</a></p>

                    <div class="d-flex justify-content-center gap-2 mb-3">
                        <a href="#!" class="btn btn-soft-danger avatar-lg"><i
                                class="ti ti-brand-google-filled fs-24"></i></a>
                        <a href="#!" class="btn btn-soft-success avatar-lg"><i class="ti ti-brand-apple fs-24"></i></a>
                        <a href="#!" class="btn btn-soft-primary avatar-lg"><i
                                class="ti ti-brand-facebook fs-24"></i></a>
                        <a href="#!" class="btn btn-soft-info avatar-lg"><i class="ti ti-brand-linkedin fs-24"></i></a>
                    </div>

                    <p class="fs-13 fw-semibold">Or</p>

                    <form action="Updatepassword" class="text-start mb-3" method="post">

                     <input type="hidden" name="email" value="${email}">
						<div class="mb-3">
						    <label class="form-label" for="new-password">Create New Password 
						        <small class="text-primary ms-1">Must be strong</small>
						    </label>
						    <input type="password" id="new-password" name="newPassword" class="form-control"
						        placeholder="New Password" onkeyup="validatePassword()">

						    <span id="password-regex-error" style="color:red; font-size:13px;"></span>
						</div>

						<div class="mb-3">
						    <label class="form-label" for="re-password">Reenter New Password</label>
						    <input type="password" id="re-password" name="rePassword" class="form-control"
						        placeholder="Reenter Password" onkeyup="validatePassword()">

						    <span id="password-match-error" style="color:red; font-size:13px;"></span>
						</div>

                        <div class="mb-2 d-grid">
                            <button class="btn btn-primary" type="submit">Create New Password</button>
                        </div>

                    </form>

                  <p class="text-danger fs-12 ">Back To <a href="LoginPage" class="fw-semibold text-dark ms-1">Login !</a></p>

                    <p class="mt-auto mb-0">
                        <script>document.write(new Date().getFullYear())</script> © Sunshine Heights - By <span
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Vendor js -->
    <script src="resources/assets/js/vendor.min.js"></script>

    <!-- App js -->
    <script src="resources/assets/js/app.js"></script>
	<script>
			    var msg = "${successOtp}";
			    if (msg !== null && msg.trim() !== "") {
			        Swal.fire({
			            icon: "success",
			            title: "Success!",
			            text: msg,
			            showConfirmButton: false,
			            timer: 1500
			        });
			    }
			</script>
			
			<script>
			function validatePassword() {
			    var pass1 = document.getElementById("new-password").value;
			    var pass2 = document.getElementById("re-password").value;

			    var regexSpan = document.getElementById("password-regex-error");
			    var matchSpan = document.getElementById("password-match-error");

			    // Strong Password Regex
			    var strongRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

			    // Check regex
			    if (pass1.length > 0 && !strongRegex.test(pass1)) {
			        regexSpan.textContent = "Password must be 8+ chars, include upper, lower, number & special char.";
			    } else {
			        regexSpan.textContent = "";
			    }

			    // Check matching
			    if (pass2.length > 0 && pass1 !== pass2) {
			        matchSpan.textContent = "Passwords do not match!";
			    } else {
			        matchSpan.textContent = "";
			    }
			}
			</script>

</body>



</html>