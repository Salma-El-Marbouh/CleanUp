<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.util.*,java.sql.*,services.PositionService,models.Cleaner,models.Position,services.CleanerService"%>
<!DOCTYPE html>
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
    <title>Eboueurs > Liste </title>
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
                  <a class="dropdown-item" href="profil.jsp">
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
                    <a href="../position/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="../position/create.jsp" class="sidebar-link"
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
                 <li class="sidebar-item">
                    <a href="../trash/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="../trash/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>  
                  <li class="sidebar-item">
                    <a href="../trash/update.jsp" class="sidebar-link"
                      ><i class="mdi mdi-tooltip-edit"></i
                      ><span class="hide-menu"> Modification </span></a
                    >
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
                <li class="sidebar-item">
                    <a href="../donation/read.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Liste </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="../donation/create.jsp" class="sidebar-link"
                      ><i class="mdi mdi-note-plus"></i
                      ><span class="hide-menu"> Ajout </span></a
                    >
                  </li>  
                  <li class="sidebar-item">
                    <a href="../donation/update.jsp" class="sidebar-link"
                      ><i class="mdi mdi-tooltip-edit"></i
                      ><span class="hide-menu"> Modification </span></a
                    >
                  </li> 
                
                </ul> 
              </li>

<!-- fin dons --> 


              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="../messages.jsp"
                  aria-expanded="false"
                  ><i class="mdi mdi-email"></i
                  ><span class="hide-menu">Messages</span></a
                >
              </li>
              
              
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="../feedback.jsp"
                  aria-expanded="false"
                  ><i class="mdi mdi-emoticon"></i
                  ><span class="hide-menu">Retroaction</span></a
                >
              </li>
              
              
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="../profil.jsp"
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


      <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb">
          <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
              <h4 class="page-title">Liste des éboueurs</h4>
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
          <!-- ============================================================== -->
          <!-- Start Page Content -->
          <!-- ============================================================== -->
          <div class="row">
            <div class="col-md-12">
              <div class="card card-body printableArea">
                <h3><b>Eboueurs existant </b> </h3>
                <hr />
                <div class="row">

                  <div class="col-md-12">
                    <div class="table-responsive mt-5" style="clear: both">
                     <script type="text/javascript">
                              function update_cleaner(Id, Nom, Prenom, DateNaissance, Sexe,Telephone, Email, MotDePasse, DateEmploi, Ramassage){
                              	sessionStorage.setItem("cleaner_id", Id)
                              	sessionStorage.setItem("nom", Nom)
                              	sessionStorage.setItem("prenom", Prenom)
                              	sessionStorage.setItem("date_de_naissance", DateNaissance)
                              	sessionStorage.setItem("sexe", Sexe)
                              	sessionStorage.setItem("telephone", Telephone)
                              	sessionStorage.setItem("email", Email)
                              	sessionStorage.setItem("mot_de_passe", MotDePasse)
                              	sessionStorage.setItem("date_emploi", DateEmploi)
                              	sessionStorage.setItem("adresses_de_ramassage", Ramassage)
                              	console.log(Id, Nom,Prenom,DateNaissance,Sexe,Telephone, Email,MotDePasse,DateEmploi,Ramassage)
                              	
                              	location.href="/CleanUp/admin/cleaner/update.jsp"
                              }
                              
                              function delete_cleaner(cleaner_id){
                              	fetch("/CleanUp/deletePosition?position_id="+cleaner_id
                              			,{
                              	method:'POST'
                              	})
                                  .then(()=>{
                                  	location.reload()
                                  	})
                                  }
                          </script>
                      <table class="table table-hover">
                        <thead>
                          <tr>
                            <th class="text-center">Numéro</th>
                            <th class="text-center">Nom </th>
                            <th class="text-center">Sexe et date de naissance </th>
                            <th class="text-center">Téléphone</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Mot de passe </th>
                            <th class="text-center">Adresses de ramassage</th>
                            <th class="text-center">Options</th>
                          </tr>
                        </thead>
                        <tbody>
                        <% CleanerService cleanerService = new CleanerService();
                           PositionService positionService = new PositionService();
                            List<Cleaner> listCleaners = cleanerService.readAllCleaners(); %>
                            <%int i=1; %>
                            <%for(Cleaner cleaner:listCleaners){ %>
                            <%Position _position = positionService.readPosition(cleaner.getAdressesDeRamassage());
                            String position = _position.getVille()+","+_position.getQuartier()+","+_position.getLocalisation();
                            %>
                          <tr>
                            <td class="text-center"><%=i %></td>
                            <td> <%=cleaner.getNom()%> <%=cleaner.getPrenom()%></td>
                            <td class="text-center"> <%=cleaner.getDateDeNaissance() %>/<%=cleaner.getSexe() %></td>
                            <td class="text-center"><%=cleaner.getTelephone() %></td>
                            <td class="text-center"><%=cleaner.getEmail() %></td>
                            <td class="text-center"><%=cleaner.getMotDePasse() %></td>
                            <td ><%=position %></td>
                            <td class="text-center">
                            <button onclick="delete_cleaner('<%=cleaner.getCleanerId()%>')"  type="button" class=" badge bg-danger " >
                            <i class="fas fa-trash-alt"></i> 
                            </button>
                            <button onclick="update_cleaner('<%=cleaner.getCleanerId() %>','<%=cleaner.getNom()%>','<%=cleaner.getPrenom() %>','<%=cleaner.getDateDeNaissance()%>',,'<%=cleaner.getSexe() %>','<%=cleaner.getTelephone() %>','<%=cleaner.getEmail() %>','<%=cleaner.getMotDePasse() %>','<%=cleaner.getDateEmploi()%>','<%=cleaner.getAdressesDeRamassage()%>')"type="button" class=" badge bg-info " > 
                            <i class="far fa-edit"></i>
                            </button>
                            
                            </td>
                          </tr>
                          <%i++;%>
                          <%}%>
                          
                        </tbody>
                      </table>
                    </div>
                <button class=" col-md-1 btn btn-lg btn-outline-success float-right"> Ajout</button>

                  </div>

                </div>
              </div>
            </div>
          </div>

          <!-- ============================================================== -->
          <!-- End PAge Content -->
          <!-- ============================================================== -->
          <!-- ============================================================== -->
          <!-- Right sidebar -->
          <!-- ============================================================== -->
          <!-- .right-sidebar -->
          <!-- ============================================================== -->
          <!-- End Right sidebar -->
          <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
      </div>



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