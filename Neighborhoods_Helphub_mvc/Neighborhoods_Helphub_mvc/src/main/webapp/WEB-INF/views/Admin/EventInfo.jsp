<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ include file="AdminHeader.jsp" %>

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
                                    placeholder="Search for actions, people," />
                                <button type="button" class="btn p-0" data-bs-dismiss="modal" aria-label="Close">
                                    [esc]
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="page-content">
                <div class="page-container">
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-head d-flex align-items-sm-center flex-sm-row flex-column"></div>
                            <!-- end card header -->
                        </div>
                        <!--end col-->
                    </div>

					<div class="app-wrapper">
					  <div class="app-content">
					    <div class="container-fluid">
					      <div class="row justify-content-center">
					        <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12">
					          


					          <div class="card shadow-lg border-0 rounded-3">
					            <div class="card-header border-bottom d-flex justify-content-between align-items-center bg-light">
					              <h4 class="header-title mb-0 text-dark">Event Requests</h4>
					              <span class="small text-dark">Manage user-submitted events</span>
					            </div>

					            <div class="card-body">
					              <div class="row g-4">
					                
					                <c:forEach var="event" items="${eventList}">
					                  <div class="col-lg-4 col-md-6">
					                    <div class="card border shadow-sm rounded-4 h-100">
					                      
					                      <!-- Header with User Icon and Name -->
					                      <div class="p-3 d-flex align-items-center bg-light">
					                        <i class="ti ti-user-circle fs-3 me-2 text-primary"></i>
					                        <div>
					                          <h5 class="mb-0 fw-semibold text-dark">${event.fullName}</h5>
					                          <small class="text-muted">Requested Event</small>
					                        </div>
					                      </div>

					                      <!-- Card Body with Event Details -->
					                      <div class="card-body">
					                        <h5 class="text-primary mb-2">${event.eventName}</h5>

					                        <ul class="list-unstyled small mb-3">
					                          <li><i class="ti ti-building me-2 text-success"></i><b>Organizer:</b> ${event.organizer}</li>
					                          <li><i class="ti ti-calendar-event me-2 text-warning"></i><b>Date:</b> ${event.eventDate}</li>
					                          <li><i class="ti ti-map-pin me-2 text-danger"></i><b>Venue:</b> ${event.venue}</li>
					                          <li><i class="ti ti-link me-2 text-info"></i><b>Online Link:</b>
					                            <c:if test="${not empty event.onlineLink}">
					                              <a href="#" target="_blank" class="text-primary text-decoration-underline">Join</a>
					                            </c:if>
					                            <c:if test="${empty event.onlineLink}">
					                              <span class="text-muted">—</span>
					                            </c:if>
					                          </li>
					                        </ul>

					                        <div class="border-top pt-2 mb-2 small text-muted">
					                          <i class="ti ti-message-circle me-1 text-secondary"></i>${event.message}
					                        </div>

					                        <!-- Action Buttons -->
					                        <div class="d-flex justify-content-between">
					                          <a href="approveEvent?eId=${event.eId}" class="btn btn-success btn-sm w-50 me-2 d-flex align-items-center justify-content-center">
					                            <i class="ti ti-check me-1"></i> Approve
					                          </a>
					                          <a href="rejectEvent?eId=${event.eId}" class="btn btn-danger btn-sm w-50 d-flex align-items-center justify-content-center">
					                            <i class="ti ti-x me-1"></i> Reject
					                          </a>
					                        </div>

					                      </div>
					                    </div>
					                  </div>
					                </c:forEach>

					              </div>
					            </div>
					          </div>

					        </div>
					      </div>
					    </div>
					  </div>
					</div>


                    <div class="app-wrapper">
                        <div class="app-content">
                            <div class="container-fluid">
                                <div class="row justify-content-center">
                                    <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12">
                                        <div class="card shadow-lg border-0 rounded-3">
                                            <div
                                                class="card-header border-bottom border-dashed d-flex justify-content-between align-items-center bg-success" >
                                                <h4 class="header-title mb-0 " style="color:#000" >Upcoming Event</h4>
                                                <span class=" small" style="color:#000">Manage  events</span>
                                            </div>

                                            <div class="card-body">
                                                <div class="table-responsive">
                                                    <table class="table table-bordered align-middle mb-0">
                                                        <thead class="table-light text-center">
                                                            <tr>
                                                                <th></th>
                                                                <th>Requested By</th>
                                                                <th>Event Name</th>
                                                                <th>Organizer</th>
                                                                <th>Date</th>
                                                                <th>Venue</th>
                                                                <th>Online Link</th>
                                                                <th>Message</th>

                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>

                                                        <tbody>
                                                            <c:forEach var="eventApprove" items="${eventListApprove}">
                                                                <tr>
                                                                    <td>
                                                                        <i class="ti ti-user-circle fs-2"
                                                                            style="color: blue"></i>
                                                                    </td>
                                                                    <td>${eventApprove.fullName}</td>
                                                                    <td>${eventApprove.eventName}</td>
                                                                    <td>${eventApprove.organizer}</td>
                                                                    <td>${eventApprove.eventDate}</td>
                                                                    <td>${eventApprove.venue}</td>
                                                                    <td>
                                                                       
                                                                            <a href="#"
                                                                                target="_blank"
                                                                                class="text-decoration-underline text-primary">Join
                                                                                Link</a>
                                                                        
                                                                        
                                                                    </td>
                                                                    <td>${eventApprove.message}</td>

                                                                    <td>
                                                                       

                                                                            <a href="rejectEvent?eId=${eventApprove.eId}"
                                                                                class="btn btn-danger btn-sm d-flex align-items-center justify-content-center px-3 w-100"
                                                                                style="max-width: 130px">
                                                                                <i class="ti ti-x me-1"></i> Delete
                                                                            </a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <!-- end table-responsive -->
                                            </div>
                                            <!-- end card-body -->
                                        </div>
                                        <!-- end card -->
                                    </div>
                                    <!-- end col -->
                                </div>
                                <!-- end row -->
                            </div>
                            <!-- end container-fluid -->
                        </div>
                        <!-- end app-content -->
                    </div>
                    <!-- end app-wrapper -->
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
                                        id="layout-color-light" value="light" />
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
                                        id="layout-color-dark" value="dark" />
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
                                        id="layout-mode-fluid" value="fluid" />
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
                                        id="data-layout-detached" value="detached" />
                                    <label class="form-check-label p-0 avatar-xl w-100" for="data-layout-detached">
                                        <span class="d-flex h-100 flex-column">
                                            <span class="bg-light d-flex p-1 align-items-center border-bottom">
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
                                        id="topbar-color-light" value="light" />
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
                                        id="topbar-color-dark" value="dark" />
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
                                        id="topbar-color-brand" value="brand" />
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
                                        id="sidenav-color-light" value="light" />
                                    <label class="form-check-label p-0 avatar-lg w-100 bg-light"
                                        for="sidenav-color-light">
                                        <span class="d-flex align-items-center justify-content-center h-100">
                                            <span class="p-2 d-inline-flex shadow rounded-circle bg-white"></span>
                                        </span>
                                    </label>
                                </div>
                                <h5 class="fs-14 text-center text-muted mt-2">Light</h5>
                            </div>

                            <div class="col-3" style="--ct-dark-rgb: 64, 73, 84">
                                <div class="form-check sidebar-setting card-radio">
                                    <input class="form-check-input" type="radio" name="data-menu-color"
                                        id="sidenav-color-dark" value="dark" />
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
                                        id="sidenav-color-brand" value="brand" />
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
                                        id="sidenav-size-default" value="default" />
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-default">
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
                                        id="sidenav-size-compact" value="compact" />
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-compact">
                                        <span class="d-flex h-100">
                                            <span class="flex-shrink-0">
                                                <span class="bg-light d-flex h-100 border-end flex-column p-1">
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
                                        id="sidenav-size-small" value="condensed" />
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-small">
                                        <span class="d-flex h-100">
                                            <span class="flex-shrink-0">
                                                <span class="bg-light d-flex h-100 border-end flex-column"
                                                    style="padding: 2px">
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
                                        id="sidenav-size-small-hover" value="sm-hover" />
                                    <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-small-hover">
                                        <span class="d-flex h-100">
                                            <span class="flex-shrink-0">
                                                <span class="bg-light d-flex h-100 border-end flex-column"
                                                    style="padding: 2px">
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
                                        id="sidenav-size-full" value="full" />
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
                                        id="sidenav-size-fullscreen" value="fullscreen" />
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
                                    id="container-width-fixed" value="fixed" />
                                <label class="btn btn-sm btn-soft-primary w-sm" for="container-width-fixed">Full</label>

                                <input type="radio" class="btn-check" name="data-container-position"
                                    id="container-width-scrollable" value="scrollable" />
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
                                    id="layout-position-fixed" value="fixed" />
                                <label class="btn btn-sm btn-soft-primary w-sm"
                                    for="layout-position-fixed">Fixed</label>

                                <input type="radio" class="btn-check" name="data-layout-position"
                                    id="layout-position-scrollable" value="scrollable" />
                                <label class="btn btn-sm btn-soft-primary w-sm ms-0"
                                    for="layout-position-scrollable">Scrollable</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-flex align-items-center gap-2 px-3 py-2 offcanvas-header border-top border-dashed">
                    <button type="button" class="btn w-50 btn-soft-danger" id="reset-layout">
                        Reset
                    </button>
                    <button type="button" class="btn w-50 btn-soft-info">Buy Now</button>
                </div>
            </div>
        </div>