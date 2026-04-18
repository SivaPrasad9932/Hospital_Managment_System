<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Management System</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .hero-section {
            background: linear-gradient(135deg, #0d6efd 0%, #003d99 100%);
            color: white;
            padding: 60px 0;
            margin-bottom: 40px;
            border-radius: 0 0 25px 25px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        .card-custom {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
            border: none;
        }
        .card-custom:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.15);
        }
        .btn-action {
            width: 100%;
            padding: 12px;
            font-weight: 600;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }
    </style>
</head>
<body>

    <div class="hero-section text-center">
        <div class="container">
            <h1 class="display-4 fw-bold">Doctor Administration</h1>
            <p class="lead">Manage medical staff and schedules efficiently</p>
        </div>
    </div>

    <div class="container">
        <div class="row g-4 justify-content-center">
            
            <div class="col-md-4">
                <div class="card h-100 card-custom shadow-sm p-4 text-center">
                    <div class="mb-3 text-primary">
                        <i class="fas fa-users fa-3x"></i>
                    </div>
                    <h3>View Staff</h3>
                    <p class="text-muted">Access the complete directory of registered doctors.</p>
                    <a href="show" class="btn btn-primary btn-action">
                        <i class="fas fa-list"></i> Show All Doctors
                    </a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card h-100 card-custom shadow-sm p-4 text-center">
                    <div class="mb-3 text-success">
                        <i class="fas fa-user-plus fa-3x"></i>
                    </div>
                    <h3>New Entry</h3>
                    <p class="text-muted">Onboard a new medical professional to the system.</p>
                    <a href="register" class="btn btn-success btn-action">
                        <i class="fas fa-plus-circle"></i> Register Doctor
                    </a>
                </div>
            </div>

            
        </div>

        <footer class="mt-5 py-4 text-center text-muted">
            <hr>
            <p>&copy; 2026 Hospital Management System | Designed with JSP & Bootstrap</p>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>