<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Page d'accueil </title>
<link rel="stylesheet" href="ressources/css/bootstrap.min.css">
<link rel="stylesheet" href="ressources/css/flexslider.css">
<link rel="stylesheet" href="ressources/css/jquery.fancybox.css">
<link rel="stylesheet" href="ressources/css/main.css">
<link rel="stylesheet" href="ressources/css/responsive.css">
<link rel="stylesheet" href="ressources/css/font-icon.css">
<link rel="stylesheet" href="ressources/css/animate.min.css"> 
<link rel="stylesheet" href="ressources/css/home.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script> 
</head>

<body>
<!-- header section -->
<section class="banner" role="banner">
  <header id="header">
    <div class="header-content clearfix"> 
    <img class="logo" src="ressources/images/CleanUpW.png"/>
      <nav class="navigation" role="navigation">
        <ul class="primary-nav">
		 <li><a href="#banner">Accueil</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#gallery">Stock</a></li>
          <li><a href="#teams">Rétroaction</a></li>
          <li><a href="#testimonials">Témoignages</a></li>
          <li><a href="#contact">Contact</a></li>
          <li><a href="login.jsp">Connexion</a></li>
        </ul>
      </nav>
      <a href="#" class="nav-toggle">Menu<span></span></a> </div>
  </header>
  <!-- banner text --> 
    <div class="banner" id="banner"> 
	<div class="slider-banner">

            <div data-lazy-background="ressources/images/slides/2.jpg" > 
                <h3 data-pos="['68%', '-40%', '15%', '12%']" data-duration="700" data-effect="move">
                    QUI SOMMES NOUS ? 
                </h3> 
                <p data-pos="['75%', '110%', '35%', '20%']" data-duration="700" data-effect="move">
                    <br>Une agence de ramassage des déchets et des objets utilisés. 
                    <br> Notre secteur de travail actuel est le quartier Agdal Rabat.
                    <br> Nos employés passent chaque jour par les points de ramassage pour collecter les déchets catégorisés. 
                    <br> Nous faisons aussi le tri de tout ce qui est récupéré et nous présentons les résultat aux agences <br> et associations pour une bonne récupération.  
                </p>
               
            </div>
             
        </div>
      <!-- banner text --> 
    </div> 
</section>
<!-- header section --> 

<!-- services section -->
<section id="services" class="services service-section">
  <div class="container">
  <div class="section-header">
                <h2 class="wow fadeInDown animated">Nos Services</h2>
                <p class="wow fadeInDown animated">Clean Up est la meilleur agence pour protéger l'environement et aider les gens. <br> le recyclage sera une procédure normale et tout le monde donnera périodiquement des dons en nature aux gens en besoin.</p>
            </div>
    <div class="row">
      <div class="col-md-4 col-sm-6 services text-center"> <span class="icon fa fa-truck"></span> 
        <div class="services-content">
          <h5>Ramassage</h5>
          <p>Les habitants du secteur de notre travail déposent les déchets et les dons catégorisés nous nous chargeons du ramassage.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services text-center"> <span class="icon icon-linegraph"></span>
        <div class="services-content">
          <h5>Annalyse du stock</h5>
          <p>Nous faisons le calcul de chaque composants dans notre stock et nous vous représentons les résultats dans des graphes actualisés .<br>  </p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services text-center"> <span class="icon icon-trophy"></span>
        <div class="services-content">
          <h5>Qualité</h5>
          <p>Nos services sont de haute qualité, et nous offrons la possibilité aux bénéficiers de laisser leurs impressions dans notre pages.<br>  </p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- services section --> 
 

