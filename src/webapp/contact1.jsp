<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<mete charset="utf-8">
    <meta name="viewport" content="width-device-width" ,initial-scale=1.0>
    <title>foodfactory</title>

    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/contact.css">
    <link href="https://fonts.googleapis.com/css2?family=Cedarville+Cursive&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet">
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
            <li><a href="contact.jsp">Contact</a></li>
          </ul>
      </div>
      <div class="contact-photo">
        <h1><b><u>Contact</u></b></h1>
        <div class="contact-list">
          <div class="contact-list-1"><a href="main-1.jsp">Home&ensp;/ &ensp;</a></div>
          <div class="contact-list-2">Contact Us</div>
        </div>
      </div>
      <br>
      <div class="contact-text">
        <diV class="contact-text-1">
          <h1 style="padding-left: 30px; text-decoration: underline;">Contact Us</h1>
          <form action="contact" method="post">
          <div>
            <input type="text" name="name" placeholder="name" />
            <input type="email" name="email" placeholder="email" />
          </div>
          <br>
          <div>
            <input type="text" name="phone" placeholder="phone" />
            <input type="text" name="subject" placeholder="subject" />
          </div>
          <br>
          <div>
            <h3>Enter your message:</h3>
            <textarea placeholder="Enter your message Here" name="msg">

         </textarea>
           <input type="submit" value="submit" >
          </div>
          </form>

        </diV>
        <div class="contact-text-2">
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3756.3857086297717!2d72.76498921215533!3d19.69619621840811!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be71d7607011a5d%3A0x2d267ea05a791e87!2sThe%20Royal%20Restaurant!5e0!3m2!1sen!2sin!4v1698484466225!5m2!1sen!2sin"
            width="700" height="780" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
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



      <div class="footer" id="fsize">
        <div class="footerbox">
          <b>Quick link</b>
          <ul>
            <li><a href="main-1.jsp">Home</a></li>
            <li><a href="About.html">About</a></li>
            <li><a href="menu.html">Menu</a></li>
            <li><a href="book.html">Book Table</a></li>
            <li><a href="Gallery.html">Gallery</a></li>
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
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script>
  	 var status = document.getElementById("status").value;
  	 if(status == "success")
  		 {
  		   swal("Congrats","Information has been save","success");
  		 }
  	</script>

</body>
</html>