<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css" rel="stylesheet">
    <style>
        .gradient-custom {
            background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));
            height: 100vh;
        }

        button[type="submit"]:hover {
            background-color: #ffffff;
        }
    </style>
    <script>
        function showAlert(message) {
            alert(message);
        }
    </script>
</head>

<body>
<form action="/premierleague/registerservlet" method="POST">
<section class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card bg-dark text-white" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">

                        <div class="mb-md-5 mt-md-4 pb-5">
                            <h2 class="fw-bold mb-2 text-uppercase">Register</h2>
                            <p class="text-white-50 mb-5">Please enter your details to register!</p>

                            <div data-mdb-input-init class="form-outline form-white mb-4">
                                <input type="email" id="typeEmail" name="email" class="form-control form-control-lg" required />
                                <label class="form-label" for="typeEmail">Email</label>
                            </div>

                            <div data-mdb-input-init class="form-outline form-white mb-4">
                                <input type="password" id="typePassword" name="password" class="form-control form-control-lg" required />
                                <label class="form-label" for="typePassword">Password</label>
                            </div>

                            <div data-mdb-input-init class="form-outline form-white mb-4">
                                <input type="password" id="typeConfirmPassword" name="confirmPassword" class="form-control form-control-lg" required />
                                <label class="form-label" for="typeConfirmPassword">Confirm Password</label>
                            </div>

                            <button data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-light btn-lg px-5" type="submit">
                                Register
                            </button>
                        </div>

                        <div>
                            <p class="mb-0">Already have an account? 
                                <a href="login.jsp" class="text-white-50 fw-bold">Login</a>
                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</form>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>
</body>

</html>
