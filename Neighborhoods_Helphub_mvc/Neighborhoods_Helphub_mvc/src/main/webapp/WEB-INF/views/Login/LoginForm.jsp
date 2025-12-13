<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  	<title>Sunshine Heights</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
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


  <style>
    .form-container {
      position: relative;
      width: 100%;
      overflow: hidden;
      height: 350px;
    }
    .form-slide {
      position: absolute;
      top: 0;
      width: 100%;
      transition: transform 0.6s ease-in-out;
    }
    .user-form.active {
      transform: translateX(0);
    }
    .user-form.inactive {
      transform: translateX(-100%);
    }
    .admin-form.active {
      transform: translateX(0);
    }
    .admin-form.inactive {
      transform: translateX(100%);
    }

    .switch-btn {
      background: none;
      border: none;
      color: #007bff;
      text-decoration: underline;
      cursor: pointer;
      margin-top: 15px;
    }
  </style>
</head>

<body>

	
  <div class="auth-bg d-flex min-vh-100 justify-content-center align-items-center">
    <div class="row g-0 justify-content-center w-100 m-xxl-5 px-xxl-4 m-3">
      <div class="col-xl-4 col-lg-5 col-md-6">
        <div class="card overflow-hidden text-center h-100 p-xxl-4 p-3 mb-0">
          <a href="index.html" class="auth-brand mb-3">
            <img src="resources/assets/images/Sunshine Heights.png" alt="dark logo" height="70" class="logo-dark">
            <img src="resources/assets/images/Sunshine Heights.png" alt="logo light" height="70" class="logo-light">
          </a>

          <h3 class="fw-semibold mb-2" id="formTitle">User Login</h3>
          <p class="text-muted mb-4" id="formSubtitle">Login to your user account</p>

          <!-- Forms Container -->
          <div class="form-container">

			<!-- USER LOGIN FORM -->
			<form id="userForm" class="form-slide user-form active text-start mb-3" action="UserLogin" method="post" novalidate>

			  <div class="mb-3">
			    <label class="form-label">Full Name</label>
			    <input type="text" class="form-control" placeholder="Enter your Name" name="fullName" required>
			    <div class="invalid-feedback">Please enter your name</div>
			  </div>

			  <div class="mb-3">
			    <label class="form-label">Email</label>
			    <input type="email" class="form-control" placeholder="Enter your email" name="email" required>
			    <div class="invalid-feedback">Enter a valid email</div>
			  </div>

			  <div class="mb-3">
			    <label class="form-label">Password</label>
			    <input type="password" class="form-control" placeholder="Enter your password" name="password" minlength="8" required>
			    <div class="invalid-feedback">Minimum 8 characters required</div>
			  </div>

			  <div class="d-flex justify-content-between mb-3">
			    <div class="form-check">
			      <input type="checkbox" class="form-check-input" id="userRemember">
			      <label class="form-check-label" for="userRemember">Remember me</label>
			    </div>
			    <a href="forgetPassword" class="text-muted border-bottom border-dashed">Forget Password</a>
			  </div>

			  <div class="d-grid">
			    <button class="btn btn-primary" type="submit">Login</button>
			  </div>

			</form>

			<!-- ADMIN LOGIN FORM -->
			<form id="adminForm" class="form-slide admin-form inactive text-start mb-3" 
			      action="adminLogin" method="post" novalidate>

			  <div class="mb-3">
			    <label class="form-label">Admin Username</label>
			    <input type="text" class="form-control" placeholder="Enter admin username" 
			           name="adminName" required>
			    <div class="invalid-feedback">Enter admin username</div>
			  </div>

			  <div class="mb-3">
			    <label class="form-label">Email</label>
			    <input type="email" class="form-control" placeholder="Enter your email" 
			           name="adminEmail" required>
			    <div class="invalid-feedback">Enter valid email</div>
			  </div>

			  <div class="mb-3">
			    <label class="form-label">Password</label>
			    <input type="password" class="form-control" placeholder="Enter admin password" 
			           name="password" minlength="8" required>
			    <div class="invalid-feedback">Password must be at least 8 characters</div>
			  </div>

			  <div class="d-flex justify-content-between mb-3">
			    <div class="form-check">
			      <input type="checkbox" class="form-check-input" id="adminRemember">
			      <label class="form-check-label" for="adminRemember">Remember me</label>
			    </div>
			    <a href="forgetPassword" class="text-muted border-bottom border-dashed">Forget Password</a>
			  </div>

			  <div class="d-grid">
			    <button class="btn btn-success" type="submit">Admin Login</button>
			  </div>

			</form>

          </div>

          <!-- SWITCH BUTTON -->
          <button id="switchBtn" class="switch-btn">Switch to Admin Login</button>
		  <p class="mt-auto mb-0">
		                          <script>document.write(new Date().getFullYear())</script> © Sunshine Heights 
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
    const userForm = document.getElementById('userForm');
    const adminForm = document.getElementById('adminForm');
    const switchBtn = document.getElementById('switchBtn');
    const formTitle = document.getElementById('formTitle');
    const formSubtitle = document.getElementById('formSubtitle');

    let isUser = true;

    switchBtn.addEventListener('click', () => {
      if (isUser) {
        // Switch to admin
        userForm.classList.remove('active');
        userForm.classList.add('inactive');
        adminForm.classList.remove('inactive');
        adminForm.classList.add('active');
        switchBtn.textContent = "Switch to User Login";
        formTitle.textContent = "Admin Login";
        formSubtitle.textContent = "Login to your admin panel";
      } else {
        // Switch to user
        adminForm.classList.remove('active');
        adminForm.classList.add('inactive');
        userForm.classList.remove('inactive');
        userForm.classList.add('active');
        switchBtn.textContent = "Switch to Admin Login";
        formTitle.textContent = "User Login";
        formSubtitle.textContent = "Login to your user account";
      }
      isUser = !isUser;
    });
  </script>
  
  <script>
    // Check if error message is present from Spring controller
    <% 
       String error = (String) request.getAttribute("error");
       if (error != null) { 
    %>
        Swal.fire({
          icon: 'error',
          title: 'Invalid User',
          text: '<%= error %>',
          confirmButtonColor: '#3085d6',
          confirmButtonText: 'OK'
        });
    <% 
       } 
    %>
  </script>
  <script>
  document.getElementById('userForm').addEventListener('submit', function(event){
      if(!this.checkValidity()){
          event.preventDefault();
          event.stopPropagation();
      }
      this.classList.add('was-validated');
  });
  </script>
  <script>
  document.getElementById('adminForm').addEventListener('submit', function(event){
      if(!this.checkValidity()){
          event.preventDefault();
          event.stopPropagation();
      }
      this.classList.add('was-validated');
  });
  </script>
  <script>
    document.addEventListener("DOMContentLoaded", function () {

      // USER FORM VALIDATION
      const userForm = document.getElementById("userForm");
      userForm.addEventListener("submit", function (event) {
        if (!validateUser()) {
          event.preventDefault();
          event.stopPropagation();
        }
        userForm.classList.add("was-validated");
      });

      function validateUser() {
        let fullName = document.getElementsByName("fullName")[0].value.trim();
        let email = document.getElementsByName("email")[0].value.trim();
        let password = document.getElementsByName("password")[0].value.trim();

        const nameRegex = /^[A-Za-z\s]+$/;
        const emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
        const passRegex = /^(?=.*[A-Z])(?=.*[@$!%*?&]).{8,}$/;

        if (!nameRegex.test(fullName)) return false;
        if (!emailRegex.test(email)) return false;
        if (!passRegex.test(password)) return false;

        return true;
      }

      // ADMIN FORM VALIDATION
      const adminForm = document.getElementById("adminForm");
      adminForm.addEventListener("submit", function (event) {
        if (!validateAdmin()) {
          event.preventDefault();
          event.stopPropagation();
        }
        adminForm.classList.add("was-validated");
      });

      function validateAdmin() {
        let adminName = document.getElementsByName("adminName")[0].value.trim();
        let adminEmail = document.getElementsByName("adminEmail")[0].value.trim();
        let password = adminForm.querySelector("input[name='password']").value.trim();

        const nameRegex = /^[A-Za-z\s]+$/;   // admin name allow letters & numbers
        const emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
		const passRegex = /^(?=.*[A-Z])(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

        if (!nameRegex.test(adminName)) return false;
        if (!emailRegex.test(adminEmail)) return false;
        if (!passRegex.test(password)) return false;

        return true;
      }

    });
  </script>

</body>
</html>
