<!DOCTYPE html>
<html lang="en"
	data-style-switcher-options="{'showBordersStyle': true, 'showLayoutStyle': false, 'showBackgroundColor': false, 'colorPrimary': '#00a1cd', 'colorSecondary': '#183f72', 'colorTertiary': '#0281d7', 'colorQuaternary': '#383f48', 'borderRadius': 4}">


<head>

	<!-- Basic -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	

	<meta name="keywords" content="WebSite Template" />
	<meta name="description" content="Porto - Multipurpose Website Template">
	<meta name="author" content="okler.net">

	

	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

	<!-- Web Fonts  -->
	<link id="googleFonts"
		href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800%7CRoboto+Slab:300,400,700,900&amp;display=swap"
		rel="stylesheet" type="text/css">

	<!-- Vendor CSS -->
	<link rel="stylesheet" href="resources/assets1/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/fontawesome-free/css/all.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/animate/animate.compat.css">
	<link rel="stylesheet" href="resources/assets1/vendor/simple-line-icons/css/simple-line-icons.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/owl.carousel/assets/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/owl.carousel/assets/owl.theme.default.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/magnific-popup/magnific-popup.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" href="resources/assets1/css/theme.css">
	<link rel="stylesheet" href="resources/assets1/css/theme-elements.css">
	<link rel="stylesheet" href="resources/assets1/css/theme-blog.css">
	<link rel="stylesheet" href="resources/assets1/css/theme-shop.css">

	<!-- Demo CSS -->
	<link rel="stylesheet" href="resources/assets1/css/demos/demo-cleaning-services.css">

	<!-- Skin CSS -->
	<link id="skinCSS" rel="stylesheet" href="resources/assets1/css/skins/skin-cleaning-services.css">

	<!-- Theme Custom CSS -->
	<link rel="stylesheet" href="resources/assets1/css/custom.css">

	<!-- Google tag (gtag.js) -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-T21B0FFW8M"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() { dataLayer.push(arguments); }
		gtag('js', new Date());

		gtag('config', 'G-T21B0FFW8M');
	</script>

</head>

