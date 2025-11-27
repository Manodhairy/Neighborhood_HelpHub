<!DOCTYPE html>
<html lang="en"
  data-style-switcher-options="{'showBordersStyle': true, 'showLayoutStyle': true, 'showBackgroundColor': true}">

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <title>Sunshine Heights</title>

  <meta name="keywords" content="WebSite Template" />
  <meta name="description" content="Porto - Multipurpose Website Template" />
  <meta name="author" content="okler.net" />

  <!-- Favicon -->
  <link rel="shortcut icon" href="resources/assets/images/favicon.ico" type="image/x-icon" />
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

  <!-- Current Page CSS -->
  <link rel="stylesheet" href="resources/assets1/vendor/circle-flip-slideshow/css/component.css" />

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

<body data-plugin-page-transition>
  <div class="body">
    <header id="header" class="header-effect-shrink"
      data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': false, 'stickyChangeLogo': true, 'stickyStartAt': 30, 'stickyHeaderContainerHeight': 70}">
      <div class="header-body">
        <div class="header-container container">
          <div class="header-row">
            <div class="header-column">
              <div class="header-row">
                <div class="header-logo">
                  <a href="index.html">
                    <img alt="Porto" width="150" height="58" data-sticky-width="90" data-sticky-height="50"
                      src="resources/assets/images/sunshine.png" />
                  </a>
                </div>
              </div>
            </div>
            <div class="header-column justify-content-end">
              <div class="header-row">
                <div
                  class="header-nav header-nav-line header-nav-top-line header-nav-top-line-with-border order-2 order-lg-1">
                  <div
                    class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">
                    <nav class="collapse">
                      <ul class="nav nav-pills" id="mainNav">
                        <li class="dropdown">
                          <a class="dropdown-item dropdown-toggle" href="HomeData">
                            Home
                          </a>

                        </li>
                        <li class="dropdown dropdown-mega">
                          <a class="dropdown-item dropdown-toggle" href="Neighbour">
                            Neighbour's
                          </a>

                        </li>
                        <li class="dropdown">
                          <a class="dropdown-item dropdown-toggle active" href="EventInfo">
                            Events
                          </a>

                        </li>
                        <li class="dropdown">
                          <a class="dropdown-item dropdown-toggle" href="#">
                            Pages
                          </a>

                        </li>

                        <li class="dropdown">
                          <a class="dropdown-item dropdown-toggle" href="#">
                            Blog
                          </a>

                        </li>
                        <li class="dropdown">
                          <a class="dropdown-item dropdown-toggle" href="shops">
                            Shops
                          </a>

                        </li>
                        <li class="dropdown">
                          <a class="dropdown-item dropdown-toggle" href="contact">
                            Contact
                          </a>

                        </li>
                      </ul>
                    </nav>
                  </div>
                  <button class="btn header-btn-collapse-nav" data-bs-toggle="collapse"
                    data-bs-target=".header-nav-main nav">
                    <i class="fas fa-bars"></i>
                  </button>
                </div>
                <div
                  class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2">
                  <div
                    class="header-nav-feature header-nav-features-user header-nav-features-user-logged d-inline-flex mx-2 pe-2"
                    id="headerAccount">
                    <a href="#" class="header-nav-features-toggle" aria-label="">
                      <i class="far fa-user-circle"></i> ${UserName}
                    </a>
                    <div
                      class="header-nav-features-dropdown header-nav-features-dropdown-mobile-fixed header-nav-features-dropdown-force-right"
                      id="headerTopUserDropdown">
                      <div class="row">
                        <div class="col-8">
                          <p class="mb-0 pb-0 text-2 line-height-1 pt-1">
                            Hello,
                          </p>
                          <p>
                            <strong class="text-color-dark text-4">${UserName}</strong>
                          </p>
                        </div>
                        <div class="col-4">
                          <div class="d-flex justify-content-end">
                            <img class="rounded-circle" width="40" height="40" alt=""
                              src="resources/assets1/img/profile.jpg" />
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col">
                          <ul class="nav nav-list-simple flex-column text-3">
                            <li class="nav-item">
                              <a class="nav-link" href="UserProfile">My Profile</a>
                            </li>

                            <li class="nav-item">
                              <a class="nav-link border-bottom-0" href="LogOutUser">Log
                                Out</a>
                            </li>
                          </ul>
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
    </header>