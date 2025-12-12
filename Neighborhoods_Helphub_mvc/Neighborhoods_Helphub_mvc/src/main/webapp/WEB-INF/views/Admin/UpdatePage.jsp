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
					<form id="editMemberForm" method="post" action="saveMember" novalidate>
					    <input type="hidden" name="id" value="${user.id}">
					    <div class="row g-4">

					        <div class="col-md-6">

					            <div class="mb-3">
					                <label class="form-label">Full Name</label>
					                <input type="text" name="fullName" class="form-control" value="${user.fullName}" required>
					                <div class="invalid-feedback">Enter full name</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Email</label>
					                <input type="email" name="email" class="form-control" value="${user.email}" required>
					                <div class="invalid-feedback">Enter valid email</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Password</label>
					                <input type="password" name="password" class="form-control" value="${user.password}" minlength="6" required>
					                <div class="invalid-feedback">Minimum 6 characters</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Mobile No</label>
					                <input type="text" name="mobile_no" class="form-control" maxlength="10" pattern="[0-9]{10}" value="${user.mobile_no}" required>
					                <div class="invalid-feedback">Enter 10 digit number</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Flat No</label>
					                <input type="text" name="flat_no" class="form-control" value="${user.flat_no}" required>
					                <div class="invalid-feedback">Enter flat no</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Age</label>
					                <input type="number" name="age" class="form-control" min="1" max="120" value="${user.age}" required>
					                <div class="invalid-feedback">Enter valid age</div>
					            </div>

					        </div>


					        <div class="col-md-6">

					            <div class="mb-3">
					                <label class="form-label">Gender</label>
					                <select name="gender" class="form-select" required>
					                    <option value="">-- Select Gender --</option>
					                    <option value="Male" ${user.gender == 'Male' ? 'selected' : ''}>Male</option>
					                    <option value="Female" ${user.gender == 'Female' ? 'selected' : ''}>Female</option>
					                    <option value="Other" ${user.gender == 'Other' ? 'selected' : ''}>Other</option>
					                </select>
					                <div class="invalid-feedback">Select gender</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Relation to Head</label>
					                <input type="text" name="relation_to_head" class="form-control" value="${user.relation_to_head}" required>
					                <div class="invalid-feedback">Required</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Occupation</label>
					                <input type="text" name="occupation" class="form-control" value="${user.occupation}" required>
					                <div class="invalid-feedback">Required</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Aadhar No</label>
					                <input type="text" name="adhar_no" class="form-control" maxlength="12" pattern="[0-9]{12}" value="${user.adhar_no}" required>
					                <div class="invalid-feedback">Enter valid 12 digit Aadhar</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Member Status</label>
					                <select name="member_status" class="form-select" required>
					                    <option value="">-- Select Status --</option>
					                    <option value="Active" ${user.member_status == 'Active' ? 'selected' : ''}>Active</option>
					                    <option value="Inactive" ${user.member_status == 'Inactive' ? 'selected' : ''}>Inactive</option>
					                    <option value="Left" ${user.member_status == 'Left' ? 'selected' : ''}>Left</option>
					                </select>
					                <div class="invalid-feedback">Select status</div>
					            </div>

					            <div class="mb-3">
					                <label class="form-label">Date</label>
					                <input type="text" name="date" class="form-control" value="${user.date}" required>
					                <div class="invalid-feedback">Enter date</div>
					            </div>

					        </div>
					    </div>

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
<script>
document.getElementById('editMemberForm').addEventListener('submit', function(event){
    if(!this.checkValidity()){
        event.preventDefault();
        event.stopPropagation();
    }
    this.classList.add('was-validated');
});
</script>
</body>
</html>
