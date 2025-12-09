<!DOCTYPE html>
<html lang="en"
	data-style-switcher-options="{'showBordersStyle': true, 'showLayoutStyle': true, 'showBackgroundColor': true}">

<head>
	<!-- Basic -->
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="shortcut icon" href="resources/assets/images/favicon.ico" type="image/x-icon" />
	  	<link rel="apple-touch-icon" href="resources/assets1/img/apple-touch-icon.png">
	<%@ include file="NavBar.jsp" %>

	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<!-- Favicon -->
	<link rel="shortcut icon" href="resources/assets1/img/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="resources/assets1/img/apple-touch-icon.png" />

	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no" />

	<!-- Web Fonts  -->
	<link id="googleFonts"
		href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800%7CShadows+Into+Light&amp;display=swap"
		rel="stylesheet" type="text/css" />

	<!-- Vendor CSS -->
	<link rel="stylesheet" href="resources/assets1/vendor/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="resources/assets1/vendor/fontawesome-free/css/all.min.css" />
	<link rel="stylesheet" href="resources/assets1/vendor/animate/animate.compat.css" />
	<link rel="stylesheet" href="resources/assets1/vendor/simple-line-icons/css/simple-line-icons.min.css" />
	<link rel="stylesheet" href="resources/assets1/vendor/owl.carousel/assets/owl.carousel.min.css" />
	<link rel="stylesheet" href="resources/assets1/vendor/owl.carousel/assets/owl.theme.default.min.css" />
	<link rel="stylesheet" href="resources/assets1/vendor/magnific-popup/magnific-popup.min.css" />

	<!-- Theme CSS -->
	<link rel="stylesheet" href="resources/assets1/css/theme.css" />
	<link rel="stylesheet" href="resources/assets1/css/theme-elements.css" />
	<link rel="stylesheet" href="resources/assets1/css/theme-blog.css" />
	<link rel="stylesheet" href="resources/assets1/css/theme-shop.css" />

	<!-- Skin CSS -->
	<link id="skinCSS" rel="stylesheet" href="resources/assets1/css/skins/default.css" />

	<!-- Theme Custom CSS -->
	<link rel="stylesheet" href="resources/assets1/css/custom.css" />

	<!-- Google tag (gtag.js) -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-T21B0FFW8M"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag("js", new Date());

		gtag("config", "G-T21B0FFW8M");
	</script>
</head>

<body>
  <div class="container py-5">
    <div class="row">

      <!-- ✅ Sidebar -->
      <div class="col-lg-3 mb-4">
        <div class="sidebar-card text-center p-4">
          <img src="resources/assets1/img/profile.jpg" class="profile-image mb-3" alt="Profile Photo">

          <!-- ✅ Dynamic name & occupation -->
          <h5 class="mb-1">${userList.fullName}</h5>
          <p class="text-muted small mb-3">${userList.occupation}</p>

          <ul class="nav nav-pills flex-column text-start">
            <li class="nav-item mb-2">
              <a class="nav-link active" href="#"><i class="fa fa-user me-2"></i> My Profile</a>
            </li>
            <li class="nav-item mb-2">
              <a class="nav-link" href="#"><i class="fa fa-cog me-2"></i> Settings</a>
            </li>
            <li class="nav-item mb-2">
              <a class="nav-link" href="Billing"><i class="fa fa-wallet me-2"></i> Billing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout"><i class="fa fa-sign-out-alt me-2"></i> Logout</a>
            </li>
          </ul>
        </div>
      </div>

      <!-- ✅ Profile Form -->
      <div class="col-lg-9">
        <div class="card profile-card p-4">
          <h4 class="mb-4"><i class="fa fa-id-card me-2 text-primary"></i>Personal Information</h4>

          <form action="updateProfileUpadateData" method="post">
            <div class="row g-3">

              <!-- ✅ Pre-filled user data -->
              <div class="col-md-6">
                <label class="form-label">Full Name</label>
                <input type="text" name="fullName" class="form-control" 
                       value="${userList.fullName}" required>
              </div>

              <div class="col-md-6">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" 
                       value="${userList.email}" required>
              </div>

              <div class="col-md-6">
                <label class="form-label">Mobile No</label>
                <input type="text" name="mobile_no" class="form-control" 
                       value="${userList.mobile_no}">
              </div>

              <div class="col-md-6">
                <label class="form-label">Flat No</label>
                <input type="text" name="flat_no" class="form-control" 
                       value="${userList.flat_no}">
              </div>

              <div class="col-md-4">
                <label class="form-label">Age</label>
                <input type="number" name="age" class="form-control" 
                       value="${userList.age}">
              </div>

              

              <div class="col-md-4">
                <label class="form-label">Occupation</label>
                <input type="text" name="occupation" class="form-control" 
                       value="${userList.occupation}">
              </div>

              <div class="col-md-6">
                <label class="form-label">Workplace</label>
                <input type="text" name="workplace" class="form-control" 
                       value="${userList.workplace}">
              </div>

              <div class="col-md-6">
                <label class="form-label">Experience</label>
                <input type="text" name="experience" class="form-control" 
                       value="${userList.experience}">
              </div>

              <div class="col-md-12">
                <label class="form-label">Message</label>
                <textarea class="form-control" name="message" rows="3">${userList.message}</textarea>
              </div>

              <h5 class="mt-4"><i class="fa fa-link me-2 text-primary"></i>Social Links</h5>

              <div class="col-md-6">
                <label class="form-label">LinkedIn</label>
                <input type="text" name="linkedin" class="form-control" 
                       value="${userList.linkedin}">
              </div>

              <div class="col-md-6">
                <label class="form-label">Instagram</label>
                <input type="text" name="instagram" class="form-control" 
                       value="${userList.instagram}">
              </div>
            </div>

            <div class="text-end mt-4">
              <button type="reset" class="btn btn-outline-secondary me-2"><i class="fa fa-rotate-left me-1"></i> Reset</button>
              <button type="submit" class="btn btn-primary"><i class="fa fa-save me-1"></i> Save Changes</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </div>
  


  <!-- ✅ Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


	

	<!-- Vendor -->
	<script data-cfasync="false" src="resources/assets1/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/assets1/vendor/plugins/js/plugins.min.js"></script>

	<!-- Theme Base, Components and Settings -->
	<script src="resources/assets1/js/theme.js"></script>

	<!-- Theme Initialization Files -->
	<script src="resources/assets1/js/theme.init.js"></script>
</body>

</html>