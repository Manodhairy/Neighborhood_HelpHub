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
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag("js", new Date());

		gtag("config", "G-T21B0FFW8M");
	</script>
	<style>
	.member-card {
	    transition: all 0.3s ease;
	    border-radius: 15px;
	    background: #fff;
	}
	.member-card:hover {
	    transform: translateY(-6px);
	    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
	}
	.hover-linkedin:hover { color: #0a66c2 !important; }
	.hover-instagram:hover { color: #e4405f !important; }

	.modal-content {
	    border-radius: 15px;
	}
	@media (max-width: 767px) {
	    .modal-dialog {
	        margin: 1rem;
	    }
	}
	</style>

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
							<h1>Our <strong>Team</strong></h1>
							<span class="sub-title">We are proud to introduce you to our team.</span>
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
					<li class="nav-item" data-option-value=".leadership">
						<a class="nav-link text-2-5 text-uppercase" href="#">Leadership</a>
					</li>
					<li class="nav-item" data-option-value=".marketing">
						<a class="nav-link text-2-5 text-uppercase" href="#">Marketing</a>
					</li>
					<li class="nav-item" data-option-value=".development">
						<a class="nav-link text-2-5 text-uppercase" href="#">Development</a>
					</li>
					<li class="nav-item" data-option-value=".design">
						<a class="nav-link text-2-5 text-uppercase" href="#">Design</a>
					</li>
				</ul>

				<div class="sort-destination-loader sort-destination-loader-showing mt-4 pt-2">
				    <div class="row team-list sort-destination" data-sort-id="team">
					        <c:forEach var="member" items="${NeighbourList}">
					            <div class="col-12 col-sm-6 col-lg-3 isotope-item leadership">
									
									    <div class="card shadow-sm border-0 member-card text-center p-3">

									        <!-- 👤 Profile Icon -->
									        <div class="member-icon-wrapper mx-auto mt-3 mb-3">
									            <div class="rounded-circle bg-light d-flex align-items-center justify-content-center border border-3 border-primary shadow-sm"
									                 style="width: 90px; height: 90px;">
									                <i class="fas fa-user text-primary fa-2x"></i>
									            </div>
									        </div>

									        <!-- Basic Info -->
									        <div class="card-body p-3">
									            <h5 class="fw-bold mb-1">${member.fullName}</h5>
									            <p class="text-muted small mb-2">${member.occupation}</p>

									            <!-- 👇 Popup Button -->
									            <button type="button" class="btn btn-outline-primary btn-sm rounded-pill mt-2"
									                    data-bs-toggle="modal" data-bs-target="#memberModal-${member.flat_no}">
									                View Details
									            </button>
									        </div>
									    </div>
									</div>

									<!-- 💬 Modal Popup -->
									<div class="modal fade" id="memberModal-${member.flat_no}" tabindex="-1" aria-labelledby="memberModalLabel-${member.flat_no}" aria-hidden="true">
									    <div class="modal-dialog modal-dialog-centered modal-lg">
									        <div class="modal-content border-0 shadow-lg rounded-4">

									            <div class="modal-header bg-primary text-white">
									                <h5 class="modal-title fw-semibold" id="memberModalLabel-${member.flat_no}">
									                    ${member.fullName} — Details
									                </h5>
									                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
									            </div>

									            <div class="modal-body p-4">
									                <div class="row">
									                    <!-- Left Icon -->
									                    <div class="col-md-4 text-center mb-3 mb-md-0">
									                        <div class="rounded-circle bg-light d-flex align-items-center justify-content-center border border-3 border-primary mx-auto shadow-sm"
									                             style="width: 120px; height: 120px;">
									                            <i class="fas fa-user text-primary fa-3x"></i>
									                        </div>
									                        <h5 class="mt-3 mb-1">${member.fullName}</h5>
									                        <p class="text-muted small">${member.occupation}</p>

									                        <!-- Social Links -->
									                        <div class="d-flex justify-content-center gap-3 mt-3">
									                            <c:if test="${not empty member.linkedin}">
									                                <a href="https://www.linkedin.com/in/${member.linkedin}" target="_blank"
									                                   class="text-muted fs-4 hover-linkedin"><i class="fab fa-linkedin"></i></a>
									                            </c:if>
									                            <c:if test="${not empty member.instagram}">
									                                <a href="https://www.instagram.com/${member.instagram}" target="_blank"
									                                   class="text-muted fs-4 hover-instagram"><i class="fab fa-instagram"></i></a>
									                            </c:if>
									                        </div>
									                    </div>

									                    <!-- Right Info Section -->
									                    <div class="col-md-8 text-start small">
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

									            <div class="modal-footer bg-light">
									                <button type="button" class="btn btn-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
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