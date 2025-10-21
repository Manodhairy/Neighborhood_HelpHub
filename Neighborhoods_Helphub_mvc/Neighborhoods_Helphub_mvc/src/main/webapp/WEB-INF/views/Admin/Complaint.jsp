<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="AdminHeader.jsp" %>

  <div class="wrapper">
    <!-- Search Modal -->
    <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel" aria-hidden="true">
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
		          <div class="row">
					<c:forEach var="complaint" items="${complaintsList}">
					  <div class="col-xl-4 col-lg-6">
					    <div class="card overflow-hidden">
					      <div class="card-header d-flex align-items-center gap-2 border-bottom border-dashed bg-light-subtle">
					        
					        <!-- Complaint Icon -->
					        <div class="icon-wrapper bg-danger-subtle text-danger rounded-circle d-flex align-items-center justify-content-center" 
					             style="width:70px; height:70px;">
					          <i class="ti ti-alert-circle fs-2"></i>
					        </div>

					        <div>
					          <p class="text-dark fw-medium fs-15 mb-1">
					            ${complaint.subject}  <!-- maps to subject/title -->
					          </p>
					          <p class="mb-0 text-muted">Apartment: ${complaint.flat_no}</p>
					        </div>

					        <div class="ms-auto text-lg-end text-md-end text-sm-end">
					          <p class="mb-0 fw-medium text-danger">Status: ${complaint.complaintStatus}</p>
					        </div>
					      </div>

					      <div class="card-body">
					        <h4>Complaint Details</h4>

					        <div class="mt-3">
					          <div class="d-flex justify-content-between">
					            <div>
					              <p class="mb-0 fs-15 fw-medium">Complainant: ${complaint.fullName}</p>
					              <p class="text-muted mb-0 fs-13">Flat No: ${complaint.flat_no} | Contact: ${complaint.mobile_no}</p>
					              <p class="text-muted mb-0 fs-13">${complaint.complaintDate}</p>
					            </div>
					          </div>

					          <p class="my-2 text-danger">
					            ${complaint.message} <!-- complaint description -->
					          </p>

					          <div>
					            <a href="#!" class="badge bg-warning-subtle text-warning fw-medium">${complaint.complaintStatus}</a>
					          </div>
					        </div>
					        <hr />
					      </div>
					    </div>
					  </div>
					</c:forEach>

                 



                    <div class="offcanvas offcanvas-end" tabindex="-1" id="theme-settings-offcanvas">
                      <div
                        class="d-flex align-items-center gap-2 px-3 py-3 offcanvas-header border-bottom border-dashed">
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
                                  <iconify-icon icon="solar:sun-bold-duotone" class="fs-32 text-muted"></iconify-icon>
                                </label>
                              </div>
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Light
                              </h5>
                            </div>

                            <div class="col-4">
                              <div class="form-check card-radio">
                                <input class="form-check-input" type="radio" name="data-bs-theme" id="layout-color-dark"
                                  value="dark" />
                                <label
                                  class="form-check-label p-3 w-100 d-flex justify-content-center align-items-center"
                                  for="layout-color-dark">
                                  <iconify-icon icon="solar:cloud-sun-2-bold-duotone"
                                    class="fs-32 text-muted"></iconify-icon>
                                </label>
                              </div>
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Dark
                              </h5>
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
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Fluid
                              </h5>
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
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Detached
                              </h5>
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
                                <label class="form-check-label p-0 avatar-lg w-100 bg-light" for="topbar-color-light">
                                  <span class="d-flex align-items-center justify-content-center h-100">
                                    <span class="p-2 d-inline-flex shadow rounded-circle bg-white"></span>
                                  </span>
                                </label>
                              </div>
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Light
                              </h5>
                            </div>

                            <div class="col-3">
                              <div class="form-check card-radio">
                                <input class="form-check-input" type="radio" name="data-topbar-color"
                                  id="topbar-color-dark" value="dark" />
                                <label class="form-check-label p-0 avatar-lg w-100 bg-light" for="topbar-color-dark">
                                  <span class="d-flex align-items-center justify-content-center h-100">
                                    <span class="p-2 d-inline-flex shadow rounded-circle bg-dark"></span>
                                  </span>
                                </label>
                              </div>
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Dark
                              </h5>
                            </div>

                            <div class="col-3">
                              <div class="form-check card-radio">
                                <input class="form-check-input" type="radio" name="data-topbar-color"
                                  id="topbar-color-brand" value="brand" />
                                <label class="form-check-label p-0 avatar-lg w-100 bg-light" for="topbar-color-brand">
                                  <span class="d-flex align-items-center justify-content-center h-100">
                                    <span class="p-2 d-inline-flex shadow rounded-circle bg-primary"></span>
                                  </span>
                                </label>
                              </div>
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Gradient
                              </h5>
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
                                <label class="form-check-label p-0 avatar-lg w-100 bg-light" for="sidenav-color-light">
                                  <span class="d-flex align-items-center justify-content-center h-100">
                                    <span class="p-2 d-inline-flex shadow rounded-circle bg-white"></span>
                                  </span>
                                </label>
                              </div>
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Light
                              </h5>
                            </div>

                            <div class="col-3" style="--ct-dark-rgb: 64, 73, 84">
                              <div class="form-check sidebar-setting card-radio">
                                <input class="form-check-input" type="radio" name="data-menu-color"
                                  id="sidenav-color-dark" value="dark" />
                                <label class="form-check-label p-0 avatar-lg w-100 bg-light" for="sidenav-color-dark">
                                  <span class="d-flex align-items-center justify-content-center h-100">
                                    <span class="p-2 d-inline-flex shadow rounded-circle bg-dark"></span>
                                  </span>
                                </label>
                              </div>
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Dark
                              </h5>
                            </div>
                            <div class="col-3">
                              <div class="form-check sidebar-setting card-radio">
                                <input class="form-check-input" type="radio" name="data-menu-color"
                                  id="sidenav-color-brand" value="brand" />
                                <label class="form-check-label p-0 avatar-lg w-100 bg-light" for="sidenav-color-brand">
                                  <span class="d-flex align-items-center justify-content-center h-100">
                                    <span class="p-2 d-inline-flex shadow rounded-circle bg-primary"></span>
                                  </span>
                                </label>
                              </div>
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Brand
                              </h5>
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
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Default
                              </h5>
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
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Compact
                              </h5>
                            </div>

                            <div class="col-4">
                              <div class="form-check sidebar-setting card-radio">
                                <input class="form-check-input" type="radio" name="data-sidenav-size"
                                  id="sidenav-size-small" value="condensed" />
                                <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-small">
                                  <span class="d-flex h-100">
                                    <span class="flex-shrink-0">
                                      <span class="bg-light d-flex h-100 border-end flex-column" style="padding: 2px">
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
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Condensed
                              </h5>
                            </div>

                            <div class="col-4">
                              <div class="form-check sidebar-setting card-radio">
                                <input class="form-check-input" type="radio" name="data-sidenav-size"
                                  id="sidenav-size-small-hover" value="sm-hover" />
                                <label class="form-check-label p-0 avatar-xl w-100" for="sidenav-size-small-hover">
                                  <span class="d-flex h-100">
                                    <span class="flex-shrink-0">
                                      <span class="bg-light d-flex h-100 border-end flex-column" style="padding: 2px">
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
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Hover View
                              </h5>
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
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Full Layout
                              </h5>
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
                              <h5 class="fs-14 text-center text-muted mt-2">
                                Hidden
                              </h5>
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
                              <label class="btn btn-sm btn-soft-primary w-sm" for="layout-position-fixed">Fixed</label>

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
                        <button type="button" class="btn w-50 btn-soft-info">
                          Buy Now
                        </button>
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