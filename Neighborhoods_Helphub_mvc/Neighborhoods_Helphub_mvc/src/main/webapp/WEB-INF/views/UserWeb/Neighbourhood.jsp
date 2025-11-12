<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




	



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
	

</head>

<body data-plugin-page-transition>
	<div class="body">
		<%@ include file="NavBar.jsp" %>
		
		
		<div role="main" class="main" >
			<section
				class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-5"
				style="
            background-image: url(resources/assets1/img/page-header/page-header-background.jpg);
          ">
				<div class="container">
					<div class="row">
						<div class="col-md-8 order-2 order-md-1 align-self-center p-static">
							<h1>Our <strong>Neighbour's</strong></h1>
							<span class="sub-title">We are proud to introduce you to our Neighbour's.</span>
						</div>
						<div class="col-md-4 order-1 order-md-2 align-self-center">
							
						</div>
					</div>
				</div>
			</section>

			<div class="container py-4">
				<ul class="nav nav-pills sort-source sort-source-style-3 justify-content-center" data-sort-id="team"
					data-option-key="filter">
					<li class="nav-item active" data-option-value="*">
						<a class="nav-link text-2-5 text-uppercase active" href="#">Show All</a>
					</li>
					<li class="nav-item" data-option-value=".Doctor">
						<a class="nav-link text-2-5 text-uppercase" href="#">Doctor</a>
					</li>
					<li class="nav-item" data-option-value=".Plumber">
						<a class="nav-link text-2-5 text-uppercase" href="#">Plumber</a>
					</li>
					<li class="nav-item" data-option-value=".Electrician">
						<a class="nav-link text-2-5 text-uppercase" href="#">Electrician</a>
					</li>
					
				</ul>

				<div class="sort-destination-loader sort-destination-loader-showing mt-4 pt-2">
				    <div class="row team-list sort-destination" data-sort-id="team">
						<c:forEach var="member" items="${NeighbourList}">
						    <div class="col-12 col-sm-6 col-lg-3 isotope-item ${member.occupation} mb-4">
						        <div class="card member-card border-0 shadow-lg text-center p-3 h-100 position-relative rounded-4 transition-all hover-shadow">

						            <!-- 👤 Profile Icon -->
						            <div class="member-icon-wrapper mx-auto mt-3 mb-3">
						                <div class="rounded-circle bg-light d-flex align-items-center justify-content-center border border-3 border-primary shadow-sm"
						                     style="width: 90px; height: 90px; transition: transform 0.3s ease;">
						                    <i class="fas fa-user text-primary fa-2x"></i>
						                </div>
						            </div>

						            <!-- Basic Info -->
						            <div class="card-body p-3">
						                <h5 class="fw-bold mb-1 text-dark">${member.fullName}</h5>
						                <p class="text-muted small mb-2">${member.occupation}</p>

						                <!-- 👇 Popup Button -->
						                <button type="button"
						                        class="btn btn-outline-primary btn-sm rounded-pill mt-2 fw-semibold shadow-sm px-3"
						                        data-bs-toggle="modal"
						                        data-bs-target="#memberModal-${member.flat_no}">
						                    <i class="fas fa-eye me-1"></i> View Details
						                </button>
						            </div>
						        </div>
						    </div>

						    <!-- 💬 Modal Popup -->
						    <div class="modal fade" id="memberModal-${member.flat_no}" tabindex="-1"
						         aria-labelledby="memberModalLabel-${member.flat_no}" aria-hidden="true">
						        <div class="modal-dialog modal-dialog-centered modal-lg">
						            <div class="modal-content border-0 shadow-lg rounded-4 overflow-hidden">

						                <div class="modal-header bg-primary text-white py-3">
						                    <h5 class="modal-title fw-semibold" id="memberModalLabel-${member.flat_no}">
						                        <i class="fas fa-id-badge me-2"></i> ${member.fullName} - Details
						                    </h5>
						                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
						                </div>

						                <div class="modal-body p-4 bg-light-subtle">
						                    <div class="row">
						                        <!-- Left Icon -->
						                        <div class="col-md-4 text-center mb-3 mb-md-0">
						                            <div class="rounded-circle bg-white d-flex align-items-center justify-content-center border border-3 border-primary mx-auto shadow-sm"
						                                 style="width: 120px; height: 120px;">
						                                <i class="fas fa-user text-primary fa-3x"></i>
						                            </div>
						                            <h5 class="mt-3 mb-1 fw-bold">${member.fullName}</h5>
						                            <p class="text-muted small mb-2">${member.occupation}</p>

						                            <!-- 🌐 Social Links -->
						                            <div class="d-flex justify-content-center gap-3 mt-3">
						                                <c:if test="${not empty member.linkedin}">
						                                    <a href="https://www.linkedin.com/in/${member.linkedin}" target="_blank"
						                                       class="text-primary fs-5" title="LinkedIn"><i class="fab fa-linkedin"></i></a>
						                                </c:if>
						                                <c:if test="${not empty member.instagram}">
						                                    <a href="https://www.instagram.com/${member.instagram}" target="_blank"
						                                       class="text-danger fs-5" title="Instagram"><i class="fab fa-instagram"></i></a>
						                                </c:if>
						                            </div>
						                        </div>

						                        <!-- Right Info Section -->
						                        <div class="col-md-8 text-start small">
						                            <div class="p-2 bg-white rounded-3 shadow-sm">
						                                <p><i class="fas fa-building text-primary me-2"></i><strong>Workplace:</strong> ${member.workplace}</p>
						                                <p><i class="fas fa-briefcase text-success me-2"></i><strong>Experience:</strong> ${member.experience}</p>
						                                <p><i class="fas fa-comment-dots text-info me-2"></i><strong>About:</strong> ${member.message}</p>
						                                <hr>
						                                <p><i class="fas fa-home text-secondary me-2"></i><strong>Flat:</strong> ${member.flat_no}</p>
						                                <p><i class="fas fa-phone-alt text-success me-2"></i><strong>Mobile:</strong> ${member.mobile_no}</p>
						                                <p><i class="fas fa-envelope text-danger me-2"></i><strong>Email:</strong> ${member.email}</p>
						                                <p><i class="fas fa-user text-warning me-2"></i><strong>Age:</strong> ${member.age} |
						                                    <strong>Gender:</strong> ${member.gender}</p>
						                            </div>
						                        </div>
						                    </div>
						                </div>

						                <div class="modal-footer bg-light py-3">
						                    <button type="button" class="btn btn-secondary rounded-pill px-4 shadow-sm"
						                            data-bs-dismiss="modal">
						                        <i class="fas fa-times me-1"></i> Close
						                    </button>
						                </div>

						            </div>
						        </div>
						    </div>
						</c:forEach>

					    </div>
					</div>



					
	</div>

	
	

	<!-- Vendor -->
	<script data-cfasync="false" src="resources/assets1/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/assets1/vendor/plugins/js/plugins.min.js"></script>

	<!-- Theme Base, Components and Settings -->
	<script src="resources/assets1/js/theme.js"></script>

	<!-- Theme Initialization Files -->
	<script src="resources/assets1/js/theme.init.js"></script>
	
		
</body>

<%@ include file="Footer.jsp" %>	

</html>