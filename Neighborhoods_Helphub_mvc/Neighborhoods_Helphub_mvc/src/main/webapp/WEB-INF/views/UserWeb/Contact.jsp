<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">


<head>
  <!-- SweetAlert CSS + JS -->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <link rel="shortcut icon" href="resources/assets/images/favicon.ico" type="image/x-icon" />
  	<link rel="apple-touch-icon" href="resources/assets1/img/apple-touch-icon.png">
</head>

<body>
	<%@ include file="NavBar.jsp" %>
  <div role="main" class="main pt-3" style="background-color:#c1bcca24">
    <div class="container bg-white shadow-lg rounded p-5 ">
      <div class="row" style="width:100%">
        <!-- Left Section -->
        <div class="col-lg-6 mb-4">
          <h2 class="fw-bold text-warning mb-3">
            Contact <span class="text-primary">Sunshine Heights Colony</span>
          </h2>
          <p class="mb-4 text-secondary">
            We're here to help! Reach out for maintenance support, flat
            information, or colony event details.
          </p>

          <!-- Contact Form -->
          <form class="contact-form" action="submitComplaint" method="POST">
            <div class="row g-3">
              <div class="col-lg-6">
              
              </div>
            </div>

            <div class="mt-3">
              <label class="form-label">Subject</label>
              <input type="text" name="subject" maxlength="100" class="form-control" required />
            </div>

            <div class="mt-3">
              <label class="form-label">Complaint Message</label>
              <textarea name="message" rows="6" maxlength="5000" class="form-control" required></textarea>
            </div>

            <div class="mt-4">
              <button type="submit" class="btn btn-warning text-white px-4">
                Send Message
              </button>
            </div>
          </form>
        </div>

        <!-- Right Section -->
        <div class="col-lg-6">
          <div class="bg-light border rounded p-4 mb-4">
            <h4 class="text-primary mb-3">Our <strong>Office</strong></h4>
            <ul class="list-unstyled">
              <li class="mb-2">
                <i class="fas fa-map-marker-alt text-warning me-2"></i>
                <strong>Address:</strong> Sunshine Heights Colony, Near Hitech
                City, Sangola
              </li>
              <li class="mb-2">
                <i class="fas fa-phone text-warning me-2"></i>
                <strong>Phone:</strong> +91 91234 56789
              </li>
              <li>
                <i class="fas fa-envelope text-warning me-2"></i>
                <strong>Email:</strong>
                <a href="mailto:sunshineheights@gmail.com">sunshineheights@gmail.com</a>
              </li>
            </ul>
          </div>

          <div class="bg-light border rounded p-4 mb-4">
            <h4 class="text-primary mb-3">Colony <strong>Office Hours</strong></h4>
            <ul class="list-unstyled">
              <li><i class="far fa-clock text-warning me-2"></i> Mon-Fri: 9 AM – 6 PM</li>
              <li><i class="far fa-clock text-warning me-2"></i> Sat: 10 AM – 3 PM</li>
              <li><i class="far fa-clock text-warning me-2"></i> Sun: Closed</li>
            </ul>
          </div>

          <div class="bg-light border rounded p-4">
            <h4 class="text-primary mb-3">Get in <strong>Touch</strong></h4>
            <p class="text-secondary">
              Sunshine Heights is a digital platform designed for colony
              residents to connect, manage flats, post help requests, and stay
              updated on events — all in one place.
            </p>
          </div>
        </div>
		
      </div>
	  
    </div>
	<!-- 🛡️ Security Guard Info Section -->
	<div class="container my-5">
	  <div class="bg-white shadow rounded p-4 text-center">
	    <h3 class="text-primary mb-4">
	      <i class="fas fa-user-shield text-warning me-2"></i>
	      Security Guard Information
	    </h3>

	    <div class="row justify-content-center">
	      <c:forEach var="guard" items="${securityGuardsList}">
	        <div class="col-md-5 col-lg-4 mb-4">
	          <div class="card shadow-sm border-0 h-100">
	            <div class="card-header bg-warning text-white">
	              <h5 class="mb-0">${guard.guardName}</h5>
	            </div>
	            <div class="card-body">
	              <p class="mb-2">
	                <strong>Phone:</strong> ${guard.contact}
	              </p>
	              <p class="mb-2">
	                <strong>Shift:</strong> ${guard.shift}
	              </p>
	              <p class="mb-0">
	                <strong>Gate/Area:</strong> ${guard.assignedArea}
	              </p>
	            </div>
	          </div>
	        </div>
	      </c:forEach>
	    </div>
	  </div>
	</div>

	
	
	<div class="container mt-4">
	  <div class="row">
	    <c:forEach var="complaint" items="${complaintsList}">
			
	      <div class="col-md-6 col-lg-4 mb-4">
			<form class="contact-form" action="updateMessage" method="POST">
	        <div class="card shadow-sm h-100 border-0">
	          
				<input type="hidden" name="complaintId" value="${complaint.complaintId}"/>
				
	          <!-- Card Header -->
			  <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
			    <h5 class="mb-0">${complaint.subject}</h5>
				<a href="userResolveComplaint?complaintId=${complaint.complaintId}">
				  <i class="fas fa-times-circle text-danger fs-5" title="Mark as Resolved"></i>
				</a>
			  </div>

	          <!-- Card Body -->
	          <div class="card-body">
	            <label class="form-label fw-bold mt-3">Message:</label>
				<textarea class="form-control" rows="3" style="" name="message">
					${complaint.message}
					              </textarea></p>

	            <c:if test="${not empty complaint.resolveMessage}">
	              <label class="form-label fw-bold mt-3">Resolved Message:</label>
	              <textarea class="form-control" rows="3" readonly style="resize:none;">
	                    ${complaint.resolveMessage}
	              </textarea>
	            </c:if>
	          </div>

	          <!-- Card Footer -->
	          <div class="card-footer d-flex justify-content-between align-items-center">
	            <span class="badge  bg-secondary">
	              ${complaint.complaintStatus}
	            </span>
	            <small class="text-muted">${complaint.complaintDate}</small>
				
				<input type="submit">
	          </div>
			  </form>
	        </div>
			
			
	      </div>
	    </c:forEach>
	  </div>
	</div>
	
	
	<%@ include file="Footer.jsp" %>
  </div>

  

  <!-- SweetAlert Popups -->
  <c:if test="${not empty sussMsg}">
    <script>
      Swal.fire({
        icon: 'success',
        title: 'Success!',
        text: '${sussMsg}',
        showConfirmButton: false,
        timer: 2500
      });
    </script>
  </c:if>

  <c:if test="${not empty errMsg}">
    <script>
      Swal.fire({
        icon: 'error',
        title: 'Error!',
        text: '${errMsg}',
        showConfirmButton: true
      });
    </script>
  </c:if>

  <!-- Scripts -->
  <script src="resources/assets1/vendor/plugins/js/plugins.min.js"></script>
  <script src="resources/assets1/js/theme.js"></script>
  <script src="resources/assets1/vendor/circle-flip-slideshow/js/jquery.flipshow.min.js"></script>
  <script src="resources/assets1/js/views/view.home.js"></script>
  <script src="resources/assets1/js/theme.init.js"></script>
</body>
</html>
