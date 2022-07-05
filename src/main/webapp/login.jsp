<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="login.css">
    <title>Login</title>
</head>
<body>
    <section class="form my-2 mx-5">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="https://images.pexels.com/photos/9758163/pexels-photo-9758163.jpeg?cs=srgb&dl=pexels-ron-lach-9758163.jpg&fm=jpg" class="img-fluid">
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <h1 class="font-weight-bold py-3">Notes Reminder</h1>
                    <h4>Login to your account</h4>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input id="email" type="email" placeholder="Email-Address" class="form-control my-2 p-3">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input id="password" type="password" placeholder="*******" class="form-control my-2 p-3">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7 mt-3 mb-4">
                                <button id="login_btn" type="button" class="btn1" onclick="login()">Login</button>
                            </div>
                        </div>
                        <p>Don't Have an account? <a href="SignUp.jsp">Register Here</a></p>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>

<script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
         https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-database.js"></script>

<!-- Our script must be loaded after firebase references -->
<script src="firebase.js"></script>
</html>