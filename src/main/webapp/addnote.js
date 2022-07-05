const userId = document.getElementById('userId');
const title = document.getElementById('title');
const notes = document.getElementById('notes');
const date = document.getElementById('date');
const addBtn = document.getElementById('addBtn');
const updateBtn = document.getElementById('updateBtn');
const removeBtn = document.getElementById('removeBtn');
const showBtn = document.getElementById('showBtn');


// instance database
const database = firebase.database();
// reference
const usersRef = database.ref('/notes');


// save the data or add data
addBtn.addEventListener('click', e => {
    e.preventDefault();
    usersRef.child(userId.value).set({
        userId_: userId.value,
        title_: title.value,
        notes_: notes.value,
        date_: date.value
    });
    alert("New Data has been creat")
    window.open("seeNotes.jsp", "_self")
});