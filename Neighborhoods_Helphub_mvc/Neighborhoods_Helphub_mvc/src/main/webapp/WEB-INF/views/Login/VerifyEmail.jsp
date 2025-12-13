<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from coderthemes.com/osen/layouts/auth-recoverpw.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 27 Sep 2025 13:38:18 GMT -->
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

                    <h3 class="fw-semibold mb-2">Reset Your Password</h3>

                    <p class="text-muted mb-4">Please enter your email address to request a password reset.</p>

                   

                    <p class="fs-10 fw-semibold">Or Sign Up With Email</p>

					<form action="/sendOtp" method="post" class="text-start mb-2">
					    <div class="mb-3">
					        <label class="form-label" for="email1">Email</label>
					        <input type="email" id="email1" name="email" class="form-control" placeholder="Enter your email" value="${email}"required>
							<!-- SUCCESS MESSAGE -->
							       <span th:if="${success}" class="text-success" style="font-size: 13px;dispaly:block;">
							           ${success}
							       </span>

							       <!-- ERROR MESSAGE -->
							       <span th:if="${error}" class="text-danger" style="font-size: 13px;dispaly:block;">
							           ${error}
							       </span>
					        <button class="btn btn-primary mt-1 d-block w-100" type="submit">Send OTP</button>
					    </div>
					</form>


					<form action="/VerifyOtp" class="text-start mb-2" method="post">
						
						<input type="hidden" name="email" value="${email}">
						<div class="mb-1">
						      
							  <div class="mb-3">
								      <input type="hidden" name="mailOtp" value="${otp}">
							          <label class="form-label" for="otp">Enter 6-digit OTP</label>
							          <input type="text" id="otp" name="otp" maxlength="6"  pattern="\d{6}" class="form-control" placeholder="Enter OTP"  required>
							      </div>
						</div>
      						<div class="d-grid">
						       <button class="btn btn-primary" type="submit">Verify OTP</button>
						   </div>
						</form>
                    <p class="text-danger fs-12 ">Back To <a href="LoginPage" class="fw-semibold text-dark ms-1">Login !</a></p>

                    <p class="">
                        <script>document.write(new Date().getFullYear())</script> © Sunshine Heights 
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Vendor js -->
    <script src="assets/js/vendor.min.js"></script>

    <!-- App js -->
    <script src="resources/assets/js/app.js"></script>
	
		

	

		<script>
		    var err = "${errorOtp}";
		    if (err !== null && err.trim() !== "") {
		        Swal.fire({
		            icon: "error",
		            title: "Invalid OTP!",
		            text: err
		        });
		    }
		</script>



</body>


</html>