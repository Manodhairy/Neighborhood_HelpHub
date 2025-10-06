<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Sunshine Heights - Add User</title>
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
        .form-control, .form-select {
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
	<div class="d-flex justify-content-center mt-3 mr-5">
	    <div class="col-lg-8 col-md-10">
	        <c:if test="${not empty successMessage}">
	            <div class="alert alert-success alert-dismissible fade show text-center" role="alert">
	                ${successMessage}
	                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	            </div>
	        </c:if>

	        <c:if test="${not empty errorMessage}">
	            <div class="alert alert-danger alert-dismissible fade show text-center" role="alert">
	                ${errorMessage}
	                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	            </div>
	        </c:if>
	    </div>
	</div>


<div class="container mt-5">
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
                                    <input type="text" id="full_name" name="full_name" class="form-control" placeholder="Enter full name">
                                </div>

                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" id="email" name="email" class="form-control" placeholder="Enter email address">
                                </div>

                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" id="password" name="password" class="form-control" placeholder="Enter password">
                                </div>

                                <div class="mb-3">
                                    <label for="mobile_no" class="form-label">Mobile No</label>
                                    <input type="text" id="mobile_no" name="mobile_no" class="form-control" maxlength="15" placeholder="Enter mobile number">
                                </div>

                                <div class="mb-3">
                                    <label for="flat_no" class="form-label">Flat No</label>
                                    <input type="text" id="flat_no" name="flat_no" class="form-control" placeholder="Enter flat number">
                                </div>

                                <div class="mb-3">
                                    <label for="age" class="form-label">Age</label>
                                    <input type="number" id="age" name="age" class="form-control" min="0" max="120" placeholder="Enter age">
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
                                </div>

                                <div class="mb-3">
                                    <label for="relation_to_head" class="form-label">Relation to Head</label>
                                    <input type="text" id="relation_to_head" name="relation_to_head" class="form-control" placeholder="Enter relation to head">
                                </div>

                                <div class="mb-3">
                                    <label for="occupation" class="form-label">Occupation</label>
                                    <input type="text" id="occupation" name="occupation" class="form-control" placeholder="Enter occupation">
                                </div>

                                <div class="mb-3">
                                    <label for="adhar_no" class="form-label">Aadhar No</label>
                                    <input type="text" id="adhar_no" name="adhar_no" class="form-control" maxlength="20" placeholder="Enter Aadhar number">
                                </div>

                                <div class="mb-3">
                                    <label for="member_status" class="form-label">Member Status</label>
                                    <select id="member_status" name="member_status" class="form-select">
                                        <option value="">-- Select Status --</option>
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        <option>Left</option>
                                    </select>
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
                        </div>
                    </form>
                </div>
            </div> 
        </div>
    </div>
</div>


</body>
</html>
