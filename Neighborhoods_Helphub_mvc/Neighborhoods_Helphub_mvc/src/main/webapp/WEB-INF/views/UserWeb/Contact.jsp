<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">


<head>
  <!-- SweetAlert CSS + JS -->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
	<%@ include file="NavBar.jsp" %>
  <div role="main" class="main pt-3" style="background-color:#c1bcca24">
    <div class="container bg-white shadow-lg rounded p-5">
      <div class="row">
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
                <input type="hidden" name="userId" value="${userId}" />
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
