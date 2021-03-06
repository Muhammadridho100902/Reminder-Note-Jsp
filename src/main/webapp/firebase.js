const firebaseConfig = {
    apiKey: "AIzaSyAOcK1u54GLvglXFYjwTQRBtFDttG94mZk",
    authDomain: "note-reminders.firebaseapp.com",
    databaseURL: "https://note-reminders-default-rtdb.asia-southeast1.firebasedatabase.app",
    projectId: "note-reminders",
    storageBucket: "note-reminders.appspot.com",
    messagingSenderId: "101049006012",
    appId: "1:101049006012:web:0452a99fb2766a918a9db9"
};

firebase.initializeApp(firebaseConfig);

const auth = firebase.auth()
const database = firebase.database()

const userId = document.getElementById('userId');
const title = document.getElementById('title');
const notes = document.getElementById('notes');
const date = document.getElementById('date');
const addBtn = document.getElementById('addBtn');
const updateBtn = document.getElementById('updateBtn');
const removeBtn = document.getElementById('removeBtn');
const showBtn = document.getElementById('showBtn');

const usersRef = database.ref('/notes');

addBtn.addEventListener('click', e => {
    e.preventDefault();
    usersRef.child(userId.value).set({
        title_: title.value,
        notes_: notes.value,
        date_: date.value
    });
});

updateBtn.addEventListener('click', e => {
    e.preventDefault();
    const newData = {
        first_name: firstName.value,
        last_name: lastName.value,
        age: age.value
    };
    usersRef.child(userId.value).update(newData);
});

removeBtn.addEventListener('click', e => {
    e.preventDefault();
    usersRef.child(userId.value).remove()
        .then(() => {
            console.log('User Deleted !');
        })
        .catch(error => {
            console.log(error);
        });
});

function register() {

    email = document.getElementById('email').value
    password = document.getElementById('password').value
    full_name = document.getElementById('full_name').value

    if (validate_email(email) == false || validate_password(password) == false) {
        alert('Email or Password is Outta Line!!')
        return
    }
    if (validate_field(full_name) == false) {
        alert('One or More Extra Fields is Outta Line!!')
        return
    }

    auth.createUserWithEmailAndPassword(email, password)
        .then(function() {
            // Declare user variable
            var user = auth.currentUser

            // Add this user to Firebase Database
            var database_ref = database.ref()

            // Create User data
            var user_data = {
                email: email,
                full_name: full_name,
                last_login: Date.now()
            }

            // Push to Firebase Database
            database_ref.child('users/' + user.uid).set(user_data)

            // DOne
//            alert('User Created!!')
            window.open("login.jsp", "_self")
                // window.location.href = "login.jsp"
        })
        .catch(function(error) {
            // Firebase will use this to alert of its errors
            var error_code = error.code
            var error_message = error.message

            alert(error_message)
        })
}

// Set up our login function
function login() {
    // Get all our input fields
    email = document.getElementById('email').value
    password = document.getElementById('password').value

    // Validate input fields
    if (validate_email(email) == false || validate_password(password) == false) {
//        alert('Email or Password is Outta Line!!')
        return
        // Don't continue running the code
    }

    auth.signInWithEmailAndPassword(email, password)
        .then(function() {
            // Declare user variable
            var user = auth.currentUser

            // Add this user to Firebase Database
            var database_ref = database.ref()

            // Create User data
            var user_data = {
                last_login: Date.now()
            }

            // Push to Firebase Database
            database_ref.child('users/' + user.uid).update(user_data)

            // DOne
//            alert('User Logged In!!')
            window.open("seeNotes.jsp", "_self")


        })
        .catch(function(error) {
            // Firebase will use this to alert of its errors
            var error_code = error.code
            var error_message = error.message

            alert(error_message)
        })
}




// Validate Functions
function validate_email(email) {
    expression = /^[^@]+@\w+(\.\w+)+\w$/
    if (expression.test(email) == true) {
        // Email is good
        return true
    } else {
        // Email is not good
        return false
    }
}

function validate_password(password) {
    // Firebase only accepts lengths greater than 6
    if (password < 6) {
        return false
    } else {
        return true
    }
}

function validate_field(field) {
    if (field == null) {
        return false
    }

    if (field.length <= 0) {
        return false
    } else {
        return true
    }
}