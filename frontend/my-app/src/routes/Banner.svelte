<body>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <div class="row">
        <div class="col-xl-6" style=" z-index:1;">
          <h1>Bettter digital experience with Presento</h1>
          <h2>
            We are team of talented designers making websites with Bootstrap
          </h2>
          <a href="#about" class="btn-get-started scrollto">Get Started</a>
        </div>
      </div>
    </div>
  </section>
  <!-- End Hero -->
</body>
<style>
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
    
    #hero{
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
</style>
