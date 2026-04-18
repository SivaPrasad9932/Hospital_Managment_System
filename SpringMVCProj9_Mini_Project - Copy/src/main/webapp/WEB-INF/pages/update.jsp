<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; }
        .registration-card {
            max-width: 450px;
            margin: 50px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border-top: 4px solid #198754; /* Green accent */
        }
        .header-text { color: #0d6efd; font-weight: bold; }
    </style>
</head>
<body>

<div class="container">
    <div class="registration-card">
        <h3 class="text-center mb-4 header-text">Doctor Registration</h3>
        
        <frm:form method="post" modelAttribute="dvo">
            
            <div class="mb-3">
                <label class="form-label">Doctor ID</label>
                <frm:input path="did" class="form-control" placeholder="ID Number" readonly="true"/>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Doctor Name</label>
                <frm:input path="name" class="form-control" placeholder="Full Name" required="true"/>
            </div>
            
            <div class="mb-4">
                <label class="form-label">Specialization</label>
                <frm:input path="specialization" class="form-control" placeholder="Cardiology, etc." required="true"/>
            </div>
            
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-primary">Update Doctor</button>
                <a href="show" class="btn btn-outline-danger">Cancel</a>
            </div>
            <f:hidden path="updateCount"/>
           
        </frm:form>
    </div>
</div>

</body>
</html>