
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

        //filling the table
        let userNo;
        // Get all data
        function selectAllData() {
            document.getElementById("tbody1").innerHTML = "";
            userNo = 0;
            firebase.database().ref('notes').once('value', (allRecords) => {
                allRecords.forEach(item => {
                    console.log(item.val());
                    const userId = item.val().userId_;
                    const title = item.val().title_;
                    const notes = item.val().notes_;
                    const date = item.val().date_;
                    console.log(date, 'date');
                    AddItemsToTable(userId, title, notes, date);
                });
            })
        }

        // new start
        var userList = [];
        // end start

        function AddItemsToTable(userId, title, notes, date) {
            const tbody = document.getElementById('tbody1');
            const trow = document.createElement('tr');
            const td1 = document.createElement('td');
            const td2 = document.createElement('td');
            const td3 = document.createElement('td');
            const td4 = document.createElement('td');
            const td5 = document.createElement('td');
            // new start
            userList.push([userId, title, notes, date]);
            // end start
            td1.innerHTML = ++userNo;
            td2.innerHTML = userId;
            td3.innerHTML = title;
            td4.innerHTML = notes;
            td5.innerHTML = date;
            trow.appendChild(td1);
            trow.appendChild(td2);
            trow.appendChild(td3);
            trow.appendChild(td4);
            trow.appendChild(td5);

            var ControlDiv = document.createElement("div");
            ControlDiv.innerHTML = '<button type="button" class="btn btn-success my-2 ml-2" data-toggle="modal" data-target="#exampleModalCenter" onclick = "FillTboxes(' + userNo + ')">Edit Note</button>'

            trow.appendChild(ControlDiv);
            tbody.appendChild(trow);


        }

        selectAllData();

        const userId = document.getElementById('userId');
        const title = document.getElementById('title');
        const notes = document.getElementById('notes');
        const date = document.getElementById('date');

        const BtnmodUpd = document.getElementById('UpdModBtn');
        const BtnmodDel = document.getElementById('DelModBtn');



        function FillTboxes(index) {
            if (index == null) {
                userId.value = "";
                title.value = "";
                notes.value = "";
                date.value = "";
                BtnmodUpd.style.display = 'none';
                BtnmodDel.style.display = 'inline-block';
            } else {
                --index;
                userId.value = userList[index][0];
                title.value = userList[index][1];
                notes.value = userList[index][2];
                date.value = userList[index][3];
                BtnmodUpd.style.display = 'inline-block';
                BtnmodDel.style.display = 'inline-block';
            }
        }

        function AddNote() {
            firebase.database().ref("notes/" + userId.value).set({
                    title_: title.value,
                    notes_: notes.value,
                    date_: date.value,
                },
                (error) => {
                    if (error) {
                        alert('Failed Add the Note');
                    } else {
                        alert('Add Note successfully');
                        selectAllData();
                        $("#exampleModalCenter").modal("hide");

                    }
                }
            )
        }

        function UpdNote() {
            firebase.database().ref("notes/" + userId.value).update({
                    userId_: userId.value,
                    title_: title.value,
                    notes_: notes.value,
                    date_: date.value,
                },
                (error) => {
                    if (error) {
                        alert('Failed Update the Note');
                    } else {
                        alert('Note update successfully');
                        selectAllData();
                        window.open("seeNotes.jsp", "_self")

                    }
                }
            )
        }

        function DelNote() {
            firebase.database().ref("notes/" + userId.value).remove().then(
                function() {
                    alert('Note Delete successfully');
                    selectAllData();
                    window.open("seeNotes.jsp", "_self")
                        //                    $("#exampleModalCenter").modal("hide");


                }
            )
        }