<!-- stock section -->
<section id="gallery" class="gallery section">
  <div class="container">
    <div class="section-header">
                <h2 class="wow fadeInDown animated">Stock</h2>
                <p class="wow fadeInDown animated">Vous pouvez suivre la variation de notre stock à tout moment dans cette section.</p>
            </div>
    
    <div class="row">
    <section id="content-3-10" class="content-block data-section nopad content-3-9">
	<div class="container-fluid">
		<div class="row">
		    
			<div class="col-md-6">
			<div class="card">
			<div class="card-body">
			<h5 class="text-center ">Stock des déchets :</h5>
			</div>     
			<div class="card-body">
			    <canvas id="myChart"></canvas>
			</div>
			</div>
			<div>
			<script>
                  const ctx = document.getElementById('myChart').getContext('2d');
                  const myChart = new Chart(ctx, {
                  type: 'bar',
                  data: {
                  labels: ['Papier', 'Metal', 'Plastique', 'Verre', 'Organique', 'Electronique', 'Mixte'],
                  datasets: [{
                  label: 'quantité existante en kg',
                  data: [12, 19, 3, 5, 2, 3,50],
                  backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(0, 0, 0, 0.2)'                
                 ],
                  borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(0, 0, 0, 1)'                
                  ],
                  borderWidth: 1
                 }]
                },
                options: {
                  scales: {
                     y: {
                         beginAtZero: true
                   }
                }
                }
                });
            </script>
			</div>
			</div>
			
			<div class="col-md-6 ">
			<div class="card">
			<div class="card-body">
			<h5 class="text-center ">Stock des dons :</h5>
			</div>     
			<div class="card-body">
			    <canvas id="myChart1"></canvas>
			</div>
			</div>
			<div>
			<script>
                  const ctx1 = document.getElementById('myChart1').getContext('2d');
                  const myChart1 = new Chart(ctx1, {
                  type: 'bar',
                  data: {
                  labels: ['Couverture', 'Vêtements', 'Chaussures', 'Autre'],
                  datasets: [{
                  label: 'quantité existante en sacs',
                  data: [12, 19, 3, 5, 2, 3,50],
                  backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
               
                 ],
                  borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
               
                  ],
                  borderWidth: 1
                 }]
                },
                options: {
                  scales: {
                     y: {
                         beginAtZero: true
                   }
                }
                }
                });
            </script>
			</div>
			</div>
		    </div>
		    </div>
		    
		 </section>   
		    
		  </div><!-- /.row-->
		  
		    		  
	</div><!-- /.container -->	
</section>
<!-- stock section --> 
<!-- feedback section -->
<section id="teams" class="section teams">
  <div class="container">
      <div class="section-header">
                <h2 class="wow fadeInDown animated">Rétroaction</h2>
                <p class="wow fadeInDown animated">Aidez-nous à mieux vous servir en nous faisant part de votre expérience . <br> Nous apprécions votre opinion et voulons nous assurer que nous répondons à vos attentes.</p>
            </div>
    <div class="row">
    <section id="content-3-10" class="content-block data-section nopad content-3-10">
	<div class="image-container col-sm-6 col-xs-12 pull-left">
		<div class="background-image-holder">

		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-6 col-xs-12 content">
				<div class="editContent">
					<h4 class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">Appréciez-vous nos services?</h4>
				</div>
				      <div class="col-md-8 col-md-offset-2 conForm">       
        <div id="message"></div>
       
        <form  action="/CleanUp/addFeedback" method="post" name="cform" id="cform">
          <input name="nom" id="nom" type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Votre nom ..." >
          <input name="email" id="email" type="email" class=" col-xs-12 col-sm-12 col-md-12 col-lg-12 noMarr" placeholder="Adresse email..." >
          <input name="note" id="note" type="hidden" >
          <ul id="stars" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <li class="star" id="star1"><i class="fa fa-star"></i><i class="fa fa-star-o"></i></li>
          <li class="star" id="star2"><i class="fa fa-star"></i><i class="fa fa-star-o"></i></li>
          <li class="star" id="star3"><i class="fa fa-star" ></i><i class="fa fa-star-o"></i></li>
          <li class="star" id="star4"><i class="fa fa-star" ></i><i class="fa fa-star-o"></i></li>
          <li class="star" id="star5"><i class="fa fa-star"></i><i class="fa fa-star-o"></i></li>
          </ul>
          <input type="submit" id="submit" name="send" class="btn btn-outline btn-outline outline-dark" value="Envoyer">
          <div id="simple-msg"></div>
          </form>
      </div>
      			</div>
		</div><!-- /.row-->
	</div><!-- /.container -->
</section>
      
    </div>
  </div>
