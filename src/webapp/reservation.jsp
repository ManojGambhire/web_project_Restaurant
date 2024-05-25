<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width-device-width" ,initial-scale=1.0>
    <title>Royal Restaurant</title>

    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/reservation.css">
    <link href="https://fonts.googleapis.com/css2?family=Cedarville+Cursive&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="angular.min.js"></script>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
<div class="main">
    <div class="wrapper">
      <div class="header">
        <nav>
          <div class="logo a"><img src="photo/images-1.png" height="90px" width="200px" /></div>
          <ul>
            <li><a href="main-1.jsp">Home</a></li>
            <li><a href="About.jsp">About</a></li>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="book.jsp">Book Table</a></li>
            <li><a href="gallery.jsp">Gallery</a></li>
            <li><a href="contact1.jsp">Contact</a></li>
          </ul>
      </div>
      <div class="menu-photo">
        <h1><b><u>Make a Reservation</u></b></h1>
        <div class="menu-list">
          <div class="menu-list-1"><a href="ass2.html">Home&ensp;/ &ensp;</a></div>
          <div class="menu-list-2">reservation</div>
        </div>
      </div>
      <div class="menu-name">Book your table </div>
      <div class="menu-name" style="color: black;">RESERVATION</div>
      <div class="reservation">
        <div class="reservation-1"><img src="photo/drinks-image.jpg" height="800px" width="700px" /></div>
        <div class="reservation-2">
        <form action="ReservationTableR" method="post"  onsubmit="return validate()">
        
          <div class="reservation-2-1">
           
            <div class="reservation-2-1-1">
               <div> Table no:- <input type="text" name="no" placeholder="table number" id="table"  required=" "       class="name-1"></div>
             
              <div> Name:- <input type="text" name="name" placeholder="Enter name.." id="name"  required=" " class="name-1"/></div>
              <div> Phone:-<input type="text" name="phone" placeholder="phone" id="phone" class="name-1"    required=" " ></div>
            </div>
  
          <div class="reservation-2-1-2">
            <div> People:-<input type="text" name="people" placeholder="Person" id="people" class="name-1" required=" "></div>
            <div> Date:-<input type="date" name="date" placeholder="Date"  class="name-1" required=" "></div>
            <div> Time:-<input type="time" name="time" placeholder="Time" class="name-1" required=" "></div>
          </div>
          
          </div>
        
        <div class="reservation-2-2">
          Any Message:-
          <textarea class="textarea" name="message">
          </textarea>
          <button class="booknow"><input type="submit" value="Book Table" ></button>
          <button class="booknow"><a href="book.html">Back</a></button>

        </div>
        </form>
        </div>
        </div>
      

    <div class="contac">
      <div class="contac-1"><img src="photo/call-symbol-1.png" height="200px" width="200px" />
        <h2>call us</h2>
        <p>
          Restaurant:- <br>8766009254</p>
      </div>
      <div class="contac-1"><img src="photo/email-symbolpng.png" height="200px" width="200px" />
        <h2>Email</h2>
        <p>
          Get In Touch:- <br><a href="https://mail.google.com/mail/u/0/#inbox"
            target="_blank">manojgambhire71@gmail.com</a></p>
      </div>
      <div class="contac-1"><img src="photo/address-symbol.jpg" height="200px" width="200px" />
        <h2>Address</h2>
        <p>
          21 A High Street High<br> Wycombe HP11 2BE</p>
      </div>
    </div>


    <footer>
      <div class="footer" id="fsize">
        <div class="footerbox">
          <b>Quick link</b>
          <ul>
            <li><a href="main-1.jsp">Home</a></li>
            <li><a href="About.html">About</a></li>
            <li><a href="menu.html">Menu</a></li>
            <li><a href="book.html">Book Table</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="contact.jsp">Contact</a></li>
          </ul>

        </div>

        <div class="footerbox">
          <b>About</b>
          <p> &emsp;Royal Restaurant Mumbai which takes full advantage of the lands produce; Excellent
            seafood, fresh fruits, vegetables and fine meat. The food food in Kappad invariably rich and aromatic.
            Kerala known as “Spice Garden of India”.</p>
          <div class="media">
            <div class="m1"><a href="https://www.instagram.com" class="fa fa-instagram"
                style="padding-left: 20px; padding-top: 8px;"></a></div>
            <div class="m1"><a href="https://www.facebook.com" class="fa fa-facebook"
                style="padding-left: 20px; padding-top: 8px;"></a></div>
            <div class="m1"><a href="https://twitter.com" class="fa fa-twitter"
                style="padding-left: 20px; padding-top: 8px;"></a></div>
          </div>

        </div>
        <div class="footerbox">

          <b>Open Things:</b>
          <br>
          <br>
          <table border="1px solid white">
            <tr>
              <td>Day</td>
              <td>Time</td>
            </tr>
            <tr>
              <td>monday-Thursday</td>

              <td>12pm to 2pm<br>5pm to 10pm</td>
            </tr>
            <tr>
              <td>friday to saturday</td>
              <td>12pm to 2pm <br>5pm to 10.30pm</td>
            </tr>
            <tr>
              <td>Sunday</td>
              <td>closed</td>
            </tr>
          </table>
        </div>
        <div class="footerbox">
          <b>Find Us</b>
          <br><br>
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30014.05308771576!2d74.46357836264374!3d19.892495615174557!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdc44f157804117%3A0xc4f3b95c6deb52b4!2sKopargaon%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1696227607290!5m2!1sen!2sin"
            width="60%" height="200px" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>

      </div>
      <div style="background-color: black; width: 100%; height: 30px; text-align: center;">
        <h3 style="color: white; margin: 0px;">All Rights Reserved. Webdesign By MJ Gambhire</h3>
      </div>
    </footer>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script>
  	 var status = document.getElementById("status").value;
  	 if(status == "success")
  		 {
  		   swal("Congrats","Table has been booked","success");
  		 }
  	</script>
  	<script>
  	  function validate(){
  		       var table =document.getelementByid("table").value;
  		       alert(table);
  		       
  	  }
  	</script>
  	

   
    
</body>
</html>