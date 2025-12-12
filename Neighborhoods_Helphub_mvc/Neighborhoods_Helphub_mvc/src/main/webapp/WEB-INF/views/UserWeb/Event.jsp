=<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ include file="NavBar.jsp" %>
<!-- Bootstrap 5 & Font Awesome -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

<section id="content" style="background-color:#c1bcca24">

    <!-- ✅ Success Message -->
    <c:if test="${not empty reqMsg}">
        <div class="alert alert-success text-center w-75 mx-auto mt-3" role="alert">
            ${reqMsg}
        </div>
    </c:if>

	<div class="text-center p-5">
	  <button class="btn btn-primary btn-lg px-4 py-2 shadow-lg rounded-pill"
	          data-bs-toggle="modal" data-bs-target="#eventRegisterModal"
	          style="font-weight: 600; letter-spacing: 0.5px;">
	    <i class="fas fa-calendar-plus me-2"></i> Register your Event
	  </button>
	</div>

    <!-- ✅ Event Registration Modal -->
    <div class="modal fade" id="eventRegisterModal" tabindex="-1" aria-labelledby="eventRegisterModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content rounded-4 shadow-lg">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title fw-semibold" id="eventRegisterModalLabel">Event Registration</h5>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body">
            <form action="EventRegister" method="post" class="px-3">

              <!-- Event Name -->
              <div class="mb-3">
                <label class="form-label fw-semibold">Event Name</label>
                <input type="text" class="form-control" name="eventName" placeholder="Event Name" required>
              </div>

              <!-- Organizer -->
              <div class="mb-3">
                <label class="form-label fw-semibold">Organised By</label>
                <input type="text" class="form-control" name="organizer" placeholder="Friend’s Colony Association" required>
              </div>

              <!-- Date -->
              <div class="mb-3">
                <label class="form-label fw-semibold">Date & Time</label>
                <input type="text" class="form-control" name="eventDate" 
                       placeholder="Sunday, 15th September, 2025 | 5:00PM - 10:00PM" required>
              </div>

              <!-- Venue -->
              <div class="mb-3">
                <label class="form-label fw-semibold">Venue</label>
                <input type="text" class="form-control" name="venue" 
                       placeholder="Friend’s Colony Ground - Main Hall" required>
              </div>

              <!-- Online Link -->
              <div class="mb-3">
                <label class="form-label fw-semibold">Online Link</label>
                <input type="text" class="form-control" name="onlineLink" 
                       placeholder="Zoom (link will be shared later)" required>
              </div>

              <!-- Message -->
              <div class="mb-3">
                <label for="message" class="form-label fw-semibold">Message (Optional)</label>
                <textarea class="form-control" id="message" name="message" rows="3"></textarea>
              </div>

              <!-- Submit -->
              <div class="text-center">
                <button type="submit" class="btn btn-success px-5 py-2 fw-semibold">
                  Confirm Registration
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- ✅ Event List -->
	<div class="container">
	        <c:forEach var="e" items="${Eventlist}" varStatus="status">
	            <div class="row align-items-center mb-5 py-4 px-3 rounded-4 shadow-sm 
	                        ${status.index % 2 == 0 ? 'flex-lg-row-reverse bg-light' : 'bg-white'}">

	                <!-- Event Image -->
	                <div class="col-lg-5 mb-3 mb-lg-0">
	                    <img src="resources/assets/images/sunshine.png" alt="${e.eventName}" class="img-fluid rounded-4 shadow">
	                </div>

	                <!-- Event Content -->
	                <div class="col-lg-7">
	                    <h3 class="fw-bold text-primary">${e.eventName}</h3>
	                    <p class="text-muted">
	                        <c:choose>
	                            <c:when test="${not empty e.message}">
	                                ${e.message}
	                            </c:when>
	                            <c:otherwise>
	                                Join us for this amazing event organized by ${e.organizer}.
	                            </c:otherwise>
	                        </c:choose>
	                    </p>

	                    <div class="row g-3 mb-3">
	                        <div class="col-md-6"><i class="fas fa-users text-primary me-2"></i>${e.organizer}</div>
	                        <div class="col-md-6"><i class="fas fa-calendar-alt text-primary me-2"></i>${e.eventDate}</div>
	                        <div class="col-md-6"><i class="fas fa-map-marker-alt text-primary me-2"></i>${e.venue}</div>
	                        <div class="col-md-6"><i class="fas fa-video text-primary me-2"></i>
	                            <a href="${e.onlineLink}" target="_blank">${e.onlineLink}</a>
	                        </div>
	                    </div>

	                    <h5 class="mt-3 text-success fw-semibold">Highlights:</h5>
	                    <ul class="list-unstyled mb-0">
	                        <li><i class="fas fa-check-circle text-success me-2"></i> Cultural Performances</li>
	                        <li><i class="fas fa-check-circle text-success me-2"></i> Games & Fun</li>
	                        <li><i class="fas fa-check-circle text-success me-2"></i> Food & Drinks</li>
	                        <li><i class="fas fa-check-circle text-success me-2"></i> Meet & Greet</li>
	                    </ul>
	                </div>
	            </div>
	        </c:forEach>

	        <c:if test="${empty Eventlist}">
	            <div class="alert alert-info text-center rounded-pill shadow-sm">No events available right now.</div>
	        </c:if>
	    </div>
		
		<%@ include file="Footer.jsp" %>
</section>

<!-- ✅ Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<script>
    // Auto-hide success alert
    setTimeout(function() {
        var alert = document.querySelector(".alert");
        if (alert) {
            alert.style.transition = "opacity 0.5s";
            alert.style.opacity = "0";
            setTimeout(() => alert.remove(), 500);
        }
    }, 3000);
</script>




<!-- Vendor Scripts -->
<script data-cfasync="false" src="resources/assets1/cloudflare-static/email-decode.min.js"></script>
<script src="resources/assets1/vendor/plugins/js/plugins.min.js"></script>
<script src="resources/assets1/js/theme.js"></script>
<script src="resources/assets1/vendor/circle-flip-slideshow/js/jquery.flipshow.min.js"></script>
<script src="resources/assets1/js/views/view.home.js"></script>
<script src="resources/assets1/js/theme.init.js"></script>

</body>
</html>
