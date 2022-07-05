<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <title>Add Note</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
        <form class="form">
            <label for="userId">Note ID</label><br>
            <input type="text" name="userId" id="userId"><br>
            <label for="Title">title</label><br>
            <input type="text" name="firstName" id="title"><br>
            <label for="lastName">Notes</label><br>
            <textarea name="notes" id="notes" cols="50" rows="10"></textarea><br>
            <!-- <input type="text" name="lastName" id="notes"><br> -->
            <label for="age">Date</label><br>
            <input type="date" name="date" id="date"><br>
            <button id="addBtn" class="btn waves-effect waves-light">Add</button>
            <!-- <button id="updateBtn" class="btn waves-effect waves-light">Update</button>
            <button id="removeBtn" class="btn waves-effect red darken-1">Remove</button> -->
        </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js" integrity="sha512-NiWqa2rceHnN3Z5j6mSAvbwwg3tiwVNxiAQaaSMSXnRRDh5C2mk/+sKQRw8qjV1vN4nf8iK2a0b048PnHbyx+Q==" crossorigin="anonymous"></script>
    <script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-database.js"></script>
    <script>
        // For Firebase JS SDK v7.20.0 and later, measurementId is optional
        const firebaseConfig = {
            apiKey: "AIzaSyAOcK1u54GLvglXFYjwTQRBtFDttG94mZk",
            authDomain: "note-reminders.firebaseapp.com",
            databaseURL: "https://note-reminders-default-rtdb.asia-southeast1.firebasedatabase.app",
            projectId: "note-reminders",
            storageBucket: "note-reminders.appspot.com",
            messagingSenderId: "101049006012",
            appId: "1:101049006012:web:0452a99fb2766a918a9db9"
        };

        //Initialize Firebase
        firebase.initializeApp(firebaseConfig);
        // Get all data
    </script>
    <script src="addnote.js"></script>
</body>
</html>