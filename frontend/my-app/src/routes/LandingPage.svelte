<script>
    import Carousel from './Carousel.svelte'
  </script>
  <body>
  
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center">
      <div class="container d-flex align-items-center">
        <img src="http://webcoban.vn/image/flower.gif" style="width: 5rem; height: auto; margin-left: -57px; margin-right: 19px;" alt="logo">
        <h1 class="logo me-auto"><a href="index.html">Ademy<span>.</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>-->
  
        <nav id="navbar" class="navbar order-last order-lg-0">
          <ul>
            <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
            <li><a class="nav-link scrollto" href="#about">About</a></li>
            <li><a class="nav-link scrollto" href="#services">Services</a></li>
            <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
            <li><a class="nav-link scrollto" href="#team">Team</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
              <ul>
                <li><a href="#">Drop Down 1</a></li>
                <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                  <ul>
                    <li><a href="#">Deep Drop Down 1</a></li>
                    <li><a href="#">Deep Drop Down 2</a></li>
                    <li><a href="#">Deep Drop Down 3</a></li>
                    <li><a href="#">Deep Drop Down 4</a></li>
                    <li><a href="#">Deep Drop Down 5</a></li>
                  </ul>
                </li>
                <li><a href="#">Drop Down 2</a></li>
                <li><a href="#">Drop Down 3</a></li>
                <li><a href="#">Drop Down 4</a></li>
              </ul>
            </li>
            <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
  
        <a href="#about" class="get-started-btn scrollto">Get Started</a>
      </div>
    </header><!-- End Header -->
  
    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">
  
      <div class="container">
        <div class="row">
          <div class="col-xl-6" style=" z-index:1;">
            <h1>Bettter digital experience with Presento</h1>
            <h2>We are team of talented designers making websites with Bootstrap</h2>
            <a href="#about" class="btn-get-started scrollto">Get Started</a>
          </div>
        </div>
      </div>
  
    </section><!-- End Hero -->
  <br/>
  <br/>
    <!-- carousel-->
    <center style="background-size: cover;">
      <Carousel />
    </center>
    
    <!-- carousel end-->
  
    <main id="main">
  
      
  
      <!-- ======= About Section ======= -->
      <section id="about" class="about section-bg">
        <div class="container" data-aos="fade-up">
  
          <div class="row no-gutters">
            <div class="content col-xl-5 d-flex align-items-stretch">
              <div class="content">
                <h3>Voluptatem dignissimos provident quasi</h3>
                <p>
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit
                </p>
                <a href="#" class="about-btn"><span>About us</span> <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
            <div class="col-xl-7 d-flex align-items-stretch">
              <div class="icon-boxes d-flex flex-column justify-content-center">
                <div class="row">
                  <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                    <i class="bx bx-receipt"></i>
                    <h4>Corporis voluptates sit</h4>
                    <p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip</p>
                  </div>
                  <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                    <i class="bx bx-cube-alt"></i>
                    <h4>Ullamco laboris nisi</h4>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>
                  </div>
                  <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                    <i class="bx bx-images"></i>
                    <h4>Labore consequatur</h4>
                    <p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis facere</p>
                  </div>
                  <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="400">
                    <i class="bx bx-shield"></i>
                    <h4>Beatae veritatis</h4>
                    <p>Expedita veritatis consequuntur nihil tempore laudantium vitae denat pacta</p>
                  </div>
                </div>
              </div><!-- End .content-->
            </div>
          </div>
  
        </div>
      </section><!-- End About Section -->
  
      <!-- ======= Counts Section ======= -->
      <section id="counts" class="counts">
        <div class="container" data-aos="fade-up">
  
          <div class="row">
  
            <div class="col-lg-3 col-md-6">
              <div class="count-box">
                <i class="bi bi-emoji-smile"></i>
                <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
                <p>Happy Clients</p>
              </div>
            </div>
  
            <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
              <div class="count-box">
                <i class="bi bi-journal-richtext"></i>
                <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
                <p>Projects</p>
              </div>
            </div>
  
            <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
              <div class="count-box">
                <i class="bi bi-headset"></i>
                <span data-purecounter-start="0" data-purecounter-end="1463" data-purecounter-duration="1" class="purecounter"></span>
                <p>Hours Of Support</p>
              </div>
            </div>
  
            <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
              <div class="count-box">
                <i class="bi bi-people"></i>
                <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1" class="purecounter"></span>
                <p>Hard Workers</p>
              </div>
            </div>
  
          </div>
  
        </div>
      </section><!-- End Counts Section -->
  
     
  
      <!-- ======= Services Section ======= -->
      <section id="services" class="services section-bg ">
        <div class="container" data-aos="fade-up">
  
          <div class="section-title">
            <h2>Services</h2>
            <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.</p>
          </div>
  
          <div class="row">
            <div class="col-md-6">
              <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                <i class="bi bi-briefcase"></i>
                <h4><a href="#">Lorem Ipsum</a></h4>
                <p>Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
              </div>
            </div>
            <div class="col-md-6 mt-4 mt-md-0">
              <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                <i class="bi bi-card-checklist"></i>
                <h4><a href="#">Dolor Sitema</a></h4>
                <p>Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
              </div>
            </div>
            <div class="col-md-6 mt-4 mt-md-0">
              <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
                <i class="bi bi-bar-chart"></i>
                <h4><a href="#">Sed ut perspiciatis</a></h4>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
              </div>
            </div>
            <div class="col-md-6 mt-4 mt-md-0">
              <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
                <i class="bi bi-binoculars"></i>
                <h4><a href="#">Nemo Enim</a></h4>
                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
              </div>
            </div>
            <div class="col-md-6 mt-4 mt-md-0">
              <div class="icon-box" data-aos="fade-up" data-aos-delay="500">
                <i class="bi bi-brightness-high"></i>
                <h4><a href="#">Magni Dolore</a></h4>
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
              </div>
            </div>
            <div class="col-md-6 mt-4 mt-md-0">
              <div class="icon-box" data-aos="fade-up" data-aos-delay="600">
                <i class="bi bi-calendar4-week"></i>
                <h4><a href="#">Eiusmod Tempor</a></h4>
                <p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
              </div>
            </div>
          </div>
  
        </div>
      </section><!-- End Services Section -->
  
     
  
     
  
  
      
  
      <!-- ======= Contact Section ======= -->
      <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">
  
          <div class="section-title">
            <h2>Contact</h2>
            <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.</p>
          </div>
  
          <div class="row" data-aos="fade-up" data-aos-delay="100">
  
            <div class="col-lg-6">
  
              <div class="row">
                <div class="col-md-12">
                  <div class="info-box">
                    <i class="bx bx-map"></i>
                    <h3>Our Address</h3>
                    <p>A108 Adam Street, New York, NY 535022</p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="info-box mt-4">
                    <i class="bx bx-envelope"></i>
                    <h3>Email Us</h3>
                    <p>info@example.com<br>contact@example.com</p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="info-box mt-4">
                    <i class="bx bx-phone-call"></i>
                    <h3>Call Us</h3>
                    <p>+1 5589 55488 55<br>+1 6678 254445 41</p>
                  </div>
                </div>
              </div>
  
            </div>
  
            <div class="col-lg-6">
              <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                <div class="row">
                  <div class="col form-group">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                  </div>
                  <div class="col form-group">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                </div>
                <div class="my-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>
                </div>
                <div class="text-center"><button type="submit">Send Message</button></div>
              </form>
            </div>
  
          </div>
  
        </div>
      </section><!-- End Contact Section -->
  
    </main><!-- End #main -->
  
    <!-- ======= Footer ======= -->
    <footer id="footer">
  
      <div class="footer-top">
        <div class="container">
          <div class="row">
  
            <div class="col-lg-3 col-md-6 footer-contact">
              <h3>Presento<span>.</span></h3>
              <p>
                A108 Adam Street <br>
                New York, NY 535022<br>
                United States <br><br>
                <strong>Phone:</strong> +1 5589 55488 55<br>
                <strong>Email:</strong> info@example.com<br>
              </p>
            </div>
  
            <div class="col-lg-2 col-md-6 footer-links">
              <h4>Useful Links</h4>
              <ul>
                <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
              </ul>
            </div>
  
            <div class="col-lg-3 col-md-6 footer-links">
              <h4>Our Services</h4>
              <ul>
                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
              </ul>
            </div>
  
            <div class="col-lg-4 col-md-6 footer-newsletter">
              <h4>Join Our Newsletter</h4>
              <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
              <form action="" method="post">
                <input type="email" name="email"><input type="submit" value="Subscribe">
              </form>
            </div>
  
          </div>
        </div>
      </div>
  
      <div class="container d-md-flex py-4">
  
        <div class="me-md-auto text-center text-md-start">
          <div class="copyright">
            &copy; Copyright <strong><span>Presento</span></strong>. All Rights Reserved
          </div>
          <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/presento-bootstrap-corporate-template/ -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          </div>
        </div>
        <div class="social-links text-center text-md-end pt-3 pt-md-0">
          <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>
      </div>
    </footer><!-- End Footer -->
  
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  
    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
  
    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  
  </body>
  
  <style>
    /**
  * Template Name: Presento
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/presento-bootstrap-corporate-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  */
  
  /*--------------------------------------------------------------
  # General
  --------------------------------------------------------------*/
  body {
    font-family: "Open Sans", sans-serif;
    color: #444444;
  }
  
  a {
    color: #e03a3c;
    text-decoration: none;
  }
  
  a:hover {
    color: #e76668;
    text-decoration: none;
  }
  
  h1,
  h2,
  h3,
  h4,
  h5,
  h6 {
    font-family: "Raleway", sans-serif;
  }
  
  /*--------------------------------------------------------------
  # Back to top button
  --------------------------------------------------------------*/
  .back-to-top {
    position: fixed;
    visibility: hidden;
    opacity: 0;
    right: 15px;
    bottom: 15px;
    z-index: 996;
    background: #e03a3c;
    width: 40px;
    height: 40px;
    border-radius: 4px;
    transition: all 0.4s;
  }
  
  .back-to-top i {
    font-size: 28px;
    color: #fff;
    line-height: 0;
  }
  
  .back-to-top:hover {
    background: #e65d5f;
    color: #fff;
  }
  
  .back-to-top.active {
    visibility: visible;
    opacity: 1;
  }
  
  /*--------------------------------------------------------------
  # Disable aos animation delay on mobile devices
  --------------------------------------------------------------*/
  @media screen and (max-width: 768px) {
    [data-aos-delay] {
      transition-delay: 0 !important;
    }
  }
  
  /*--------------------------------------------------------------
  # Header
  --------------------------------------------------------------*/
  #header {
    background: #fff;
    transition: all 0.5s;
    z-index: 997;
    padding: 20px 0;
  }
  
  #header.header-scrolled {
    padding: 12px 0;
    box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
  }
  
  #header .logo {
    font-size: 30px;
    margin: 0;
    padding: 0;
    font-weight: 600;
    font-family: "Poppins", sans-serif;
  }
  
  #header .logo a {
    color: #111111;
  }
  
  #header .logo a span {
    color: #e03a3c;
  }
  
  #header .logo img {
    max-height: 40px;
  }
  
  /*--------------------------------------------------------------
  # Get Startet Button
  --------------------------------------------------------------*/
  .get-started-btn {
    margin-left: 30px;
    background: #e03a3c;
    color: #fff;
    border-radius: 4px;
    padding: 8px 25px;
    white-space: nowrap;
    transition: 0.3s;
    font-size: 14px;
    font-weight: 600;
    display: inline-block;
  }
  
  .get-started-btn:hover {
    background: #111111;
    color: #fff;
  }
  
  @media (max-width: 992px) {
    .get-started-btn {
      margin: 0 15px 0 0;
      padding: 6px 18px;
    }
  }
  
  /*--------------------------------------------------------------
  # Navigation Menu
  --------------------------------------------------------------*/
  /**
  * Desktop Navigation 
  */
  .navbar {
    padding: 0;
  }
  
  .navbar ul {
    margin: 0;
    padding: 0;
    display: flex;
    list-style: none;
    align-items: center;
  }
  
  .navbar li {
    position: relative;
  }
  
  .navbar a,
  .navbar a:focus {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px 0 10px 30px;
    font-family: "Raleway", sans-serif;
    font-size: 15px;
    font-weight: 600;
    color: #111111;
    white-space: nowrap;
    transition: 0.3s;
  }
  
  .navbar a i,
  .navbar a:focus i {
    font-size: 12px;
    line-height: 0;
    margin-left: 5px;
  }
  
  .navbar a:hover,
  .navbar .active,
  .navbar .active:focus,
  .navbar li:hover>a {
    color: #e03a3c;
  }
  
  .navbar .dropdown ul {
    display: block;
    position: absolute;
    left: 30px;
    top: calc(100% + 30px);
    margin: 0;
    padding: 10px 0;
    z-index: 99;
    opacity: 0;
    visibility: hidden;
    background: #fff;
    box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
    transition: 0.3s;
  }
  
  .navbar .dropdown ul li {
    min-width: 200px;
  }
  
  .navbar .dropdown ul a {
    padding: 10px 20px;
    font-size: 14px;
  }
  
  .navbar .dropdown ul a i {
    font-size: 12px;
  }
  
  .navbar .dropdown ul a:hover,
  .navbar .dropdown ul .active:hover,
  .navbar .dropdown ul li:hover>a {
    color: #e03a3c;
  }
  
  .navbar .dropdown:hover>ul {
    opacity: 1;
    top: 100%;
    visibility: visible;
  }
  
  .navbar .dropdown .dropdown ul {
    top: 0;
    left: calc(100% - 30px);
    visibility: hidden;
  }
  
  .navbar .dropdown .dropdown:hover>ul {
    opacity: 1;
    top: 0;
    left: 100%;
    visibility: visible;
  }
  
  @media (max-width: 1366px) {
    .navbar .dropdown .dropdown ul {
      left: -90%;
    }
  
    .navbar .dropdown .dropdown:hover>ul {
      left: -100%;
    }
  }
  
  /**
  * Mobile Navigation 
  */
  .mobile-nav-toggle {
    color: #111111;
    font-size: 28px;
    cursor: pointer;
    display: none;
    line-height: 0;
    transition: 0.5s;
  }
  
  .mobile-nav-toggle.bi-x {
    color: #fff;
  }
  
  @media (max-width: 991px) {
    .mobile-nav-toggle {
      display: block;
    }
  
    .navbar ul {
      display: none;
    }
  }
  
  .navbar-mobile {
    position: fixed;
    overflow: hidden;
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.9);
    transition: 0.3s;
    z-index: 999;
  }
  
  .navbar-mobile .mobile-nav-toggle {
    position: absolute;
    top: 15px;
    right: 15px;
  }
  
  .navbar-mobile ul {
    display: block;
    position: absolute;
    top: 55px;
    right: 15px;
    bottom: 15px;
    left: 15px;
    padding: 10px 0;
    background-color: #fff;
    overflow-y: auto;
    transition: 0.3s;
  }
  
  .navbar-mobile a,
  .navbar-mobile a:focus {
    padding: 10px 20px;
    font-size: 15px;
    color: #111111;
  }
  
  .navbar-mobile a:hover,
  .navbar-mobile .active,
  .navbar-mobile li:hover>a {
    color: #e03a3c;
  }
  
  .navbar-mobile .getstarted,
  .navbar-mobile .getstarted:focus {
    margin: 15px;
  }
  
  .navbar-mobile .dropdown ul {
    position: static;
    display: none;
    margin: 10px 20px;
    padding: 10px 0;
    z-index: 99;
    opacity: 1;
    visibility: visible;
    background: #fff;
    box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
  }
  
  .navbar-mobile .dropdown ul li {
    min-width: 200px;
  }
  
  .navbar-mobile .dropdown ul a {
    padding: 10px 20px;
  }
  
  .navbar-mobile .dropdown ul a i {
    font-size: 12px;
  }
  
  .navbar-mobile .dropdown ul a:hover,
  .navbar-mobile .dropdown ul .active:hover,
  .navbar-mobile .dropdown ul li:hover>a {
    color: #e03a3c;
  }
  
  .navbar-mobile .dropdown>.dropdown-active {
    display: block;
  }
  
  /*--------------------------------------------------------------
  # Hero Section
  --------------------------------------------------------------*/
  #hero {
    width: 100%;
    height: 100vh;
    background-image: url("https://opt.net.au/wp-content/uploads/HOW-DRAWING-CAN-HELP-CHILDREN-EXPRESS-FEELINGS-EMOTIONS.png");
    background-size: cover;
   
    padding-top: 82px;
    
  }
  
  #hero:before {
    content: "";
    background: rgba(0, 0, 0, 0.6);
    position: absolute;
    bottom: 0;
    top: 0;
    left: 0;
    right: 0;
  }
  
  #hero h1 {
    margin: 0;
    font-size: 48px;
    font-weight: 700;
    color: #fff;
  }
  
  #hero h2 {
    color: #fff;
    margin: 10px 0 0 0;
    font-size: 24px;
  }
  
  #hero .btn-get-started {
    font-family: "Raleway", sans-serif;
    font-weight: 500;
    font-size: 16px;
    letter-spacing: 1px;
    display: inline-block;
    padding: 10px 30px;
    border-radius: 4px;
    transition: 0.5s;
    margin-top: 30px;
    color: #fff;
    background: #e03a3c;
    border: 2px solid #e03a3c;
  }
  
  #hero .btn-get-started:hover {
    background: transparent;
    border-color: #fff;
  }
  
  @media (max-width: 768px) {
    #hero {
      text-align: center;
      padding-top: 58px;
    }
  
    #hero h1 {
      font-size: 28px;
    }
  
    #hero h2 {
      font-size: 18px;
      line-height: 24px;
    }
  }
  
  @media (max-height: 500px) {
    #hero {
      height: 120vh;
    }
  }
  
  /*--------------------------------------------------------------
  # Sections General
  --------------------------------------------------------------*/
  section {
    padding: 60px 0;
    overflow: hidden;
    position: relative;
  }
  
  .section-title {
    text-align: center;
    padding-bottom: 30px;
    position: relative;
  }
  
  .section-title h2 {
    font-size: 32px;
    font-weight: bold;
    text-transform: uppercase;
    margin-bottom: 20px;
    padding-bottom: 20px;
    position: relative;
  }
  
  .section-title h2::after {
    content: "";
    position: absolute;
    display: block;
    width: 50px;
    height: 3px;
    background: #e03a3c;
    bottom: 0;
    left: calc(50% - 25px);
  }
  
  .section-title p {
    margin-bottom: 0;
  }
  
  .section-bg {
    padding: 120px 0;
    color: #fff;
  }
  
  .section-bg:before {
    content: "";
    background: #1b1b1b;
    position: absolute;
    bottom: 60px;
    top: 60px;
    left: 0;
    right: 0;
    transform: skewY(-3deg);
  }
  
  /*--------------------------------------------------------------
  # Breadcrumbs
  --------------------------------------------------------------*/
  .breadcrumbs {
    padding: 15px 0;
    background: #2b2b2b;
    min-height: 40px;
    margin-top: 82px;
    color: #fff;
  }
  
  .breadcrumbs h2 {
    font-size: 28px;
    font-weight: 500;
  }
  
  .breadcrumbs ol {
    display: flex;
    flex-wrap: wrap;
    list-style: none;
    padding: 0 0 10px 0;
    margin: 0;
    font-size: 14px;
  }
  
  .breadcrumbs ol a {
    color: #aaaaaa;
  }
  
  .breadcrumbs ol a:hover {
    color: #fff;
    transition: 0.3s;
  }
  
  .breadcrumbs ol li+li {
    padding-left: 10px;
  }
  
  .breadcrumbs ol li+li::before {
    display: inline-block;
    padding-right: 10px;
    color: #e03a3c;
    content: "/";
  }
  
  /*--------------------------------------------------------------
  # Clients
  --------------------------------------------------------------*/
  .clients .swiper-pagination {
    margin-top: 20px;
    position: relative;
  }
  
  .clients .swiper-pagination .swiper-pagination-bullet {
    width: 12px;
    height: 12px;
    background-color: #fff;
    opacity: 1;
    border: 1px solid #e03a3c;
  }
  
  .clients .swiper-pagination .swiper-pagination-bullet-active {
    background-color: #e03a3c;
  }
  
  .clients .swiper-slide img {
    opacity: 0.5;
    transition: 0.3s;
    filter: grayscale(100);
  }
  
  .clients .swiper-slide img:hover {
    opacity: 1;
    filter: none;
  }
  
  /*--------------------------------------------------------------
  # About
  --------------------------------------------------------------*/
  .about .container {
    position: relative;
    z-index: 10;
  }
  
  .about .content {
    padding: 30px 30px 30px 0;
  }
  
  .about .content h3 {
    font-weight: 700;
    font-size: 34px;
    margin-bottom: 30px;
  }
  
  .about .content p {
    margin-bottom: 30px;
  }
  
  .about .content .about-btn {
    padding: 8px 30px 9px 30px;
    color: #fff;
    border-radius: 50px;
    transition: 0.3s;
    text-transform: uppercase;
    font-weight: 600;
    font-size: 13px;
    display: inline-flex;
    align-items: center;
    border: 2px solid #e03a3c;
  }
  
  .about .content .about-btn i {
    font-size: 16px;
    padding-left: 5px;
  }
  
  .about .content .about-btn:hover {
    background: #e35052;
    background: #e03a3c;
  }
  
  .about .icon-boxes .icon-box {
    margin-top: 30px;
  }
  
  .about .icon-boxes .icon-box i {
    font-size: 40px;
    color: #e03a3c;
    margin-bottom: 10px;
  }
  
  .about .icon-boxes .icon-box h4 {
    font-size: 20px;
    font-weight: 700;
    margin: 0 0 10px 0;
  }
  
  .about .icon-boxes .icon-box p {
    font-size: 15px;
    color: #848484;
  }
  
  @media (max-width: 1200px) {
    .about .content {
      padding-right: 0;
    }
  }
  
  @media (max-width: 768px) {
    .about {
      text-align: center;
    }
  }
  
  /*--------------------------------------------------------------
  # Counts
  --------------------------------------------------------------*/
  .counts {
    padding-top: 80px;
  }
  
  .counts .count-box {
    padding: 30px 30px 25px 30px;
    width: 100%;
    position: relative;
    text-align: center;
    box-shadow: 0px 2px 35px rgba(0, 0, 0, 0.06);
    border-radius: 4px;
  }
  
  .counts .count-box i {
    position: absolute;
    width: 54px;
    height: 54px;
    top: -27px;
    left: 50%;
    transform: translateX(-50%);
    font-size: 24px;
    background: #fff;
    color: #e03a3c;
    border-radius: 50px;
    border: 2px solid #fff;
    box-shadow: 0px 2px 25px rgba(0, 0, 0, 0.1);
    display: inline-flex;
    align-items: center;
    justify-content: center;
  }
  
  .counts .count-box span {
    font-size: 36px;
    display: block;
    font-weight: 700;
    color: #111111;
  }
  
  .counts .count-box p {
    padding: 0;
    margin: 0;
    font-family: "Raleway", sans-serif;
    font-size: 14px;
  }
  
  /*--------------------------------------------------------------
  # Tabs
  --------------------------------------------------------------*/
  .tabs .nav-tabs {
    border: 0;
  }
  
  .tabs .nav-link {
    border: 1px solid #b9b9b9;
    padding: 15px;
    transition: 0.3s;
    color: #111111;
    border-radius: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
  }
  
  .tabs .nav-link i {
    padding-right: 15px;
    font-size: 48px;
  }
  
  .tabs .nav-link h4 {
    font-size: 18px;
    font-weight: 600;
    margin: 0;
  }
  
  .tabs .nav-link:hover {
    color: #e03a3c;
  }
  
  .tabs .nav-link.active {
    background: #e03a3c;
    color: #fff;
    border-color: #e03a3c;
  }
  
  @media (max-width: 768px) {
    .tabs .nav-link i {
      padding: 0;
      line-height: 1;
      font-size: 36px;
    }
  }
  
  @media (max-width: 575px) {
    .tabs .nav-link {
      padding: 15px;
    }
  
    .tabs .nav-link i {
      font-size: 24px;
    }
  }
  
  .tabs .tab-content {
    margin-top: 30px;
  }
  
  .tabs .tab-pane h3 {
    font-weight: 600;
    font-size: 26px;
  }
  
  .tabs .tab-pane ul {
    list-style: none;
    padding: 0;
  }
  
  .tabs .tab-pane ul li {
    padding-bottom: 10px;
  }
  
  .tabs .tab-pane ul i {
    font-size: 20px;
    padding-right: 4px;
    color: #e03a3c;
  }
  
  .tabs .tab-pane p:last-child {
    margin-bottom: 0;
  }
  
  /*--------------------------------------------------------------
  # Services
  --------------------------------------------------------------*/
  .services .icon-box {
    margin-bottom: 20px;
    padding: 30px;
    border-radius: 6px;
    background: #252525;
    transition: 0.3s;
    position: relative;
  }
  
  .services .icon-box:hover {
    background: #2b2b2b;
  }
  
  .services .icon-box i {
    float: left;
    color: #e03a3c;
    font-size: 40px;
    line-height: 0;
  }
  
  .services .icon-box h4 {
    margin-left: 70px;
    font-weight: 700;
    margin-bottom: 15px;
    font-size: 18px;
  }
  
  .services .icon-box h4 a {
    color: #fff;
    transition: 0.3s;
  }
  
  .services .icon-box h4 a:hover {
    text-decoration: underline;
  }
  
  .services .icon-box .icon-box:hover h4 a {
    color: #e03a3c;
  }
  
  .services .icon-box p {
    margin-left: 70px;
    line-height: 24px;
    font-size: 14px;
  }
  
  /*--------------------------------------------------------------
  # Portfolio
  --------------------------------------------------------------*/
  .portfolio .portfolio-item {
    margin-bottom: 30px;
  }
  
  .portfolio #portfolio-flters {
    padding: 0;
    margin: 0 auto 20px auto;
    list-style: none;
    text-align: center;
  }
  
  .portfolio #portfolio-flters li {
    cursor: pointer;
    display: inline-block;
    padding: 8px 15px 10px 15px;
    font-size: 14px;
    font-weight: 600;
    line-height: 1;
    text-transform: uppercase;
    color: #444444;
    margin-bottom: 5px;
    transition: all 0.3s ease-in-out;
    border-radius: 3px;
  }
  
  .portfolio #portfolio-flters li:hover,
  .portfolio #portfolio-flters li.filter-active {
    color: #fff;
    background: #e03a3c;
  }
  
  .portfolio #portfolio-flters li:last-child {
    margin-right: 0;
  }
  
  .portfolio .portfolio-wrap {
    transition: 0.3s;
    position: relative;
    overflow: hidden;
    z-index: 1;
    background: rgba(17, 17, 17, 0.6);
  }
  
  .portfolio .portfolio-wrap::before {
    content: "";
    background: rgba(17, 17, 17, 0.6);
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    transition: all ease-in-out 0.3s;
    z-index: 2;
    opacity: 0;
  }
  
  .portfolio .portfolio-wrap img {
    transition: all ease-in-out 0.3s;
  }
  
  .portfolio .portfolio-wrap .portfolio-info {
    opacity: 0;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 3;
    transition: all ease-in-out 0.3s;
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
    align-items: flex-start;
    padding: 20px;
  }
  
  .portfolio .portfolio-wrap .portfolio-info h4 {
    font-size: 20px;
    color: #fff;
    font-weight: 600;
  }
  
  .portfolio .portfolio-wrap .portfolio-info p {
    color: rgba(255, 255, 255, 0.7);
    font-size: 14px;
    text-transform: uppercase;
    padding: 0;
    margin: 0;
    font-style: italic;
  }
  
  .portfolio .portfolio-wrap .portfolio-links {
    text-align: center;
    z-index: 4;
  }
  
  .portfolio .portfolio-wrap .portfolio-links a {
    color: rgba(255, 255, 255, 0.4);
    margin: 0 5px 0 0;
    font-size: 28px;
    display: inline-block;
    transition: 0.3s;
  }
  
  .portfolio .portfolio-wrap .portfolio-links a:hover {
    color: #fff;
  }
  
  .portfolio .portfolio-wrap:hover::before {
    opacity: 1;
  }
  
  .portfolio .portfolio-wrap:hover img {
    transform: scale(1.2);
  }
  
  .portfolio .portfolio-wrap:hover .portfolio-info {
    opacity: 1;
  }
  
  /*--------------------------------------------------------------
  # Portfolio Details
  --------------------------------------------------------------*/
  .portfolio-details {
    padding-top: 40px;
  }
  
  .portfolio-details .portfolio-details-slider img {
    width: 100%;
  }
  
  .portfolio-details .portfolio-details-slider .swiper-pagination {
    margin-top: 20px;
    position: relative;
  }
  
  .portfolio-details .portfolio-details-slider .swiper-pagination .swiper-pagination-bullet {
    width: 12px;
    height: 12px;
    background-color: #fff;
    opacity: 1;
    border: 1px solid #e03a3c;
  }
  
  .portfolio-details .portfolio-details-slider .swiper-pagination .swiper-pagination-bullet-active {
    background-color: #e03a3c;
  }
  
  .portfolio-details .portfolio-info {
    padding: 30px;
    box-shadow: 0px 0 30px rgba(17, 17, 17, 0.08);
  }
  
  .portfolio-details .portfolio-info h3 {
    font-size: 22px;
    font-weight: 700;
    margin-bottom: 20px;
    padding-bottom: 20px;
    border-bottom: 1px solid #eee;
  }
  
  .portfolio-details .portfolio-info ul {
    list-style: none;
    padding: 0;
    font-size: 15px;
  }
  
  .portfolio-details .portfolio-info ul li+li {
    margin-top: 10px;
  }
  
  .portfolio-details .portfolio-description {
    padding-top: 30px;
  }
  
  .portfolio-details .portfolio-description h2 {
    font-size: 26px;
    font-weight: 700;
    margin-bottom: 20px;
  }
  
  .portfolio-details .portfolio-description p {
    padding: 0;
  }
  
  /*--------------------------------------------------------------
  # Testimonials
  --------------------------------------------------------------*/
  .testimonials .testimonials-carousel,
  .testimonials .testimonials-slider {
    overflow: hidden;
  }
  
  .testimonials .testimonial-item {
    box-sizing: content-box;
    padding: 30px;
    margin: 30px 15px;
    min-height: 200px;
    box-shadow: 0px 2px 12px rgba(0, 0, 0, 0.08);
    position: relative;
    background: #fff;
    border-radius: 15px;
  }
  
  .testimonials .testimonial-item .testimonial-img {
    width: 90px;
    border-radius: 10px;
    border: 6px solid #fff;
    float: left;
    margin: 0 10px 0 0;
  }
  
  .testimonials .testimonial-item h3 {
    font-size: 18px;
    font-weight: bold;
    margin: 25px 0 5px 0;
    color: #111;
  }
  
  .testimonials .testimonial-item h4 {
    font-size: 14px;
    color: #999;
    margin: 0;
  }
  
  .testimonials .testimonial-item .quote-icon-left,
  .testimonials .testimonial-item .quote-icon-right {
    color: #fceaea;
    font-size: 26px;
  }
  
  .testimonials .testimonial-item .quote-icon-left {
    display: inline-block;
    left: -5px;
    position: relative;
  }
  
  .testimonials .testimonial-item .quote-icon-right {
    display: inline-block;
    right: -5px;
    position: relative;
    top: 10px;
  }
  
  .testimonials .testimonial-item p {
    font-style: italic;
    margin: 30px auto 15px auto;
  }
  
  .testimonials .swiper-pagination {
    margin-top: 20px;
    position: relative;
  }
  
  .testimonials .swiper-pagination .swiper-pagination-bullet {
    width: 12px;
    height: 12px;
    background-color: #fff;
    opacity: 1;
    border: 1px solid #e03a3c;
  }
  
  .testimonials .swiper-pagination .swiper-pagination-bullet-active {
    background-color: #e03a3c;
  }
  
  /*--------------------------------------------------------------
  # Pricing
  --------------------------------------------------------------*/
  .pricing .box {
    padding: 20px;
    background: #2b2b2b;
    text-align: center;
    border-radius: 8px;
    position: relative;
    overflow: hidden;
  }
  
  .pricing .box h3 {
    font-weight: 400;
    padding: 15px;
    font-size: 18px;
    text-transform: uppercase;
    font-weight: 600;
  }
  
  .pricing .box h4 {
    font-size: 42px;
    font-weight: 500;
    font-family: "Open Sans", sans-serif;
    margin-bottom: 20px;
  }
  
  .pricing .box h4 sup {
    font-size: 20px;
    top: -15px;
    left: -3px;
  }
  
  .pricing .box h4 span {
    font-size: 16px;
    font-weight: 300;
  }
  
  .pricing .box ul {
    padding: 0;
    list-style: none;
    text-align: center;
    line-height: 20px;
    font-size: 14px;
  }
  
  .pricing .box ul li {
    padding-bottom: 16px;
  }
  
  .pricing .box ul i {
    color: #e03a3c;
    font-size: 18px;
    padding-right: 4px;
  }
  
  .pricing .box ul .na {
    color: rgba(255, 255, 255, 0.5);
    text-decoration: line-through;
  }
  
  .pricing .box .btn-wrap {
    padding: 15px;
    text-align: center;
  }
  
  .pricing .box .btn-buy {
    display: inline-block;
    padding: 10px 40px 12px 40px;
    border-radius: 4px;
    color: #fff;
    transition: none;
    font-size: 14px;
    font-weight: 400;
    font-family: "Raleway", sans-serif;
    font-weight: 600;
    transition: 0.3s;
    border: 2px solid rgba(255, 255, 255, 0.3);
  }
  
  .pricing .box .btn-buy:hover {
    border-color: #fff;
  }
  
  .pricing .featured {
    background: #e03a3c;
  }
  
  /*--------------------------------------------------------------
  # Frequently Asked Questions
  --------------------------------------------------------------*/
  .faq .faq-list {
    padding: 0;
    list-style: none;
  }
  
  .faq .faq-list li {
    border-bottom: 1px solid #eee;
    margin-bottom: 20px;
    padding-bottom: 20px;
  }
  
  .faq .faq-list a {
    display: block;
    position: relative;
    font-family: #e03a3c;
    font-size: 18px;
    line-height: 24px;
    font-weight: 400;
    padding-right: 25px;
    cursor: pointer;
  }
  
  .faq .faq-list i {
    font-size: 24px;
    position: absolute;
    right: 0;
    top: 0;
  }
  
  .faq .faq-list p {
    margin-bottom: 0;
    padding: 10px 0 0 0;
  }
  
  .faq .faq-list .icon-show {
    display: none;
  }
  
  .faq .faq-list a.collapsed {
    color: #343a40;
  }
  
  .faq .faq-list a.collapsed:hover {
    color: #e03a3c;
  }
  
  .faq .faq-list a.collapsed .icon-show {
    display: inline-block;
  }
  
  .faq .faq-list a.collapsed .icon-close {
    display: none;
  }
  
  /*--------------------------------------------------------------
  # Team
  --------------------------------------------------------------*/
  .team .member {
    margin-bottom: 20px;
    overflow: hidden;
    border-radius: 5px;
    background: #fff;
    position: relative;
  }
  
  .team .member .member-img {
    position: relative;
    overflow: hidden;
  }
  
  .team .member .social {
    position: absolute;
    left: 0;
    bottom: 30px;
    right: 0;
    opacity: 0;
    transition: ease-in-out 0.3s;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  
  .team .member .social a {
    transition: color 0.3s;
    color: #111111;
    margin: 0 3px;
    border-radius: 50px;
    width: 36px;
    height: 36px;
    background: #e03a3c;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    transition: ease-in-out 0.3s;
    color: #fff;
  }
  
  .team .member .social a:hover {
    background: #111111;
  }
  
  .team .member .social i {
    font-size: 18px;
    line-height: 0;
  }
  
  .team .member .member-info {
    padding: 25px 15px;
  }
  
  .team .member .member-info h4 {
    font-weight: 700;
    margin-bottom: 5px;
    font-size: 18px;
    color: #111111;
  }
  
  .team .member .member-info span {
    display: block;
    font-size: 13px;
    font-weight: 400;
    color: #aaaaaa;
  }
  
  .team .member .member-info p {
    font-style: italic;
    font-size: 14px;
    line-height: 26px;
    color: #777777;
  }
  
  .team .member:hover .social {
    opacity: 1;
    bottom: 15px;
  }
  
  /*--------------------------------------------------------------
  # Contact
  --------------------------------------------------------------*/
  .contact .info-box {
    color: #444444;
    text-align: center;
    box-shadow: 0 0 30px rgba(214, 215, 216, 0.6);
    padding: 30px 0 32px 0;
    border-radius: 4px;
  }
  
  .contact .info-box i {
    font-size: 32px;
    color: #e03a3c;
    border-radius: 50%;
    padding: 8px;
    border: 2px dotted #f8d4d5;
  }
  
  .contact .info-box h3 {
    font-size: 20px;
    color: #777777;
    font-weight: 700;
    margin: 10px 0;
  }
  
  .contact .info-box p {
    padding: 0;
    line-height: 24px;
    font-size: 14px;
    margin-bottom: 0;
  }
  
  .contact .php-email-form {
    box-shadow: 0 0 30px rgba(214, 215, 216, 0.6);
    padding: 30px;
    border-radius: 4px;
  }
  
  .contact .php-email-form .error-message {
    display: none;
    color: #fff;
    background: #ed3c0d;
    text-align: left;
    padding: 15px;
    font-weight: 600;
  }
  
  .contact .php-email-form .error-message br+br {
    margin-top: 25px;
  }
  
  .contact .php-email-form .sent-message {
    display: none;
    color: #fff;
    background: #18d26e;
    text-align: center;
    padding: 15px;
    font-weight: 600;
  }
  
  .contact .php-email-form .loading {
    display: none;
    background: #fff;
    text-align: center;
    padding: 15px;
  }
  
  .contact .php-email-form .loading:before {
    content: "";
    display: inline-block;
    border-radius: 50%;
    width: 24px;
    height: 24px;
    margin: 0 10px -6px 0;
    border: 3px solid #18d26e;
    border-top-color: #eee;
    animation: animate-loading 1s linear infinite;
  }
  
  .contact .php-email-form .form-group {
    margin-bottom: 25px;
  }
  
  .contact .php-email-form input,
  .contact .php-email-form textarea {
    box-shadow: none;
    font-size: 14px;
    border-radius: 4px;
  }
  
  .contact .php-email-form input:focus,
  .contact .php-email-form textarea:focus {
    border-color: #111111;
  }
  
  .contact .php-email-form input {
    padding: 10px 15px;
  }
  
  .contact .php-email-form textarea {
    padding: 12px 15px;
  }
  
  .contact .php-email-form button[type=submit] {
    background: #e03a3c;
    border: 0;
    padding: 10px 32px;
    color: #fff;
    transition: 0.4s;
    border-radius: 4px;
  }
  
  .contact .php-email-form button[type=submit]:hover {
    background: #e35052;
  }
  
  @keyframes animate-loading {
    0% {
      transform: rotate(0deg);
    }
  
    100% {
      transform: rotate(360deg);
    }
  }
  
  /*--------------------------------------------------------------
  # Blog
  --------------------------------------------------------------*/
  .blog {
    padding: 40px 0 20px 0;
  }
  
  .blog .entry {
    padding: 30px;
    margin-bottom: 60px;
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  }
  
  .blog .entry .entry-img {
    max-height: 440px;
    margin: -30px -30px 20px -30px;
    overflow: hidden;
  }
  
  .blog .entry .entry-title {
    font-size: 28px;
    font-weight: bold;
    padding: 0;
    margin: 0 0 20px 0;
  }
  
  .blog .entry .entry-title a {
    color: #111111;
    transition: 0.3s;
  }
  
  .blog .entry .entry-title a:hover {
    color: #e03a3c;
  }
  
  .blog .entry .entry-meta {
    margin-bottom: 15px;
    color: #777777;
  }
  
  .blog .entry .entry-meta ul {
    display: flex;
    flex-wrap: wrap;
    list-style: none;
    align-items: center;
    padding: 0;
    margin: 0;
  }
  
  .blog .entry .entry-meta ul li+li {
    padding-left: 20px;
  }
  
  .blog .entry .entry-meta i {
    font-size: 16px;
    margin-right: 8px;
    line-height: 0;
  }
  
  .blog .entry .entry-meta a {
    color: #777777;
    font-size: 14px;
    display: inline-block;
    line-height: 1;
  }
  
  .blog .entry .entry-content p {
    line-height: 24px;
  }
  
  .blog .entry .entry-content .read-more {
    -moz-text-align-last: right;
    text-align-last: right;
  }
  
  .blog .entry .entry-content .read-more a {
    display: inline-block;
    background: #e03a3c;
    color: #fff;
    padding: 6px 20px;
    transition: 0.3s;
    font-size: 14px;
    border-radius: 4px;
  }
  
  .blog .entry .entry-content .read-more a:hover {
    background: #e35052;
  }
  
  .blog .entry .entry-content h3 {
    font-size: 22px;
    margin-top: 30px;
    font-weight: bold;
  }
  
  .blog .entry .entry-content blockquote {
    overflow: hidden;
    background-color: #fafafa;
    padding: 60px;
    position: relative;
    text-align: center;
    margin: 20px 0;
  }
  
  .blog .entry .entry-content blockquote p {
    color: #444444;
    line-height: 1.6;
    margin-bottom: 0;
    font-style: italic;
    font-weight: 500;
    font-size: 22px;
  }
  
  .blog .entry .entry-content blockquote::after {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    bottom: 0;
    width: 3px;
    background-color: #111111;
    margin-top: 20px;
    margin-bottom: 20px;
  }
  
  .blog .entry .entry-footer {
    padding-top: 10px;
    border-top: 1px solid #e6e6e6;
  }
  
  .blog .entry .entry-footer i {
    color: #5e5e5e;
    display: inline;
  }
  
  .blog .entry .entry-footer a {
    color: #1e1e1e;
    transition: 0.3s;
  }
  
  .blog .entry .entry-footer a:hover {
    color: #e03a3c;
  }
  
  .blog .entry .entry-footer .cats {
    list-style: none;
    display: inline;
    padding: 0 20px 0 0;
    font-size: 14px;
  }
  
  .blog .entry .entry-footer .cats li {
    display: inline-block;
  }
  
  .blog .entry .entry-footer .tags {
    list-style: none;
    display: inline;
    padding: 0;
    font-size: 14px;
  }
  
  .blog .entry .entry-footer .tags li {
    display: inline-block;
  }
  
  .blog .entry .entry-footer .tags li+li::before {
    padding-right: 6px;
    color: #6c757d;
    content: ",";
  }
  
  .blog .entry .entry-footer .share {
    font-size: 16px;
  }
  
  .blog .entry .entry-footer .share i {
    padding-left: 5px;
  }
  
  .blog .entry-single {
    margin-bottom: 30px;
  }
  
  .blog .blog-author {
    padding: 20px;
    margin-bottom: 30px;
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  }
  
  .blog .blog-author img {
    width: 120px;
    margin-right: 20px;
  }
  
  .blog .blog-author h4 {
    font-weight: 600;
    font-size: 22px;
    margin-bottom: 0px;
    padding: 0;
    color: #111111;
  }
  
  .blog .blog-author .social-links {
    margin: 0 10px 10px 0;
  }
  
  .blog .blog-author .social-links a {
    color: rgba(17, 17, 17, 0.5);
    margin-right: 5px;
  }
  
  .blog .blog-author p {
    font-style: italic;
    color: #b7b7b7;
  }
  
  .blog .blog-comments {
    margin-bottom: 30px;
  }
  
  .blog .blog-comments .comments-count {
    font-weight: bold;
  }
  
  .blog .blog-comments .comment {
    margin-top: 30px;
    position: relative;
  }
  
  .blog .blog-comments .comment .comment-img {
    margin-right: 14px;
  }
  
  .blog .blog-comments .comment .comment-img img {
    width: 60px;
  }
  
  .blog .blog-comments .comment h5 {
    font-size: 16px;
    margin-bottom: 2px;
  }
  
  .blog .blog-comments .comment h5 a {
    font-weight: bold;
    color: #444444;
    transition: 0.3s;
  }
  
  .blog .blog-comments .comment h5 a:hover {
    color: #e03a3c;
  }
  
  .blog .blog-comments .comment h5 .reply {
    padding-left: 10px;
    color: #111111;
  }
  
  .blog .blog-comments .comment h5 .reply i {
    font-size: 20px;
  }
  
  .blog .blog-comments .comment time {
    display: block;
    font-size: 14px;
    color: #2b2b2b;
    margin-bottom: 5px;
  }
  
  .blog .blog-comments .comment.comment-reply {
    padding-left: 40px;
  }
  
  .blog .blog-comments .reply-form {
    margin-top: 30px;
    padding: 30px;
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  }
  
  .blog .blog-comments .reply-form h4 {
    font-weight: bold;
    font-size: 22px;
  }
  
  .blog .blog-comments .reply-form p {
    font-size: 14px;
  }
  
  .blog .blog-comments .reply-form input {
    border-radius: 4px;
    padding: 10px 10px;
    font-size: 14px;
  }
  
  .blog .blog-comments .reply-form input:focus {
    box-shadow: none;
    border-color: #ee9293;
  }
  
  .blog .blog-comments .reply-form textarea {
    border-radius: 4px;
    padding: 10px 10px;
    font-size: 14px;
  }
  
  .blog .blog-comments .reply-form textarea:focus {
    box-shadow: none;
    border-color: #ee9293;
  }
  
  .blog .blog-comments .reply-form .form-group {
    margin-bottom: 25px;
  }
  
  .blog .blog-comments .reply-form .btn-primary {
    border-radius: 4px;
    padding: 10px 20px;
    border: 0;
    background-color: #111111;
  }
  
  .blog .blog-comments .reply-form .btn-primary:hover {
    background-color: #1e1e1e;
  }
  
  .blog .blog-pagination {
    color: #444444;
  }
  
  .blog .blog-pagination ul {
    display: flex;
    padding: 0;
    margin: 0;
    list-style: none;
  }
  
  .blog .blog-pagination li {
    margin: 0 5px;
    transition: 0.3s;
  }
  
  .blog .blog-pagination li a {
    color: #111111;
    padding: 7px 16px;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  
  .blog .blog-pagination li.active,
  .blog .blog-pagination li:hover {
    background: #e03a3c;
  }
  
  .blog .blog-pagination li.active a,
  .blog .blog-pagination li:hover a {
    color: #fff;
  }
  
  .blog .sidebar {
    padding: 30px;
    margin: 0 0 60px 20px;
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  }
  
  .blog .sidebar .sidebar-title {
    font-size: 20px;
    font-weight: 700;
    padding: 0 0 0 0;
    margin: 0 0 15px 0;
    color: #111111;
    position: relative;
  }
  
  .blog .sidebar .sidebar-item {
    margin-bottom: 30px;
  }
  
  .blog .sidebar .search-form form {
    background: #fff;
    border: 1px solid #ddd;
    padding: 3px 10px;
    position: relative;
  }
  
  .blog .sidebar .search-form form input[type=text] {
    border: 0;
    padding: 4px;
    border-radius: 4px;
    width: calc(100% - 40px);
  }
  
  .blog .sidebar .search-form form button {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    border: 0;
    background: none;
    font-size: 16px;
    padding: 0 15px;
    margin: -1px;
    background: #e03a3c;
    color: #fff;
    transition: 0.3s;
    border-radius: 0 4px 4px 0;
    line-height: 0;
  }
  
  .blog .sidebar .search-form form button i {
    line-height: 0;
  }
  
  .blog .sidebar .search-form form button:hover {
    background: #e34c4d;
  }
  
  .blog .sidebar .categories ul {
    list-style: none;
    padding: 0;
  }
  
  .blog .sidebar .categories ul li+li {
    padding-top: 10px;
  }
  
  .blog .sidebar .categories ul a {
    color: #111111;
    transition: 0.3s;
  }
  
  .blog .sidebar .categories ul a:hover {
    color: #e03a3c;
  }
  
  .blog .sidebar .categories ul a span {
    padding-left: 5px;
    color: #aaaaaa;
    font-size: 14px;
  }
  
  .blog .sidebar .recent-posts .post-item+.post-item {
    margin-top: 15px;
  }
  
  .blog .sidebar .recent-posts img {
    width: 80px;
    float: left;
  }
  
  .blog .sidebar .recent-posts h4 {
    font-size: 15px;
    margin-left: 95px;
    font-weight: bold;
  }
  
  .blog .sidebar .recent-posts h4 a {
    color: #111111;
    transition: 0.3s;
  }
  
  .blog .sidebar .recent-posts h4 a:hover {
    color: #e03a3c;
  }
  
  .blog .sidebar .recent-posts time {
    display: block;
    margin-left: 95px;
    font-style: italic;
    font-size: 14px;
    color: #aaaaaa;
  }
  
  .blog .sidebar .tags {
    margin-bottom: -10px;
  }
  
  .blog .sidebar .tags ul {
    list-style: none;
    padding: 0;
  }
  
  .blog .sidebar .tags ul li {
    display: inline-block;
  }
  
  .blog .sidebar .tags ul a {
    color: #515151;
    font-size: 14px;
    padding: 6px 14px;
    margin: 0 6px 8px 0;
    border: 1px solid #c4c4c4;
    display: inline-block;
    transition: 0.3s;
  }
  
  .blog .sidebar .tags ul a:hover {
    color: #fff;
    border: 1px solid #e03a3c;
    background: #e03a3c;
  }
  
  .blog .sidebar .tags ul a span {
    padding-left: 5px;
    color: #aaaaaa;
    font-size: 14px;
  }
  
  /*--------------------------------------------------------------
  # Footer
  --------------------------------------------------------------*/
  #footer {
    color: #fff;
    font-size: 14px;
    background: #111111;
  }
  
  #footer .footer-top {
    padding: 60px 0 30px 0;
    background: #1b1b1b;
  }
  
  #footer .footer-top .footer-contact {
    margin-bottom: 30px;
  }
  
  #footer .footer-top .footer-contact h3 {
    font-size: 26px;
    line-height: 1;
    font-weight: 700;
  }
  
  #footer .footer-top .footer-contact h3 span {
    color: #e03a3c;
  }
  
  #footer .footer-top .footer-contact p {
    font-size: 14px;
    line-height: 24px;
    margin-bottom: 0;
    font-family: "Raleway", sans-serif;
  }
  
  #footer .footer-top h4 {
    font-size: 16px;
    font-weight: bold;
    position: relative;
    padding-bottom: 12px;
  }
  
  #footer .footer-top h4::after {
    content: "";
    position: absolute;
    display: block;
    width: 20px;
    height: 2px;
    background: #e03a3c;
    bottom: 0;
    left: 0;
  }
  
  #footer .footer-top .footer-links {
    margin-bottom: 30px;
  }
  
  #footer .footer-top .footer-links ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }
  
  #footer .footer-top .footer-links ul i {
    padding-right: 2px;
    color: white;
    font-size: 18px;
    line-height: 1;
  }
  
  #footer .footer-top .footer-links ul li {
    padding: 10px 0;
    display: flex;
    align-items: center;
  }
  
  #footer .footer-top .footer-links ul li:first-child {
    padding-top: 0;
  }
  
  #footer .footer-top .footer-links ul a {
    color: #aaaaaa;
    transition: 0.3s;
    display: inline-block;
    line-height: 1;
  }
  
  #footer .footer-top .footer-links ul a:hover {
    text-decoration: none;
    color: #fff;
  }
  
  #footer .footer-newsletter {
    font-size: 15px;
  }
  
  #footer .footer-newsletter h4 {
    font-size: 16px;
    font-weight: bold;
    position: relative;
    padding-bottom: 12px;
  }
  
  #footer .footer-newsletter form {
    margin-top: 30px;
    background: #fff;
    padding: 5px 10px;
    position: relative;
    border-radius: 4px;
    text-align: left;
  }
  
  #footer .footer-newsletter form input[type=email] {
    border: 0;
    padding: 4px 8px;
    width: calc(100% - 100px);
  }
  
  #footer .footer-newsletter form input[type=submit] {
    position: absolute;
    top: 0;
    right: -1px;
    bottom: 0;
    border: 0;
    background: none;
    font-size: 16px;
    padding: 0 20px;
    background: #e03a3c;
    color: #fff;
    transition: 0.3s;
    border-radius: 0 4px 4px 0;
    box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
  }
  
  #footer .footer-newsletter form input[type=submit]:hover {
    background: #e35052;
  }
  
  #footer .credits {
    padding-top: 5px;
    font-size: 13px;
  }
  
  #footer .social-links a {
    font-size: 18px;
    display: inline-block;
    background: #2b2b2b;
    color: #fff;
    line-height: 1;
    padding: 8px 0;
    margin-right: 4px;
    border-radius: 4px;
    text-align: center;
    width: 36px;
    height: 36px;
    transition: 0.3s;
  }
  
  #footer .social-links a:hover {
    background: #e03a3c;
    color: #fff;
    text-decoration: none;
  }
  </style>