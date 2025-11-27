<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en"
	data-style-switcher-options="{'showBordersStyle': true, 'showLayoutStyle': true, 'showBackgroundColor': true}">


<head>

	<!-- Basic -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	

	<meta name="keywords" content="WebSite Template" />
	<meta name="description" content="Porto - Multipurpose Website Template">
	<meta name="author" content="okler.net">

	<!-- Favicon -->
	<link rel="shortcut icon" href="resources/assets1/img/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="resources/assets1/img/apple-touch-icon.png">

	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

	<!-- Web Fonts  -->
	<link id="googleFonts"
		href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800%7CShadows+Into+Light%7CPlayfair+Display:400&amp;display=swap"
		rel="stylesheet" type="text/css">

	<!-- Vendor CSS -->
	<link rel="stylesheet" href="resources/assets1/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/fontawesome-free/css/all.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/animate/animate.compat.css">
	<link rel="stylesheet" href="resources/assets1/vendor/simple-line-icons/css/simple-line-icons.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/owl.carousel/assets/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/owl.carousel/assets/owl.theme.default.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/magnific-popup/magnific-popup.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/bootstrap-star-rating/css/star-rating.min.css">
	<link rel="stylesheet" href="resources/assets1/vendor/bootstrap-star-rating/themes/krajee-fas/theme.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" href="resources/assets1/css/theme.css">
	<link rel="stylesheet" href="resources/assets1/css/theme-elements.css">
	<link rel="stylesheet" href="resources/assets1/css/theme-blog.css">
	<link rel="stylesheet" href="resources/assets1/css/theme-shop.css">

	<!-- Skin CSS -->
	<link id="skinCSS" rel="stylesheet" href="resources/assets1/css/skins/default.css">

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
<%@ include file="NavBar.jsp" %>

<body data-plugin-page-transition>

	<div class="body">
		<div class="notice-top-bar bg-primary" data-sticky-start-at="180">
			<button class="hamburguer-btn hamburguer-btn-light notice-top-bar-close m-0 active" data-set-active="false">
				<span class="close">
					<span></span>
					<span></span>
				</span>
			</button>
			
		</div>
		

		<div role="main" class="main shop py-4">

			<div class="container">

								<c:forEach var="shop" items="${shopList}">
				    <div class="row align-items-center">
				        <!-- LEFT: SHOP IMAGE -->
				        <div class="col-sm-4 mb-4 mb-sm-0">
				            <div class="product mb-0">
				                <div class="product-thumb-info border-0 mb-0">

				                    <!-- Nearby Badge -->
				                    <div class="product-thumb-info-badges-wrapper">
				                        <span class="badge badge-ecommerce text-bg-success">Nearby Shop</span>
				                    </div>

				                    <!-- Quick View -->
				                    <a href="shopDetails?id=${shop.id}"
				                       class="quick-view text-uppercase font-weight-semibold text-2">
				                        VIEW DETAILS
				                    </a>

				                    <!-- Shop Image -->
				                    <a href="shopDetails?id=${shop.id}">
				                        <div class="product-thumb-info-image">
				                            <img alt="${shop.shopName}" class="img-fluid"
				                                 style="height:280px;object-fit:cover;border-radius:10px;"
				                                 src="${shop.imageUrl}">
				                        </div>
				                    </a>

				                </div>
				            </div>
				        </div>

				        <!-- RIGHT: SHOP INFO -->
				        <div class="col-sm-8">
				            <div class="summary entry-summary">

				                <!-- Shop Name -->
				                <h2 class="mb-1 font-weight-bold text-5">
				                    <a href="shopDetails?id=${shop.id}"
				                       class="text-color-dark text-decoration-none text-color-hover-primary">
				                        ${shop.shopName}
				                    </a>
				                </h2>

				                <!-- Owner Name -->
				                <p class="text-3 mb-1">
				                     Owner: <strong>${shop.ownerName}</strong>
				                </p>

				                <!-- Category -->
				                <p class="text-3 text-dark mb-2">
				                    <i class="fas fa-tag"></i> ${shop.category}
				                </p>

				                <div class="divider divider-small">
				                    <hr class="bg-color-grey-400">
				                </div>

				                <!-- Description -->
				                <p class="text-3-5 mb-3">
				                    ${shop.description}
				                </p>

				                <!-- Shop Info -->
				                <ul class="list list-unstyled text-2 mb-3">
				                    <li> Address:
				                        <strong class="text-color-dark">${shop.address}</strong>
				                    </li>
				                    <li> Contact:
				                        <strong class="text-color-dark">${shop.contact}</strong>
				                    </li>
				                    <li> Timing:
				                        <strong class="text-color-dark">
				                            ${shop.openTime} - ${shop.closeTime}
				                        </strong>
				                    </li>
				                </ul>

				                <!-- BUTTON -->
				                <div class="mt-3">
				                    <a href="shopDetails?id=${shop.id}"
				                       class="btn btn-primary btn-sm px-4 rounded-3">
				                        View Shop
				                    </a>
				                </div>
				            </div>
				        </div>

				        <!-- Divider line -->
				        <div class="col">
				            <hr class="my-5">
				        </div>

				    </div>
				</c:forEach>


		</div>

		<%@ include file="Footer.jsp" %>
	</div>

	
	


	<!-- Vendor -->
	<script data-cfasync="false" src="resources/assets1/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/assets1/vendor/plugins/js/plugins.min.js"></script>
	<script src="resources/assets1/vendor/bootstrap-star-rating/js/star-rating.min.js"></script>
	<script src="resources/assets1/vendor/bootstrap-star-rating/themes/krajee-fas/theme.min.js"></script>
	<script src="resources/assets1/vendor/jquery.countdown/jquery.countdown.min.js"></script>

	<!-- Theme Base, Components and Settings -->
	<script src="resources/assets1/js/theme.js"></script>

	<!-- Current Page Vendor and Views -->
	<script src="resources/assets1/js/views/view.shop.js"></script>

	<!-- Theme Initialization Files -->
	<script src="resources/assets1/js/theme.init.js"></script>

</body>


</html>