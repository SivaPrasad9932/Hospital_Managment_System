<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; }
        .table-card {
            background: white;
            border-radius: 8px;
            border-top: 4px solid #198754; /* Green accent */
        }
        /* Tightens the table spacing */
        .table td, .table th {
            padding: 8px 12px;
            vertical-align: middle;
        }
        /* Custom button sizes */
        .btn-action {
            padding: 2px 10px;
            font-size: 0.85rem;
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <div class="table-card shadow-sm p-3">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5 class="text-primary fw-bold m-0">Doctor Directory</h5>
            <a href="home" class="btn btn-primary">Go to Home</a>
            <a href="register" class="btn btn-sm btn-outline-success">+ Add New</a>
        </div>

        <table class="table table-hover table-sm border-bottom">
            <thead class="table-light">
                <tr>
                    <th style="width: 50px">ID</th>
                    <th>Name</th>
                    <th>Specialization</th>
                    <th class="text-center" style="width: 150px">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${dlist}" var="doc">
                    <tr>
                        <td class="text-muted">${doc.did}</td>
                        <td class="fw-semibold">${doc.name}</td>
                        <td><span class="badge bg-info-subtle text-info-emphasis border border-info-subtle">${doc.specialization}</span></td>
                        <td class="text-center">
                            <a href="edit?no=${doc.did}" class="btn btn-action btn-outline-primary me-1">Edit</a>
                            <a href="del?no=${doc.did}" class="btn btn-action btn-outline-danger" 
                               onclick="return confirm('Are you sure?')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                
                <c:if test="${empty dlist}">
                    <tr>
                        <td colspan="4" class="text-center py-3 text-muted">No records found.</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>