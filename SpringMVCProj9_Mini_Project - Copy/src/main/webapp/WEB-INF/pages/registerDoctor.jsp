<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f4f8; /* Light blue-grey background */
        }
        .card {
            border-top: 5px solid #198754; /* Green accent on top */
            border-radius: 10px;
        }
        .btn-custom {
            background-color: #0d6efd; /* Blue */
            color: white;
        }
        .btn-custom:hover {
            background-color: #198754; /* Turns Green on hover */
            color: white;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow-sm p-4">
                <h3 class="text-center mb-4 text-primary">Doctor Registration</h3>
                
                <frm:form method="post" modelAttribute="dvo">
                    
                      <div class="mb-3">
                        <label class="form-label fw-bold">Doctor ID</label>
                        <frm:input path="did" class="form-control" placeholder="Enter Docter ID"  required="true"/>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label fw-bold">Doctor Name</label>
                        <frm:input path="name" class="form-control" placeholder="Enter name"  required="true"/>
                    </div>
                    
                    <div class="mb-4">
                        <label class="form-label fw-bold">Specialization</label>
                        <frm:input path="specialization" class="form-control" placeholder="e.g. Cardiology"  required="true"/>
                    </div>
                    
                    <div class="d-grid">
                        <button type="submit" class="btn  btn-custom">Register Doctor</button>
                      <a href="home" class="btn btn-primary mt-2">Go to Home</a>
                    </div>
                   
                </frm:form>

            </div>
        </div>
    </div>
</div>

</body>
</html>