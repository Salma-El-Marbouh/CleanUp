<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html dir="ltr" lang="frensh">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta
      name="keywords"
      content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Matrix lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Matrix admin lite design, Matrix admin lite dashboard bootstrap 5 dashboard template"
    />
    <meta
      name="description"
      content="Matrix Admin Lite Free Version is powerful and clean admin dashboard template, inpired from Bootstrap Framework"
    />
    <meta name="robots" content="noindex,nofollow" />
    <title>Eboueurs > Ajout</title>
        <link
      rel="icon"
      type="images/png"
      sizes="16x16"
      href="../ressources/images/CU-02.png"
    />
    
    <!-- Custom CSS -->
    <link href="../ressources/libs/flot/css/float-chart.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../ressources/css/style.min.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
      <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
      </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div
      id="main-wrapper"
      data-layout="vertical"
      data-navbarbg="skin5"
      data-sidebartype="full"
      data-sidebar-position="absolute"
      data-header-position="absolute"
      data-boxed-layout="full"
    >
      <!-- ============================================================== -->
      <!-- Topbar header - style you can find in pages.scss -->
      <!-- ============================================================== -->
      <header class="topbar" data-navbarbg="skin5">
        <nav class="navbar top-navbar navbar-expand-md navbar-dark">
          <div class="navbar-header" data-logobg="skin5">
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <a class="navbar-brand" href="index.jsp">
              <!-- Logo icon -->
              <b class="logo-icon ps-2">
                <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                <!-- Dark Logo icon -->
                <img
                  src="../ressources/images/CU-02.png"
                  alt="homepage"
                  class="light-logo"
                  width="25"
                />
              </b>
              <!--End Logo icon -->
              <!-- Logo text -->
              <span class="logo-text ms-2">
                <!-- dark Logo text -->
                <img
                  src="../ressources/images/CleanUpW.png"
                  alt="homepage"
                  class="light-logo"
                />
              </span>
            </a>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Toggle which is visible on mobile only -->
            <!-- ============================================================== -->
            <a
              class="nav-toggler waves-effect waves-light d-block d-md-none"
              href="javascript:void(0)"
              ><i class="ti-menu ti-close"></i
            ></a>
          </div>
          <!-- ============================================================== -->
          <!-- End Logo -->
          <!-- ============================================================== -->
          <div
            class="navbar-collapse collapse"
            id="navbarSupportedContent"
            data-navbarbg="skin5"
          >
            <!-- ============================================================== -->
            <!-- toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav float-start me-auto">
              <li class="nav-item d-none d-lg-block">
                <a
                  class="nav-link sidebartoggler waves-effect waves-light"
                  href="javascript:void(0)"
                  data-sidebartype="mini-sidebar"
                  ><i class="mdi mdi-menu font-24"></i
                ></a>
              </li>
              <!-- ============================================================== -->
              <!-- Search -->
              <!-- ============================================================== -->
              <li class="nav-item search-box">
                <a
                  class="nav-link waves-effect waves-dark"
                  href="javascript:void(0)"
                  ><i class="mdi mdi-magnify fs-4"></i
                ></a>
                <form class="app-search position-absolute">
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Search &amp; enter"
                  />
                  <a class="srh-btn"><i class="mdi mdi-window-close"></i></a>
                </form>
              </li>
            </ul>
            <!-- ============================================================== -->
            <!-- Right side toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav float-end">
              <!-- ============================================================== -->
              <!-- User profile and search -->
              <!-- ============================================================== -->
              <li class="nav-item dropdown">
                <a
                  class="
                    nav-link
                    dropdown-toggle
                    text-muted
                    waves-effect waves-dark
                    pro-pic
                  "
                  href="#"
                  id="navbarDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  <img
                    src="../ressources/images/users/1.jpg"
                    alt="user"
                    class="rounded-circle"
                    width="31"
                  />
                </a>
                <ul
                  class="dropdown-menu dropdown-menu-end user-dd animated"
                  aria-labelledby="navbarDropdown"
                >
                  <a class="dropdown-item" href="../profil.jsp">
                  <i class="mdi mdi-account me-1 ms-1"></i> Profil</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="../home.jsp"
                    ><i class="fa fa-power-off me-1 ms-1"></i> Deconnexion</a
                  >
                  <div class="dropdown-divider"></div>
                  <div class="ps-4 p-10">
                    <a
                      href="../home.jsp"
                      class="btn btn-sm btn-success btn-rounded text-white"
                      >Accueil</a
                    >
                  </div>
                </ul>
              </li>
              <!-- ============================================================== -->
              <!-- User profile and search -->
              <!-- ============================================================== -->
            </ul>
          </div>
        </nav>
      </header>
      <!-- ============================================================== -->
      <!-- End Topbar header -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Left Sidebar - style you can find in sidebar.scss  -->
      <!-- ============================================================== -->
      <aside class="left-sidebar" data-sidebarbg="skin5">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
          <!-- Sidebar navigation-->
          <nav class="sidebar-nav">
            <ul id="sidebarnav" class="pt-4">
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="../index.jsp"
                  aria-expanded="false"
                  ><i class="mdi mdi-view-dashboard"></i
                  ><span class="hide-menu">Table de bord</span></a
                >
              </li>
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-map"></i
                  ><span class="hide-menu">Points de reliefs </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
   
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-account"></i
                  ><span class="hide-menu">Eboueurs </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="cleaner/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="cleaner/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
              
