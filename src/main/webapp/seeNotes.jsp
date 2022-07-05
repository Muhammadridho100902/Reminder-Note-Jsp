<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>See Notes</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
 <header>
        <h1>Notes Reminder</h1>
    </header>
    <div class="pt-5 container">
        <table class="table table-primary table-bordered table-striped table-hover col-3">
            <thead class="thead-dark">
                <th>NI</th>
                <th>Note Id</th>
                <th>Title</th>
                <th>Note</th>
                <th>Date</th>
                <th>Control</th>
            </thead>

            <tbody id="tbody1">

            </tbody>
        </table>
        <a class="btn btn-dark btn-block" href="AddNote.jsp">Add</a>

    </div>
    <!-- <button type="button" class="btn btn-info btn-block">Add</button> -->

    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Edit Notes</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
                </div>
                <div class="modal-body">
                    <label for="userId">Note ID</label><br>
                    <input type="text" name="userId" id="userId" disabled="disabled"><br>
                    <label for="Title">title</label><br>
                    <input type="text" name="firstName" id="title"><br>
                    <label for="lastName">Notes</label><br>
                    <textarea name="notes" id="notes" cols="50" rows="10"></textarea><br>
                    <!-- <input type="text" name="lastName" id="notes"><br> -->
                    <label for="age">Date</label><br>
                    <input type="date" name="age" id="date"><br>
                </div>
                <div class="modal-footer">
                    <button id="UpdModBtn" type="button" class="btn btn-success" onclick="UpdNote()">Update Notes</button>
                    <button id="removeBtn" type="button" class="btn btn-danger" onclick="DelNote()">Delete Notes</button>
                </div>
            </div>
        </div>
    </div>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js" integrity="sha512-NiWqa2rceHnN3Z5j6mSAvbwwg3tiwVNxiAQaaSMSXnRRDh5C2mk/+sKQRw8qjV1vN4nf8iK2a0b048PnHbyx+Q==" crossorigin="anonymous"></script>
    <script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-database.js"></script>
 
 
	<script src="seeNotes.js"></script>
    <script src="addnote.js"></script>

    <footer>
        <p>&copy; Made By Ridho & Luthfi</p>
        <p class="source">
            <a href="https://github.com/PiLin3/Notes_Reminder_Web_Application">Source Code</a
        >
      </p>
      <p>
        <a href="login.jsp">Log Out</a>
        </p>
    </footer>

</body>
</html>