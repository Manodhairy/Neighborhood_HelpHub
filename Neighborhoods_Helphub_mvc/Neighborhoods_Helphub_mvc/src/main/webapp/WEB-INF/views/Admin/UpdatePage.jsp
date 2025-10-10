<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Sunshine Heights</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />

    <%@ include file="AdminHeader.jsp" %>
    <style>
        .card {
            border-radius: 1rem;
        }
        .card-header {
            background-color: #f8f9fa;
        }
        .form-label {
            font-weight: 500;
        }
        .text-end button {
            min-width: 100px;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-10 col-xl-8">
            <div class="card shadow-sm">
                <div class="card-header d-flex justify-content-center align-items-center">
                    <h4 class="mb-0">Member Registration Form</h4>
                </div>

                <div class="card-body">
                    <form method="post" action="saveMember">
                        <input type="hidden" name="id" value="${user.id}">
                        <div class="row g-4">
                            <!-- Left Column -->
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="full_name" class="form-label">Full Name</label>
                                    <input type="text" id="full_name" name="fullName" class="form-control" value="${user.full_name}">
                                </div>

                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" id="email" name="email" class="form-control" value="${user.email}">
                                </div>

                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" id="password" name="password" class="form-control" value="${user.password}">
                                </div>

                                <div class="mb-3">
                                    <label for="mobile_no" class="form-label">Mobile No</label>
                                    <input type="text" id="mobile_no" name="mobile_no" class="form-control" maxlength="15" value="${user.mobile_no}">
                                </div>

                                <div class="mb-3">
                                    <label for="flat_no" class="form-label">Flat No</label>
                                    <input type="text" id="flat_no" name="flat_no" class="form-control" value="${user.flat_no}">
                                </div>

                                <div class="mb-3">
                                    <label for="age" class="form-label">Age</label>
                                    <input type="number" id="age" name="age" class="form-control" min="0" max="120" value="${user.age}">
                                </div>
                            </div>

                            <!-- Right Column -->
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="gender" class="form-label">Gender</label>
                                    <select id="gender" name="gender" class="form-select">
                                        <option value="">-- Select Gender --</option>
                                        <option value="Male" ${user.gender == 'Male' ? 'selected' : ''}>Male</option>
                                        <option value="Female" ${user.gender == 'Female' ? 'selected' : ''}>Female</option>
                                        <option value="Other" ${user.gender == 'Other' ? 'selected' : ''}>Other</option>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="relation_to_head" class="form-label">Relation to Head</label>
                                    <input type="text" id="relation_to_head" name="relation_to_head" class="form-control" value="${user.relation_to_head}">
                                </div>

                                <div class="mb-3">
                                    <label for="occupation" class="form-label">Occupation</label>
                                    <input type="text" id="occupation" name="occupation" class="form-control" value="${user.occupation}">
                                </div>

                                <div class="mb-3">
                                    <label for="adhar_no" class="form-label">Aadhar No</label>
                                    <input type="text" id="adhar_no" name="adhar_no" class="form-control" maxlength="20" value="${user.adhar_no}">
                                </div>

                                <div class="mb-3">
                                    <label for="member_status" class="form-label">Member Status</label>
                                    <select id="member_status" name="member_status" class="form-select">
                                        <option value="">-- Select Status --</option>
                                        <option value="Active" ${user.member_status == 'Active' ? 'selected' : ''}>Active</option>
                                        <option value="Inactive" ${user.member_status == 'Inactive' ? 'selected' : ''}>Inactive</option>
                                        <option value="Left" ${user.member_status == 'Left' ? 'selected' : ''}>Left</option>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="date" class="form-label">Date</label>
                                    <input type="text" id="date" name="date" class="form-control" value="${user.date}">
                                </div>
                            </div>
                        </div>

                        <!-- Buttons -->
                        <div class="text-center mt-4">
                            <button type="submit" class="btn btn-primary px-4 me-2">Submit</button>
                            <button type="reset" class="btn btn-secondary px-4">Reset</button>
                        </div>
                    </form>
                </div>
            </div> 
        </div>
    </div>
</div>

</body>
</html>