<body>

	<div class="body">
		<%@ include file="NavBar.jsp" %>

		<div role="main" class="main">

			<section class="page-header page-header-modern page-header-lg bg-tertiary border-0 my-0">
				<div class="container my-3">
					<div class="row">
						<div class="col-md-12 align-self-center p-static order-2 text-center">
							<h1 class="font-weight-bold text-10">Bill</h1>
						</div>
						<div class="col-md-12 align-self-center order-1">
							<ul class="breadcrumb breadcrumb-light d-block text-center">
								<li><a href="#">Home</a></li>
								<li class="active">Bill</li>
							</ul>
						</div>
					</div>
				</div>
			</section>

			<section class="section border-0 pb-0 pb-lg-5 m-0">
				<div class="container mt-lg-4 pb-3">
					<div class="row mb-4 pb-2">
						<div class="col">
							<p class="custom-font-secondary text-4 mb-4 appear-animation"
								data-appear-animation="fadeInUpShorter" data-appear-animation-delay="300">Lorem ipsum
								dolor sit amet, consectetur adipiscing elit. Proin bibendum ultricies nunc, eu interdum
								enim convallis pretium. </p>
							<p class="pb-1 mb-3 appear-animation" data-appear-animation="fadeInUpShorter"
								data-appear-animation-delay="500">Lorem ipsum dolor sit amet, consectetur adipiscing
								elit. Proin bibendum ultricies nunc, eu interdum enim convallis pretium. Quisque eu
								neque augue. Aliquam egestas nunc at efficitur faucibus. Praesent mauris eros, tincidunt
								id enim sodales, rhoncus malesuada ligula. </p>
							<p class="appear-animation" data-appear-animation="fadeInUpShorter"
								data-appear-animation-delay="700">Vivamus quis purus nec sapien pellentesque imperdiet.
								Nullam porttitor augue mi, sit amet luctus est tincidunt sed. Donec tempus bibendum ex,
								nec vehicula elit. </p>
						</div>
					</div>
					<d					<div class="row mb-5">
						<div class="col">
							<div class="owl-carousel nav-arrows-1 custom-carousel-box-shadow-2"
								data-plugin-options="{
									'responsive': {
										'0': {'items':1},
										'768': {'items':2},
										'979': {'items':3},
										'1199': {'items':4}
									},
									'nav': true,
									'loop': false,
									'margin': 20
								}">

								<!--======================= RENT =======================-->
								<div>
									<div class="card custom-card-style-1">
										<div class="card-body text-center py-5 px-4">
											
											<h3 class="text-dark font-weight-bold text-4 pb-1 mb-4">
												 Rent
											</h3>

											<h2 class="fw-bold text-9 mb-3 text-success">
												${bill.houseRent}
											</h2>

											<p class="text-muted text-2">
												<i class="far fa-calendar me-2"></i>
												Due: <b>${bill.dueDate}</b>
											</p>

											<p class="text-muted text-2">
												<i class="far fa-clock me-2"></i>
												Last Paid: <b>${bill.paidDate}</b>
											</p>

											<p class="text-muted text-2">
												<i class="fas fa-info-circle me-2"></i>
												Status:
												<span class="${bill.status == 'PAID' ? 'text-success' : 'text-danger'}">
													${bill.status}
												</span>
											</p>

											<a href="pay-rent.jsp" class="btn btn-primary btn-lg mt-3 px-5">
												Pay Rent
											</a>
										</div>
									</div>
								</div>

								<!--======================= WATER =======================-->
								<div>
									<div class="card custom-card-style-1">
										<div class="card-body text-center py-5 px-4">
											<h3 class="text-dark font-weight-bold text-4 pb-1 mb-4">
												 Water
											</h3>

											<h2 class="fw-bold text-9 mb-3 text-success">
												${bill.waterBill}
											</h2>

											<p class="text-muted text-2">
												<i class="far fa-calendar me-2"></i>
												Due: <b>${bill.dueDate}</b>
											</p>

											<p class="text-muted text-2">
												<i class="fas fa-file-invoice me-2"></i>
												Bill Generated Every Month
											</p>

											<a href="pay-water.jsp" class="btn btn-primary btn-lg mt-3 px-5">
												Pay Water Bill
											</a>
										</div>
									</div>
								</div>

								<!--======================= ELECTRICITY =======================-->
								<div>
									<div class="card custom-card-style-1">
										<div class="card-body text-center py-5 px-4">

											<h3 class="text-dark font-weight-bold text-4 pb-1 mb-4">
												 Electricity
											</h3>

											<h2 class="fw-bold text-9 mb-3 text-warning">
												${bill.electricityBill}
											</h2>

											<p class="text-muted text-2">
												<i class="far fa-calendar me-2"></i>
												Due: <b>${bill.dueDate}</b>
											</p>

											<p class="text-muted text-2">
												<i class="fas fa-bolt me-2"></i>
												Based on Meter Reading
											</p>

											<a href="pay-electricity.jsp" class="btn btn-primary btn-lg mt-3 px-5">
												Pay Electricity Bill
											</a>
										</div>
									</div>
								</div>

								<!--======================= MAINTENANCE =======================-->
								<div>
									<div class="card custom-card-style-1">
										<div class="card-body text-center py-5 px-4">
											
											<h3 class="text-dark font-weight-bold text-4 pb-1 mb-4">
												 Society Maintenance
											</h3>

											<h2 class="fw-bold text-9 mb-3 text-info">
												${bill.maintenanceCharges}
											</h2>

											<p class="text-muted text-2">
												<i class="far fa-calendar me-2"></i>
												Due: <b>${bill.dueDate}</b>
											</p>

											<p class="text-muted text-2">
												<i class="fas fa-tools me-2"></i>
												Includes Security & Common Areas
												
											</p>

											<a href="pay-maintenance.jsp" class="btn btn-primary btn-lg mt-3 px-5">
												Pay Maintenance
											</a>

										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

								</div>
							</div>
						</div>
					</div>
					
					
				</div>
			</section>

			<section class="section section-with-shape-divider section-height-3 bg-tertiary border-0 m-0">
				<div class="shape-divider" style="height: 116px;">
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
						x="0px" y="0px" viewBox="0 0 1920 116" preserveAspectRatio="xMinYMin">
						<path class="custom-svg-fill-color-tertiary-darken"
							d="M0,24c2.86,0.42,7.41,1.1,13,2c6.13,0.98,10.67,1.77,12,2c11.67,2.01,42.24,7.05,68,11
								c7.79,1.2,22.72,3.48,41,6c20.75,2.86,38.83,5.06,74,9c41.19,4.61,62.09,6.95,93,10c57.4,5.66,101.17,9.03,114,10
								c9.13,0.69,40.29,3.02,109,7c48.33,2.8,87.04,5.04,132,7c76.86,3.35,135.02,4.27,184,5c104.27,1.56,187.39,0.71,234,0
								c21.92-0.34,91.62-1.5,183-5c50.62-1.94,106.43-4.12,181-9c57.01-3.73,108.05-7.94,152-12c94.91-8.78,162.37-17.44,182-20
								c41.76-5.45,72.06-10.09,96-14c21.23-3.47,39.04-6.63,52-9c0-11.67,0-23.33,0-35C1279-11,638-11-3-11C-2,0.67-1,12.33,0,24z" />
						<path fill="#F4F4F4" d="M-7,23c1.59,0.23,4.03,0.58,7,1c82.06,11.6,145.17,16.35,182,19c244.62,17.62,377,23,377,23
								c157.86,6.42,277.64,7.71,308,8c75.8,0.73,232.89,1.31,438-6c0,0,137.72-4.66,358-19c42.98-2.8,104.01-7.03,183-16
								c33.26-3.78,60.85-7.38,80-10c0-9.01,0-18.01,0-27.02c-644,0-1288,0-1932,0C-6.33,4.99-6.67,13.99-7,23z" />
					</svg>
				</div>
				<div class="container pt-4 pb-3 mt-5">
					<div class="row align-items-center justify-content-center pt-3">
						<div class="col-md-9 col-lg-7 col-xl-9 text-center text-xl-start mb-4 mb-xl-0">
							<h2 class="text-color-light font-weight-medium line-height-4 text-9 negative-ls-1 mb-2">For
								<span class="font-weight-extra-bold custom-highlight-1 p-1 appear-animation"
									data-appear-animation="customHighlightAnim"
									data-appear-animation-delay="300">Residential and Commercial</span> Cleaning</h2>
							<p
								class="custom-font-secondary custom-font-size-1 font-weight-light text-color-light opacity-8 mb-0">
								Our Staff is trained to clean everything you need!</p>
						</div>
						<div class="col-xl-3 text-center text-xl-end">
							<div class="position-relative">
									
							</div>
						</div>
					</div>
				</div>
			</section>

		</div>

		
	</div>

	


	<!-- Vendor -->
	<script src="resources/assets1/vendor/plugins/js/plugins.min.js"></script>

	<!-- Theme Base, Components and Settings -->
	<script src="resources/assets1/js/theme.js"></script>

	<!-- Demo -->
	<script src="resources/assets1/js/demos/demo-cleaning-services.js"></script>

	<!-- Theme Initialization Files -->
	<script src="resources/assets1/js/theme.init.js"></script>

</body>


</html>