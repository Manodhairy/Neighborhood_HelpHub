<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Sunshine Heights </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Admin panel" name="description" />
        <meta content="Coderthemes" name="author" />

        <%@ include file="AdminHeader.jsp" %>
            <style>
                body {
                    background-color: #f2f6fc;
                }

                .card {
                    border-radius: 1rem;
                }

                .card-header {
                    background-color: #007bff;
                    color: white;
                    text-align: center;
                    font-weight: 600;
                }

                .form-label {
                    font-weight: 500;
                }

                .form-control,
                .form-select {
                    border-radius: 0.5rem;
                }

                .btn-primary {
                    background-color: #007bff;
                    border: none;
                }

                .btn-primary:hover {
                    background-color: #0056b3;
                }

                .btn-secondary {
                    border-radius: 0.5rem;
                }

                h1 {
                    text-align: center;
                    margin-bottom: 30px;
                    color: #007bff;
                    font-weight: 700;
                }
            </style>
    </head>

    <body>
        <div class="wrapper">


            <!-- Search Modal -->
            <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content bg-transparent">
                        <div class="card mb-1">
                            <div class="px-3 py-2 d-flex flex-row align-items-center" id="top-search">
                                <i class="ti ti-search fs-22"></i>
                                <input type="search" class="form-control border-0" id="search-modal-input"
                                    placeholder="Search for actions, people,">
                                <button type="button" class="btn p-0" data-bs-dismiss="modal"
                                    aria-label="Close">[esc]</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div class="page-content">

                <div class="page-container">

                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-head d-flex align-items-sm-center flex-sm-row flex-column">

                            </div><!-- end card header -->
                        </div>
                        <!--end col-->
                    </div>







                    <div class="d-flex justify-content-center ">
                        <div class="col-lg-8 col-md-10">
                            <c:if test="${not empty successMessage}">
                                <div class="alert alert-success alert-dismissible fade show text-center" role="alert">
                                    ${successMessage}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert"
                                        aria-label="Close"></button>
                                </div>
                            </c:if>

                            <c:if test="${not empty errorMessage}">
                                <div class="alert alert-danger alert-dismissible fade show text-center" role="alert">
                                    ${errorMessage}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert"
                                        aria-label="Close"></button>
                                </div>
                            </c:if>
                        </div>
                    </div>


                    <div class="container ">
                        <h1>Add User</h1>
                        <div class="row justify-content-center">
                            <div class="col-lg-10 col-xl-8">
                                <div class="card shadow-sm">
                                    <div class="card-body">
                                        <form method="post" action="AddMember">

                                            <div class="row g-4">
                                                <!-- Left Column -->
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="full_name" class="form-label">Full Name</label>
                                                        <input type="text" id="full_name" name="fullName"
                                                            class="form-control" placeholder="Enter full name">
															<span class="text-danger" id="fullNameError"></span>
                                                    </div>
													

                                                    <div class="mb-3">
                                                        <label for="email" class="form-label">Email</label>
                                                        <input type="email" id="email" name="email" class="form-control"
                                                            placeholder="Enter email address">
															<span class="text-danger" id="emailError"></span>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="password" class="form-label">Password</label>
                                                        <input type="password" id="password" name="password"
                                                            class="form-control" placeholder="Enter password">
															<span class="text-danger" id="passwordError"></span>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="mobile_no" class="form-label">Mobile No</label>
                                                        <input type="text" id="mobile_no" name="mobile_no"
                                                            class="form-control" maxlength="15"
                                                            placeholder="Enter mobile number">
															<span class="text-danger" id="mobileError"></span>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="flat_no" class="form-label">Flat No</label>
                                                        <input type="text" id="flat_no" name="flat_no"
                                                            class="form-control" placeholder="Enter flat number">
															<span class="text-danger" id="flatError"></span>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="age" class="form-label">Age</label>
                                                        <input type="number" id="age" name="age" class="form-control"
                                                            min="0" max="120" placeholder="Enter age">
															<span class="text-danger" id="ageError"></span>
                                                    </div>
                                                </div>

                                                <!-- Right Column -->
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="gender" class="form-label">Gender</label>
                                                        <select id="gender" name="gender" class="form-select">
                                                            <option value="">-- Select Gender --</option>
                                                            <option>Male</option>
                                                            <option>Female</option>
                                                            <option>Other</option>
                                                        </select>
														<span class="text-danger" id="genderError"></span>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="relation_to_head" class="form-label">Relation to
                                                            Head</label>
                                                        <input type="text" id="relation_to_head" name="relation_to_head"
                                                            class="form-control" placeholder="Enter relation to head">
															<span class="text-danger" id="relationError"></span>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="occupation" class="form-label">Occupation</label>
                                                        <input type="text" id="occupation" name="occupation"
                                                            class="form-control" placeholder="Enter occupation">
															<span class="text-danger" id="occupationError"></span>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="adhar_no" class="form-label">Aadhar No</label>
                                                        <input type="text" id="adhar_no" name="adhar_no"
                                                            class="form-control" maxlength="20"
                                                            placeholder="Enter Aadhar number">
															<span class="text-danger" id="adharError"></span>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="member_status" class="form-label">Member
                                                            Status</label>
                                                        <select id="member_status" name="member_status"
                                                            class="form-select">
                                                            <option value="">-- Select Status --</option>
                                                            <option>Active</option>
                                                            <option>Inactive</option>
                                                            <option>Left</option>
                                                        </select>
														<span class="text-danger" id="statusError"></span>

                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="date" class="form-label">Date</label>
                                                        <input type="date" id="date" name="date" class="form-control">
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Buttons -->
                                            <div class="text-center mt-4">
                                                <button type="submit" class="btn btn-primary px-5 me-2">Submit</button>
                                                <button type="reset" class="btn btn-secondary px-5">Reset</button>
												<span class="text-danger" id="dateError"></span>

                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>





                </div>

                <!-- ============================================================== -->
                <!-- End Page content -->
                <!-- ============================================================== -->

            </div>
            <!-- END wrapper -->

            <!-- Theme Settings -->
            <div class="offcanvas offcanvas-end" tabindex="-1" id="theme-settings-offcanvas">
                <div class="d-flex align-items-center gap-2 px-3 py-3 offcanvas-header border-bottom border-dashed">
                    <h5 class="flex-grow-1 mb-0">Theme Settings</h5>

                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>

                <div class="offcanvas-body p-0 h-100" data-simplebar>
                    <div class="p-3 border-bottom border-dashed">
                        <h5 class="mb-3 fs-16 fw-bold">Color Scheme</h5>

                        <div class="row">
                            <div class="col-4">
                                <div class="form-check card-radio">
                                    <input class="form-check-input" type="radio" name="data-bs-theme"
                                        id="layout-color-light" value="light">
                                    <label
                                        class="form-check-label p-3 w-100 d-flex justify-content-center align-items-center"
                                        for="layout-color-light">
                                        <iconify-icon icon="solar:sun-bold-duotone"
                                            class="fs-32 text-muted"></iconify-icon>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Light</h5>
                            </div>

                            <div class="col-4">
                                <div class="form-check card-radio">
                                    <input class="form-check-input" type="radio" name="data-bs-theme"
                                        id="layout-color-dark" value="dark">
                                    <label
                                        class="form-check-label p-3 w-100 d-flex justify-content-center align-items-center"
                                        for="layout-color-dark">
                                        <iconify-icon icon="solar:cloud-sun-2-bold-duotone"
                                            class="fs-32 text-muted"></iconify-icon>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Dark</h5>
                            </div>
                        </div>
                    </div>

                    <div class="p-3 border-bottom border-dashed">
                        <h5 class="mb-3 fs-16 fw-bold">Layout Mode</h5>

                        <div class="row">
                            <div class="col-4">
                                <div class="form-check card-radio">
                                    <input class="form-check-input" type="radio" name="data-layout-mode"
                                        id="layout-mode-fluid" value="fluid">
                                    <label class="form-check-label p-0 avatar-xl w-100" for="layout-mode-fluid">
                                        <div>
                                            <span class="d-flex h-100">
                                                <span class="flex-shrink-0">
                                                    <span class="bg-light d-flex h-100 border-end flex-column p-1 px-2">
                                                        <span class="d-block p-1 bg-dark-subtle rounded mb-1"></span>
                                                        <span
                                                            class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                        <span
                                                            class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                        <span
                                                            class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                        <span
                                                            class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    </span>
                                                </span>
                                                <span class="flex-grow-1">
                                                    <span class="d-flex h-100 flex-column rounded-2">
                                                        <span class="bg-light d-block p-1"></span>
                                                    </span>
                                                </span>
                                            </span>
                                        </div>

                                        <div>
                                            <span class="d-flex h-100 flex-column">
                                                <span
                                                    class="bg-light d-flex p-1 align-items-center border-bottom border-secondary border-opacity-25">
                                                    <span class="d-block p-1 bg-dark-subtle rounded me-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded ms-auto"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded ms-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded ms-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded ms-1"></span>
                                                </span>
                                                <span class="bg-light d-block p-1"></span>
                                            </span>
                                        </div>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Fluid</h5>
                            </div>

                            <div class="col-4">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-layout-mode"
                                        id="data-layout-detached" value="detached">
                                    <label class="form-check-label p-0 avatar-xl w-100" for="data-layout-detached">
                                        <span class="d-flex h-100 flex-column">
                                            <span class="bg-light d-flex p-1 align-items-center border-bottom ">
                                                <span class="d-block p-1 bg-dark-subtle rounded me-1"></span>
                                                <span
                                                    class="d-block border border-3 border-secondary border-opacity-25 rounded ms-auto"></span>
                                                <span
                                                    class="d-block border border-3 border-secondary border-opacity-25 rounded ms-1"></span>
                                                <span
                                                    class="d-block border border-3 border-secondary border-opacity-25 rounded ms-1"></span>
                                                <span
                                                    class="d-block border border-3 border-secondary border-opacity-25 rounded ms-1"></span>
                                            </span>
                                            <span class="d-flex h-100 p-1 px-2">
                                                <span class="flex-shrink-0">
                                                    <span class="bg-light d-flex h-100 flex-column p-1 px-2">
                                                        <span
                                                            class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                        <span
                                                            class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                        <span
                                                            class="d-block border border-3 border-secondary border-opacity-25 rounded w-100"></span>
                                                    </span>
                                                </span>
                                            </span>
                                            <span class="bg-light d-block p-1 mt-auto px-2"></span>
                                        </span>

                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Detached</h5>
                            </div>
                        </div>
                    </div>

                    <div class="p-3 border-bottom border-dashed">
                        <h5 class="mb-3 fs-16 fw-bold">Topbar Color</h5>

                        <div class="row">
                            <div class="col-3">
                                <div class="form-check card-radio">
                                    <input class="form-check-input" type="radio" name="data-topbar-color"
                                        id="topbar-color-light" value="light">
                                    <label class="form-check-label p-0 avatar-lg w-100 bg-light"
                                        for="topbar-color-light">
                                        <span class="d-flex align-items-center justify-content-center h-100">
                                            <span class="p-2 d-inline-flex shadow rounded-circle bg-white"></span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Light</h5>
                            </div>

                            <div class="col-3">
                                <div class="form-check card-radio">
                                    <input class="form-check-input" type="radio" name="data-topbar-color"
                                        id="topbar-color-dark" value="dark">
                                    <label class="form-check-label p-0 avatar-lg w-100 bg-light"
                                        for="topbar-color-dark">
                                        <span class="d-flex align-items-center justify-content-center h-100">
                                            <span class="p-2 d-inline-flex shadow rounded-circle bg-dark"></span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Dark</h5>
                            </div>

                            <div class="col-3">
                                <div class="form-check card-radio">
                                    <input class="form-check-input" type="radio" name="data-topbar-color"
                                        id="topbar-color-brand" value="brand">
                                    <label class="form-check-label p-0 avatar-lg w-100 bg-light"
                                        for="topbar-color-brand">
                                        <span class="d-flex align-items-center justify-content-center h-100">
                                            <span class="p-2 d-inline-flex shadow rounded-circle bg-primary"></span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Gradient</h5>
                            </div>
                        </div>
                    </div>

                    <div class="p-3 border-bottom border-dashed">
                        <h5 class="mb-3 fs-16 fw-bold">Menu Color</h5>

                        <div class="row">
                            <div class="col-3">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-menu-color"
                                        id="sidenav-color-light" value="light">
                                    <label class="form-check-label p-0 avatar-lg w-100 bg-light"
                                        for="sidenav-color-light">
                                        <span class="d-flex align-items-center justify-content-center h-100">
                                            <span class="p-2 d-inline-flex shadow rounded-circle bg-white"></span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Light</h5>
                            </div>

                            <div class="col-3" style="--ct-dark-rgb: 64,73,84;">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-menu-color"
                                        id="sidenav-color-dark" value="dark">
                                    <label class="form-check-label p-0 avatar-lg w-100 bg-light"
                                        for="sidenav-color-dark">
                                        <span class="d-flex align-items-center justify-content-center h-100">
                                            <span class="p-2 d-inline-flex shadow rounded-circle bg-dark"></span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Dark</h5>
                            </div>
                            <div class="col-3">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-menu-color"
                                        id="sidenav-color-brand" value="brand">
                                    <label class="form-check-label p-0 avatar-lg w-100 bg-light"
                                        for="sidenav-color-brand">
                                        <span class="d-flex align-items-center justify-content-center h-100">
                                            <span class="p-2 d-inline-flex shadow rounded-circle bg-primary"></span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Brand</h5>
                            </div>
                        </div>
                    </div>

                    <div class="p-3 .border-bottom .border-dashed">
                        <h5 class="mb-3 fs-16 fw-bold">Sidebar Size</h5>

                        <div class="row">
                            <div class="col-4">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-sidenav-size"
                                        id="sidenav-size-default" value="default">
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-default">
                                        <span class="d-flex h-100">
                                            <span class="flex-shrink-0">
                                                <span class="bg-light d-flex h-100 border-end  flex-column p-1 px-2">
                                                    <span class="d-block p-1 bg-dark-subtle rounded mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                </span>
                                            </span>
                                            <span class="flex-grow-1">
                                                <span class="d-flex h-100 flex-column">
                                                    <span class="bg-light d-block p-1"></span>
                                                </span>
                                            </span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Default</h5>
                            </div>

                            <div class="col-4">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-sidenav-size"
                                        id="sidenav-size-compact" value="compact">
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-compact">
                                        <span class="d-flex h-100">
                                            <span class="flex-shrink-0">
                                                <span class="bg-light d-flex h-100 border-end  flex-column p-1">
                                                    <span class="d-block p-1 bg-dark-subtle rounded mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                </span>
                                            </span>
                                            <span class="flex-grow-1">
                                                <span class="d-flex h-100 flex-column">
                                                    <span class="bg-light d-block p-1"></span>
                                                </span>
                                            </span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Compact</h5>
                            </div>

                            <div class="col-4">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-sidenav-size"
                                        id="sidenav-size-small" value="condensed">
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-small">
                                        <span class="d-flex h-100">
                                            <span class="flex-shrink-0">
                                                <span class="bg-light d-flex h-100 border-end flex-column"
                                                    style="padding: 2px;">
                                                    <span class="d-block p-1 bg-dark-subtle rounded mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                </span>
                                            </span>
                                            <span class="flex-grow-1">
                                                <span class="d-flex h-100 flex-column">
                                                    <span class="bg-light d-block p-1"></span>
                                                </span>
                                            </span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Condensed</h5>
                            </div>

                            <div class="col-4">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-sidenav-size"
                                        id="sidenav-size-small-hover" value="sm-hover">
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-small-hover">
                                        <span class="d-flex h-100">
                                            <span class="flex-shrink-0">
                                                <span class="bg-light d-flex h-100 border-end flex-column"
                                                    style="padding: 2px;">
                                                    <span class="d-block p-1 bg-dark-subtle rounded mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                    <span
                                                        class="d-block border border-3 border-secondary border-opacity-25 rounded w-100 mb-1"></span>
                                                </span>
                                            </span>
                                            <span class="flex-grow-1">
                                                <span class="d-flex h-100 flex-column">
                                                    <span class="bg-light d-block p-1"></span>
                                                </span>
                                            </span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Hover View</h5>
                            </div>

                            <div class="col-4">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-sidenav-size"
                                        id="sidenav-size-full" value="full">
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-full">
                                        <span class="d-flex h-100">
                                            <span class="flex-shrink-0">
                                                <span class="d-flex h-100 flex-column">
                                                    <span class="d-block p-1 bg-dark-subtle mb-1"></span>
                                                </span>
                                            </span>
                                            <span class="flex-grow-1">
                                                <span class="d-flex h-100 flex-column">
                                                    <span class="bg-light d-block p-1"></span>
                                                </span>
                                            </span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Full Layout</h5>
                            </div>

                            <div class="col-4">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-sidenav-size"
                                        id="sidenav-size-fullscreen" value="fullscreen">
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-fullscreen">
                                        <span class="d-flex h-100">
                                            <span class="flex-grow-1">
                                                <span class="d-flex h-100 flex-column">
                                                    <span class="bg-light d-block p-1"></span>
                                                </span>
                                            </span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Hidden</h5>
                            </div>
                        </div>
                    </div>

                    <div class="p-3 border-bottom border-dashed d-none">
                        <div class="d-flex justify-content-between align-items-center">
                            <h5 class="fs-16 fw-bold mb-0">Container Width</h5>

                            <div class="btn-group radio" role="group">
                                <input type="radio" class="btn-check" name="data-container-position"
                                    id="container-width-fixed" value="fixed">
                                <label class="btn btn-sm btn-soft-primary w-sm" for="container-width-fixed">Full</label>

                                <input type="radio" class="btn-check" name="data-container-position"
                                    id="container-width-scrollable" value="scrollable">
                                <label class="btn btn-sm btn-soft-primary w-sm ms-0"
                                    for="container-width-scrollable">Boxed</label>
                            </div>
                        </div>
                    </div>

                    <div class="p-3 border-bottom border-dashed d-none">
                        <div class="d-flex justify-content-between align-items-center">
                            <h5 class="fs-16 fw-bold mb-0">Layout Position</h5>

                            <div class="btn-group radio" role="group">
                                <input type="radio" class="btn-check" name="data-layout-position"
                                    id="layout-position-fixed" value="fixed">
                                <label class="btn btn-sm btn-soft-primary w-sm"
                                    for="layout-position-fixed">Fixed</label>

                                <input type="radio" class="btn-check" name="data-layout-position"
                                    id="layout-position-scrollable" value="scrollable">
                                <label class="btn btn-sm btn-soft-primary w-sm ms-0"
                                    for="layout-position-scrollable">Scrollable</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-flex align-items-center gap-2 px-3 py-2 offcanvas-header border-top border-dashed">
                    <button type="button" class="btn w-50 btn-soft-danger" id="reset-layout">Reset</button>
                    <button type="button" class="btn w-50 btn-soft-info">Buy Now</button>
                </div>

            </div>

			<script>
			document.querySelector("form").addEventListener("submit", function(e){

			    // reset errors
			    clearErrors();

			    let valid = true;

			    // fields
			    const fullName = document.getElementById("full_name");
			    const email = document.getElementById("email");
			    const password = document.getElementById("password");
			    const mobile = document.getElementById("mobile_no");
			    const age = document.getElementById("age");
			    const gender = document.getElementById("gender");
			    const adhar = document.getElementById("adhar_no");
			    const status = document.getElementById("member_status");
			    const date = document.getElementById("date");

			    // regex
			    const nameRegex = /^[A-Za-z\s]+$/;
			    const emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
			    const passRegex = /^(?=.*[A-Z])(?=.*[@$!%*?&]).{8,}$/;
			    const mobileRegex = /^[0-9]{10}$/;
			    const adharRegex = /^\d{12}$/;

			    // validations
			    if(!nameRegex.test(fullName.value.trim())){
			        showError("fullNameError","Enter valid full name");
			        fullName.classList.add("is-invalid");
			        valid = false;
			    }
			    if(!emailRegex.test(email.value.trim())){
			        showError("emailError","Enter valid email");
			        email.classList.add("is-invalid");
			        valid = false;
			    }
			    if(!passRegex.test(password.value.trim())){
			        showError("passwordError","Password must contain 6+ characters, 1 uppercase and 1 special character");
			        password.classList.add("is-invalid");
			        valid = false;
			    }
			    if(!mobileRegex.test(mobile.value.trim())){
			        showError("mobileError","Enter valid 10 digit mobile number");
			        mobile.classList.add("is-invalid");
			        valid = false;
			    }
			    if(!adharRegex.test(adhar.value.trim())){
			        showError("adharError","Enter valid 12 digit Aadhaar");
			        adhar.classList.add("is-invalid");
			        valid = false;
			    }
			    if(gender.value === ""){
			        showError("genderError","Select gender");
			        gender.classList.add("is-invalid");
			        valid = false;
			    }
			    if(status.value === ""){
			        showError("statusError","Select member status");
			        status.classList.add("is-invalid");
			        valid = false;
			    }
			    if(date.value === ""){
			        showError("dateError","Select date");
			        date.classList.add("is-invalid");
			        valid = false;
			    }
			    if(age.value < 1 || age.value > 120){
			        showError("ageError","Enter valid age (1-120)");
			        age.classList.add("is-invalid");
			        valid = false;
			    }

			    if(!valid){
			        e.preventDefault();
			    }
			});


			// FUNCTIONS --------------------

			// show message
			function showError(spanId,message){
			    document.getElementById(spanId).innerText = message;
			}

			// remove all errors
			function clearErrors(){
			    document.querySelectorAll(".text-danger").forEach(span=> span.innerText = "");
			    document.querySelectorAll(".form-control, .form-select").forEach(inp=> inp.classList.remove("is-invalid"));
			}

			// remove error when typing
			document.querySelectorAll("input, select").forEach(el=>{
			    el.addEventListener("input", function(){
			        el.classList.remove("is-invalid");
			        el.nextElementSibling.innerText = "";
			    });
			});
			</script>


    </body>

    </html>