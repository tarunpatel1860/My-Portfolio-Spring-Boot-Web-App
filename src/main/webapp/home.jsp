<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tarun Patel Portfolio</title>
<style>
body{margin:0;}

.container img{position:relative;width:100%; height:760px}

#lead-content {position:absolute;z-index:10;left:50%;top:50%;transform:translate(-50%, -50%);text-align:center}
#links a{text-decoration: none; padding: 14px 25px; text-align: center; display:inline-block;font-size:20px;color:#a0cfee}
#lead-content h1{color:#a0cfee;font-weight:900;font-size:5em;text-transform:uppercase;letter-spacing:0.05em;line-height:2%}
#lead-content h2{color:#a0cfee;font-weight:500;font-size:3em;margin-bottom:0px}
#lead-content h3{color:#a0cfee;font-weight:300;font-size:2.5em;margin-top:0px;margin-bottom:0px}
.btn-rounded {background-color: #a0cfee;border: none; color: white; padding: 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; border-radius: 12px;}
.btn-rounded:hover{color:#808080;background:#fff;text-decoration:none}




#education {padding:75px 15px;border-bottom:1px solid #dcd9d9;background-color: #ffff;text-align:center}
#education h2{color:#374054;text-align:center}
#img1 {position: absolute; width:10%;height:20%;left:20%;}
#img2 {position: absolute; width:10%;height:20%;left:65%;}
#education h3{color:#374054;}
#education h4{color:#74808a}



#experience {padding:30px 10px;border-bottom:1px solid #dcd9d9;background-color: #f1f2f3}
#experience h2{color:#374054;text-align:center}
#experience h3{color:#374054;}
#experience h4{color:#74808a}
#experience ul{ color:#74808a;margin:0;font-weight: 400}


#skills {padding:30px 10px;border-bottom:1px solid #dcd9d9;text-align:center;background-color: #fff}
#skills h2{color:#374054;margin-bottom:50px}
#skills ul{display:block;margin:0 auto;padding:0;max-width:800px}
#skills li{display:inline-block;margin:7px;padding:5px 10px;color:#374054;background:#f1f2f3;list-style:none;cursor:default;font-size:1.2em}

#courses {padding:30px 10px;border-bottom:1px solid #dcd9d9;text-align:center;background-color: #f1f2f3}
#courses h2{color:#374054;margin-bottom:50px}
#courses ul{display:block;margin:0 auto;padding:0;max-width:800px}
#courses li{display:inline-block;margin:7px;padding:5px 10px;color:#374054;background:#fff;list-style:none;cursor:default;font-size:1.2em}

#contact {padding:30px 10px;border-bottom:1px solid #dcd9d9;text-align:center;background-color: #fff}
#contact h2{color:#374054;margin-bottom:50px}
#contact a{text-decoration: none; padding: 14px 25px; text-align: center; display:inline-block;font-size:20px;color:#a0cfee}

#demo {padding:30px;text-align:jutify;position:fixed;top:10%;left:3%;background-color: #ffffff;border: 1px solid black;opacity: 0.6;border-radius: 50px 20px}
#demo h2{color: #1E90FF;text-align:center}
#btn {tex-align:center;background-color: #a0cfee;border: none; color: white; padding: 14px 45px; text-decoration: none; margin: 1px 1px; border-radius:50px 20px;}
#city {text-align:center}

</style>
</head>
<body>

<div class="container">
<img alt="Loading..." src="back3.png">
</div>

    
<div id="lead-content">
<div id="links">
<a href="#education">Education</a>
<a href="#experience">Experience</a>
<a href="#skills">Skills</a>
<a href="#courses">Courses</a>
<a href="#contact">Contact</a>
</div>
<h1>Tarun Patel</h1>
<h2>Senior Software Engineer @ VISA</h2>
<h3> Ex - Amazon, Nurture.farm </h3>
<a href="resume.pdf" class="btn-rounded">Download My Resume here :)</a>
</div>

<script>
function loadDoc() {
  var city=document.getElementById("city").value;
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      var object= JSON.parse(this.responseText);
      document.getElementById("demo").innerHTML =
      "Temprature: "+ object.main.temp+" �C<br>"+ 
      "Humidity: "+object.main.humidity+" %<br>" +
      "Max Temprature: "+object.main.temp_max+" �C<br>" +
      "Min Temprature: "+object.main.temp_min+" �C<br>" +
      "Condition: "+object.weather[0].description;
      
    }
    
  };
  xhttp.open("GET", "https://api.openweathermap.org/data/2.5/weather?q="+ city +"&appid=3e6184d3b5a7e11052c1124d03ce6236&units=metric", true);
  xhttp.send();
}
</script>
 
<div id="education">
<h2 class="heading">Education</h2>
<div id="img2"><a href="https://aitr.ac.in/"><img alt="Loading..." src="acro.jpeg" style="width:180px;height:150px;display:inline-block"></a></div>
<h3>Acropolis Institute of Technology & Research, indore</h3>
<span class="education-date">July, 2016 - May, 2020</span>
<h4>Bachelor of Engineering in Computer Science </h4>
</div>

<div id="experience" class="background-alt">
<h2 class="heading">Experience</h2>
<div>
<h2>Amazon</h2>
<%--
<center>
<div id="img2">
  <a href="https://www.amazon.com"><img src="amazon_logo.png" alt="Amazon Logo"></a>
</div>
</center>
--%>
<span class="job-date">Sep, 2021 - Jan, 2023</span>
<h4>Software Development Engineer</h4>
<ul>
<li> Built Regional In-stock Manager(RIM) system for 2 Million Sellers on Amazon
<li> Designed, built & launched Restock Recommendation system for 293 Million
merchant full-filled offers on Amazon.in, which is 90 % of all offers on Amazon.in,
with opportunity to save INR 54 Million
<li> Designed, built & launched RIM for Inter-Cross Dock for 2 Million Sellers, which
implements hub and spoke distribution paradigm, this covers 25 % of all inbounds
on Amazon.in
<li> Setup automated systems for processing large data from scratch.
<li> Handled critical tickets during on-calls, contributed in removing tech debts,
upgrading Operational Excellence (OE), and code reviews
<li> Tech Stack : Java, Junit, AWS, GraphQL, DyanmoDB, Scala, Hadoop,
ElasticSearch, Git, etc.</ul>
</div>


<div id="skills">
<h2 class="heading">Skills</h2>
<ul>
<li>Java</li>
<li>Python</li>
<li>C++</li>
<li>JavaScript</li>
<li>HTML5</li>
<li>CSS3</li>
<li>React</li>
<li>XML</li>
<li>jQuery</li>
<li>AJAX</li>
<li>Bootstrap</li>
<li>PHP</li>
<li>C</li>
<li>MySQL</li>
<li>Software Development Life Cycle</li>
<li>Amazon Web Services </li>
<li>Business Required Documentation</li>
</ul>
</div>
</body>


<div id="courses">
<h2 class="heading">Courses</h2>
<ul>
<li>Web Programming</li>
<li>Software Engineering</li>
<li>Cloud Computing</li>
<li>Mobile Application Programming</li>
<li>Database System</li>
<li>Data Structure</li>
<li>Analysis of Algorithms</li>
<li>Operating System</li>
 </ul>
</div>


<div id="contact">
<h2>Get in Touch</h2>
<a href="https://www.linkedin.com/in/tarunpatel1860/" target="_blank">LinkedIn</a>
</div>

</html>