<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<head>
<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/profile.css" rel="stylesheet">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://bootswatch.com/cosmo/bootstrap.min.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/w3.css">
</head>
<body>
<div class="mainbody container-fluid">
    <div class="row">
        <div class="navbar-wrapper">
            <div class="container-fluid">
                <div class="navbar navbar-custom navbar-static-top" role="navigation">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                                    class="icon-bar"></span><span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="${contextPath}/index">Company Name Here</a>
                            <i class="brand_network"><small><small>Brand Name Here</small></small></i>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="#">Technologies</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#contact">Contact</a></li>>
                                <li><a href="#">Blog</a></li>
                            </ul>
                            <div class="navbar-collapse navbar-right collapse">
	                            <ul class="nav navbar-nav">
	                        	 <li><a href="${contextPath}/login">Login</a></li>
	                        	 <li><a href="${contextPath}/registration">Sign Up</a></li>
	                       	 	</ul>
                            </div>
                            
                         </div>
                         
                    </div>
                </div>
            </div>
 		</div>
	</div>
</div>
<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  <img style='opacity:.8' class="w3-image" src="${contextPath}/resources/Images/header.jpg" alt="Architecture" width="1500" height="800">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>DevOps Test</b></h1>
  </div>
</header>
<div>
<blockquote><p>
     <h2 align="center" style="font-family: Verdana,sans-serif;color:#1C3B47;">Lorem ipsum</h2>
     <h3 align="center" style="font-family: Verdana,sans-serif;color:#1C3B47;">Ea eius quisquam ut accusantium voluptas et sequi corrupti eum.</h3> 
</blockquote>
<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

  <!-- Project Section -->
  <div class="container w3-padding-32" id="technologies">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16" align="center">Technologies</h3>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <img src="${contextPath}/resources/Images/technologies/Ansible_logo.png" alt="DevOps" style="width:150px;height:150px">      
      </div>      
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
         <img src="${contextPath}/resources/Images/technologies/aws.png" alt="DevOps" style="width:200px;height:150px">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <img src="${contextPath}/resources/Images/technologies/git.jpg" alt="DevOps" style="width:150px;height:150px">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <img src="${contextPath}/resources/Images/technologies/jenkins.png" alt="DevOps" style="width:200px;height:150px">
      </div>
    </div>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <img src="${contextPath}/resources/Images/technologies/docker.png" alt="DevOps" style="width:150px;height:150px">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <img src="${contextPath}/resources/Images/technologies/puppet.jpg" alt="DevOps" style="width:150px;height:150px">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <img src="${contextPath}/resources/Images/technologies/Vagrant.png" alt="DevOps" style="width:150px;height:150px">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <img src="${contextPath}/resources/Images/technologies/python-logo.png" alt="DevOps" style="width:200px;height:150px">
      </div>
    </div>
  </div>

  <!-- About Section -->
  <div class="container w3-padding-32" id="about">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16" align="center">About</h3>
    <div class="w3-content" style="max-width:700px">
	    <p style="text-align:justify;">Ad quas vero qui corrupti provident ut nesciunt repellat rem earum animi in facilis itaque. Qui pariatur distinctio et impedit dolor ut fugit voluptatibus est voluptatem velit eos nihil inventore eum minus nobis et autem vero. Est labore illum et impedit natus quo nesciunt aperiam ut omnis praesentium.</p>
	    <p><strong>Address:</strong>  Est facere earum qui similique nesciunt aut Quis adipisci.</p> 
	    <p><strong>Phone Number: </strong>  +91 1234567890</p>
		<p><strong>E-Mail ID :</strong>  samplemail@company.com</p>
  	</div>
   </div>
  
  <!-- Contact Section -->
  <div class="container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16" align="center">Contact</h3>
    <p>Et labore fugiat ex voluptas nostrum qui consequuntur libero.</p>
    <form action="/action_page.php" target="_blank">
      <input class="w3-input" type="text" placeholder="Name" required name="Name">
      <input class="w3-input w3-section" type="text" placeholder="Email" required name="Email">
      <input class="w3-input w3-section" type="text" placeholder="Subject" required name="Subject">
      <input class="w3-input w3-section" type="text" placeholder="Comment" required name="Comment">
      <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> Send Message
      </button>
    </form>
  </div>
   
<!-- End page content -->
</div>


<!-- Footer -->
<footer class="w3-center  w3-padding-16" style="background-color:#1C3B47 ">
  <p style="color:#FFFFFF ">Copyright @2002 <a href="#"  target="_blank" class="w3-hover-text-green"> thatsmydob.com</a></p>
</footer>



</body>
</html>

</body>