<!-- debut dechets -->              
              
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-delete-empty"></i
                  ><span class="hide-menu">Dechets </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item ">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-file"></i
                  ><span class="hide-menu">Papier </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="trash/paper/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="trash/paper/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
                <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-silverware-spoon"></i
                  ><span class="hide-menu">Metal</span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="fotrash/metal/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="trash/metal/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-keg"></i
                  ><span class="hide-menu">Plastique </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="trash/plastic/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="trash/plastic/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
               
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-cup"></i
                  ><span class="hide-menu">Verre </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="trash/glass/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="trash/glass/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
              
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-food-apple"></i
                  ><span class="hide-menu">Organique </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="trash/organic/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="trash/organic/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>              
                
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-mouse-variant"></i
                  ><span class="hide-menu">Electronique </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="trash/e-waste/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="trash/e-waste/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
              
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-delete"></i
                  ><span class="hide-menu">Mixte </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="trash/mixed/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="trash/mixed/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li> 
                
                </ul>
              </li>
<!-- fin dechets -->  

<!-- debut dons -->

              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-heart-box"></i
                  ><span class="hide-menu">Dons </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item ">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-tshirt-crew"></i
                  ><span class="hide-menu">Vetements </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="form-basic.html" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="form-wizard.html" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
                <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-walk"></i
                  ><span class="hide-menu">Chaussures</span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="form-basic.html" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="form-wizard.html" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-hotel"></i
                  ><span class="hide-menu">Couvertures </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="form-basic.html" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="form-wizard.html" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
               
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-package-variant"></i
                  ><span class="hide-menu">Autre </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="form-basic.html" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="form-wizard.html" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>
                </ul>
              </li>
                
                </ul>
              </li>