</section>
<!-- feedback section --> 
<!-- Testimonials section -->
<section id="testimonials" class="section testimonials no-padding">
  <div class="container-fluid">
    <div class="row no-gutter">
      <div class="flexslider">
        <ul class="slides">
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>"J'espère que les services de Clean Up seront généralisés partout au Maroc.." </h1>
                <p>Yassir DOUSLIMI</p>
              </blockquote>
            </div>
          </li>
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>"Je trouve l'idée de collecter les habits et les chaussures utilisés très intéressante . C'est un pas en avant vers un Maroc solidaire .." </h1>
                <p>Salma EL MARBOUH</p>
              </blockquote>
            </div>
          </li>
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>"J'habite à Agdal , Cette agence a vraiment fait la différence .." </h1>
                <p>Aladin CHERKAOUI</p>
              </blockquote>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- Testimonials section --> 

<!-- contact section -->
<section id="contact" class="section">
  <div class="container">
      <div class="section-header">
                <h2 class="wow fadeInDown animated">Contactez nous </h2>
                <p class="wow fadeInDown animated">Pour la récupération du stock ou pour une intérogation à propos de nos services,<br> vous pouvez nous laissez un message dans cette section ou nous contacter par email ou par téléphone.</p>
            </div>
    <div class="row">
      <div class="col-md-8 col-md-offset-2 conForm">       
        <div id="message"></div>
        <form method="post" action="/CleanUp/addMessage" name="cform" id="cform">
          <input  id="name" type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" name="nom" placeholder="Votre nom ..." >
          <input  id="email" type="email" class=" col-xs-12 col-sm-12 col-md-12 col-lg-12 noMarr" name="email" placeholder="Adresse email..." >
          <textarea  id="comments" cols="" rows="" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" name="message" placeholder="Message..."></textarea>
          <select
                        class="col-xs-12 col-sm-12 col-md-12 col-lg-12"
                        style="width: 100%; height: 36px"
                        name="categorie"
                      >
                      <option>Votre message concerne? </option>
                      <option >déchets</option>
                      <option>dons</option>

                      </select>
          <input type="submit" id="submit" name="send" class="submitBnt" value="Envoyer">
          <div id="simple-msg"></div>
        </form>
      </div>
    </div>
  </div>
</section>
<!-- contact section --> 
<!-- Footer section -->
<footer class="footer">
<div class="container-fluid">
<div id="map-row" class="row">
    <div class="col-sm-8">    
    	<iframe width="100%" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3308.320065137473!2d-6.869790584937196!3d33.984311780624395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda76ce7f9462dd1%3A0x2e9c39cfa1d9e8d7!2s%C3%89cole%20Nationale%20Sup%C3%A9rieure%20d&#39;Informatique%20et%20d&#39;Analyse%20des%20Syst%C3%A8mes!5e0!3m2!1sfr!2sma!4v1643165486805!5m2!1sfr!2sma"></iframe> 
       
    </div>
	 <div class="col-sm-4">
			<h2>Contactez-nous </h2>
    		<address>
    			<strong>Clean Up</strong><br>
    			Al Irfane.<br>
    			Rabat, MOROCCO<br>
    			
    			<abbr title="Phone">Téléphone:</abbr> 0640864066
    			<br>
    			<abbr title="Email">Email:</abbr> Clean-up@gmail.com
    			<br>
    			<br>
    			<br>
    			<br>
    		</address>
			  © 2022 Clean Up
	 </div>
	 </div>
</div>
</footer>
<!-- Footer section --> 
<!-- JS FILES --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src="ressources/js/bootstrap.min.js"></script> 
<script src="ressources/js/jquery.flexslider-min.js"></script> 
<script src="ressources/js/jquery.fancybox.pack.js"></script>  
<script src="ressources/js/modernizr.js"></script> 
<script src="ressources/js/main.js"></script>
<script src="ressources/js/home.js"></script>  
<script type="text/javascript" src="ressources/js/jquery.contact.js"></script> 
<script type="text/javascript" src="ressources/js/jquery.devrama.slider.min-0.9.4.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			$('.slider-banner').DrSlider({
				'transition': 'fade',
				showNavigation: false,
				progressColor: "#8bc34a"
			});
		});
	</script> 
</body>
</html>