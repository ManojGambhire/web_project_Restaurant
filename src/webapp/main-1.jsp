<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    if(session.getAttribute("username")==null)
    {
    	response.sendRedirect("main.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
    <meta name="viewport" content="width-device-width" ,initial-scale=1.0>
    <title>Royal Restaurant</title>
    <link rel="stylesheet" href="css/all-home.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cedarville+Cursive&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
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
            <li><a href="logout">logout</a></li>
            <li><a href="logout"><%= session.getAttribute("username") %></a></li>
          </ul>

      </div>
      </nav>
      <div class="content">
        <h1>WELCOME TO ROYAL RESTAURANT</h1>
        
      </div>
      <br>
      <div class="about">
        <div class="main-1">
        <br>
        <br>
          <p class="main-1-1">Welcome to Royal Restaurant<br>
            (The Best Restaurant In Mumbai)
          </p>

          &emsp;At Royal Restaurant, we're not just a restaurant; we're an embodiment of culinary excellence and a
          testament
          to the art of gastronomy. Nestled in the heart of Mumbai, our journey began in 2005 , and
          since then, we've been committed to redefining the dining experience.

          Our passion for food is what drives us each day. We painstakingly curate a menu that showcases the finest
          ingredients, locally sourced whenever possible. Our dishes are an homage to the world's cuisines, with a
          modern twist that makes each bite a sensory adventure.

          We believe that the ambiance of a restaurant is as crucial as the food it serves. Step into our establishment,
          and you'll find yourself in an atmosphere that's both elegant and inviting. From the warm lighting to the
          carefully chosen decor, we've designed a space where you can feel at home while savoring exquisite dishes.

          The heart and soul of Royal Restaurant lie in our kitchen, where our talented chefs pour their creativity and
          expertise into every dish. We believe in constant innovation, and our menu is a testament to our commitment to
          pushing the boundaries of flavor. Our culinary creations are an exquisite blend of tradition and innovation,
          taking you on a journey through taste.<br>
          <br>

          <button onclick="about.html" style="background-color: blue; font-family: 'Courier';"><a href="About.html">read
            more..</a></button>
        </div>
        <div class="main-2">
          <img src="photo/royal-r.jpg" height="500px" width="100%" />
        </div>
      </div>
      <br>
      <br>
      <p class="photo"> <u>Photo/Gallery</u></p>
      <div class="gallery">
        <div class="g1"><img src="photo/g-1.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-2.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-3.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-4.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-5.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-6.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-7.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-8.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-9.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-10.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-11.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/g-12.jpg" height="300px" width="290px" /></div>
      </div>
      <div class="table">
        <h1>Book Your Table</h1>
        <h2><u>Make A Reservation</u></h2>
        <form action="reservationtable" method="post" >
        <div class="table-1">
          <div class="table-1-1">
         
            <div class="table-1-1-1"> Table No:- <input type="text" name="no" placeholder="Enter Table NO .."   id="name-1" />
            </div>
            <div class="table-1-1-1"> Name:- <input type="text" name="name" placeholder="Name"   id="name-1"></div>
            <div class="table-1-1-1"> Phone:-<input type="text" name="phone" placeholder="phone"   id="name-1"></div>
          </div>
          <div class="table-1-2">
            <div class="table-1-1-1"> People:-<input type="text" name="people" placeholder="Person" id="name-1"></div>
            <div class="table-1-1-1"> Date:-<input type="date" name="date" placeholder="Date"  id="name-1"></div>
            <div class="table-1-1-1"> Time:-<input type="time" name="time" placeholder="Time"  id="name-1"></div>
          </div>
        </div>
         <input type="submit" value="Book Table" class="get">
        </form>


      </div>
      <p class="photo"> <u>Our Special Item</u></p>
      <div class="gallery-1">
        <div class="g1"><img src="photo/T-1.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/T-2.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/T-3.jpg" height="300px" width="290px" /></div>
        <div class="g1"><img src="photo/T-4.jpg" height="300px" width="290px" /></div>
      </div>
      <div class="last">
        <h1>Our Customer Says</h1>
        <h2><u>TESTIMONIALS</u></h2>
        <br>
        <br>
        <br>
        <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. <br>Mirum est notare
          quam
          littera gothica, quam nunc putamus parum claram.</p>
        <hr>
        <p>Enjoyed a good the experience, staff were friendly, food was tasty (and vegan)</p>
      </div>
      <div class="footer" id="fsize">
        <div class="footerbox">
          <b>Quick link</b>
          <ul>
            <li><a href="main-1.jsp">Home</a></li>
            <li><a href="About.jsp">About</a></li>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="book.jsp">Book Table</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="contact.jsp">Contact</a></li>
          </ul>

        </div>

        <div class="footerbox">
          <b>About</b>
          <p> &emsp;Royal Restaurant Mumbai which takes full advantage of the lands produce; Excellent
            seafood, fresh fruits, vegetables and fine meat. The food food in Kappad invariably rich and aromatic.
            Kerala known as âSpice Garden of Indiaâ.</p>
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

          <b>Open Timing:</b>
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
    
</body>
</html>