<!-- fin dons --> 


              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="pages-buttons.html"
                  aria-expanded="false"
                  ><i class="mdi mdi-email"></i
                  ><span class="hide-menu">Messages</span></a
                >
              </li>
              
              
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="pages-buttons.html"
                  aria-expanded="false"
                  ><i class="mdi mdi-emoticon"></i
                  ><span class="hide-menu">Retroaction</span></a
                >
              </li>
              
              
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="pages-buttons.html"
                  aria-expanded="false"
                  ><i class="mdi mdi-face"></i
                  ><span class="hide-menu">Profil</span></a
                >
              </li>
              
            </ul>
          </nav>
          <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
      </aside>
      <!-- ============================================================== -->
      <!-- End Left Sidebar - style you can find in sidebar.scss  -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Page wrapper  -->
      <!-- ============================================================== -->
      <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb">
          <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
              <h4 class="page-title">Ajout d'un �boueur </h4>

            </div>
          </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
        
         <div class="row">
            <div class="col-12">
            
              <div class="card">
           
                <form class="form-horizontal" method="post" action="../java/Ajouter.java">
                  <div class="card-body">
                    <h4 class="card-title">Informations de l'�boueur </h4>
                    <br>
                    <br>
                    <div class="form-group row">
                      <label class="col-md-3 mt-3">Nom </label>
                      <div class="col-sm-9">
                        <input
                          type="text"
                          class="form-control"
                          id="fname"
                          placeholder="Ins�rer le nom ici" name="nom"
                        />
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-md-3 mt-3">Pr�nom</label>
                      <div class="col-sm-9">
                        <input
                          type="text"
                          class="form-control"
                          id="lname"
                          placeholder="Ins�rer le pr�nom ici "name="prenom"
                        />
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-md-3 mt-3" >Date de naissance</label>
                      <div class="col-sm-9">
                        <input
                          type="Date"
                          class="form-control"
                          id="lname" name="dateN"
                         
                          />
                      </div>
                    </div> 
                         
                    
                    <div class="form-group row">
                    <label class="col-md-3 mt-3">Sexe</label>
                    <div class="col-md-9">
                      <div>
                      <input type="radio" id="femme" value="femme" name="sexe" checked />
                      <label for="femme">femme</label>
                      </div>
                      
                      <div>                      
                      <input type="radio" id="homme" value="homme" name="sexe" />
                      <label for="homme">homme</label>
                      </div>
                      
                    </div>
                  </div>
                  
                  <div class="form-group row">
                      <label class="col-md-3 mt-3" >T�l�phone</label>
                      <div class="col-sm-9">
                        <input
                          type="tel"
                          class="form-control"
                          id="lname"
                          placeholder="exemple: 0600000000 "name="telephone"
                          />
                      </div>
                    </div>
                    
                  
                    
                    <div class="form-group row">
                      <label class="col-md-3 mt-3" >Email</label>
                      <div class="col-sm-9">
                        <input
                          type="email"
                          class="form-control"
                          id="lname"
                          placeholder="exemple: xyz@gmail.com "name="email"
                          />
                      </div>
                    </div>
                    
                    <div class="form-group row">
                      <label class="col-md-3 mt-3" >Mot de passe</label>
                      <div class="col-sm-9">
                        <input
                          type="password"
                          class="form-control"
                          id="lname"
                          placeholder="Ins�rer le mot de passe ici "name="mdp"
                          />
                      </div>
                    </div>
                    
                    <div class="form-group row">
                      <label class="col-md-3 mt-3" >Date d'emploi</label>
                      <div class="col-sm-9">
                        <input
                          type="date"
                          class="form-control"
                          id="lname" name="dateE"
                         
                          />
                      </div>
                    </div>
                    
                    <div class="form-group row">
                      <label class="col-md-3 mt-3" >Adresses de ramassage</label>
                      <div class="col-sm-9">
                      <select
                        class="select2 form-select shadow-none"name="adresse"
                        style="width: 100%; height: 36px"
                      >
                      <option>Selectionner </option>
                      <option >Anassi</option>
                      <option>lmansour</option>

                      </select>
                    
                      </div>
                    </div>
                                     
                  <div class="border-top">
                    <div class="card-body">
                      <button type="submit" name="submit" class="btn btn-primary">
                        Enregistrer
                      </button>
                    </div>
                  </div>
                  </div>
                </form>
              </div>
         </div>
         
         
         
            
         
         
      </div>
    </div>
        
      </div>
      <!-- ============================================================== -->
      <!-- End Page wrapper  -->
      <!-- ============================================================== -->

    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="../ressources/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../ressources/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../ressources/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../ressources/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="../ressources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../ressources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../ressources/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!-- <script src="../dist/js/pages/dashboards/dashboard1.js"></script> -->
    <!-- Charts js Files -->
    <script src="../ressources/libs/flot/excanvas.js"></script>
    <script src="../ressources/libs/flot/jquery.flot.js"></script>
    <script src="../ressources/libs/flot/jquery.flot.pie.js"></script>
    <script src="../ressources/libs/flot/jquery.flot.time.js"></script>
    <script src="../ressources/libs/flot/jquery.flot.stack.js"></script>
    <script src="../ressources/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="../ressources/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="../ressources/js/pages/chart/chart-page-init.js"></script>
  </body>
</html>