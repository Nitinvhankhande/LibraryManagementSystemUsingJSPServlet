<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Library Managment </title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Gp
  * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
  * Updated: Aug 15 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="index-page">

  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">
  
      <a href="index.html" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1 class="sitename">Knowledge Haven</h1>
      </a>
  
      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="#hero" class="active">Home</a></li>
          <li><a href="#about">About</a></li>
  
          <!-- Books Dropdown with Nested Categories -->
          <li class="dropdown">
            <a href="#services"><span>Books</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="#">All Books</a></li>
              <li class="dropdown">
                <a href="#"><span>Categories</span> <i class="bi bi-chevron-right dropdown-indicator"></i></a>
                <ul>
                  <li><a href="#">Fiction</a></li>
                  <li><a href="#">Non-Fiction</a></li>
                  <li><a href="#">Biographies</a></li>
                  <li><a href="#">Science</a></li>
                </ul>
              </li>
              <li><a href="#">New Arrivals</a></li>
              <li><a href="#">Best Sellers</a></li>
            </ul>
          </li>
  
          <li><a href="#portfolio">Library Gallery</a></li>
          <li><a href="#team">Best Books</a></li>
          <li><a href="#call-to-action">Login</a></li>
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>
  
      <a class="btn-getstarted" href="register.jsp">Register</a>
  
    </div>
  </header>
  

  <main class="main">

    <!-- Hero Section -->
    <section id="hero" class="hero section dark-background">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in">

      <div class="container">

        <div class="row justify-content-center text-center" data-aos="fade-up" data-aos-delay="100">
          <div class="col-xl-6 col-lg-8">
            <h2>Empowering Minds</h2>
            <p>Because Reading is the Key to Success</p>
          </div>
        </div>

        <div class="row gy-4 mt-5 justify-content-center" data-aos="fade-up" data-aos-delay="200">
          <div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="300">
            <div class="icon-box">
              <i class="bi bi-search"></i>
              <h3>Search & Discover</h3>
            </div>
          </div>
          <div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="400">
            <div class="icon-box">
             
              <i class="bi bi-book-half"></i>
              <h3>Reader's Lounge</h3>
            </div>
          </div>
          <div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="500">
            <div class="icon-box">
              <i class="bi bi-journal-bookmark"></i>
              <h3>Explore Collections</h3>
            </div>
          </div>
          <div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="600">
            <div class="icon-box">
             
              <i class="bi bi-hourglass-bottom"></i>
              <h3>Reading Hours</h3>
            </div>
          </div>
          <div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="700">
            <div class="icon-box">
              <i class="bi bi-award"></i>
              <h3>Book Recommendations</h3>
            </div>
          </div>
        </div>

      </div>

    </section><!-- /Hero Section -->

    <!-- About Section -->
    <section id="about" class="about section">

      <div class="container" data-aos="fade-up" data-aos-delay="100">
    
        <div class="row gy-4">
          <div class="col-lg-6 order-1 order-lg-2">
            <img src="assets/img/about.jpg"  class="img-fluid" alt="Library Image">
          </div>
          <div class="col-lg-6 order-2 order-lg-1 content">
            <h3>Empowering Knowledge Through Libraries</h3>
            <p class="fst-italic">
              Our library is more than just a place to borrow books — it's a hub of learning, inspiration, and community connection.
            </p>
            <ul>
              <li><i class="bi bi-check2-all"></i> <span>Access thousands of books, journals, and digital resources anytime.</span></li>
              <li><i class="bi bi-check2-all"></i> <span>Organized book management system for easy borrowing and returning.</span></li>
              <li><i class="bi bi-check2-all"></i> <span>Empowering students and readers with a seamless, user-friendly platform for all their learning needs.</span></li>
            </ul>
            <p>
              Our mission is to make knowledge accessible to everyone, everywhere. Whether you're a student, researcher, or book lover, our library system is designed to make your reading journey smooth and enriching.
            </p>
          </div>
        </div>
    
      </div>
    
    </section>
    <!-- /About Section -->

    <!-- Clients Section -->
   <!-- Add this in <head> if not already included -->
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">

<!-- Add this to <head> if not already present -->
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&display=swap" rel="stylesheet">

  <section id="clients" class="clients section">
    <div class="container" data-aos="fade-up" data-aos-delay="100">
  
      <div class="swiper init-swiper">
        <script type="application/json" class="swiper-config">
          {
            "loop": true,
            "speed": 600,
            "autoplay": {
              "delay": 3000
            },
            "slidesPerView": "auto",
            "pagination": {
              "el": ".swiper-pagination",
              "type": "bullets",
              "clickable": true
            },
            "breakpoints": {
              "320": {
                "slidesPerView": 2,
                "spaceBetween": 30
              },
              "480": {
                "slidesPerView": 3,
                "spaceBetween": 40
              },
              "640": {
                "slidesPerView": 4,
                "spaceBetween": 60
              },
              "992": {
                "slidesPerView": 6,
                "spaceBetween": 80
              }
            }
          }
        </script>
  
        <div class="swiper-wrapper align-items-center text-center">
          <div class="swiper-slide">
            <div style="font-family: 'Playfair Display', serif; font-size: 1.1rem; font-weight: 600; padding: 10px; color: #333;">J.K. Rowling</div>
          </div>
          <div class="swiper-slide">
            <div style="font-family: 'Playfair Display', serif; font-size: 1.1rem; font-weight: 600; padding: 10px; color: #333;">George R.R. Martin</div>
          </div>
          <div class="swiper-slide">
            <div style="font-family: 'Playfair Display', serif; font-size: 1.1rem; font-weight: 600; padding: 10px; color: #333;">Jane Austen</div>
          </div>
          <div class="swiper-slide">
            <div style="font-family: 'Playfair Display', serif; font-size: 1.1rem; font-weight: 600; padding: 10px; color: #333;">Agatha Christie</div>
          </div>
          <div class="swiper-slide">
            <div style="font-family: 'Playfair Display', serif; font-size: 1.1rem; font-weight: 600; padding: 10px; color: #333;">C.S. Lewis</div>
          </div>
          <div class="swiper-slide">
            <div style="font-family: 'Playfair Display', serif; font-size: 1.1rem; font-weight: 600; padding: 10px; color: #333;">Dan Brown</div>
          </div>
          <div class="swiper-slide">
            <div style="font-family: 'Playfair Display', serif; font-size: 1.1rem; font-weight: 600; padding: 10px; color: #333;">J.R.R. Tolkien</div>
          </div>
          <div class="swiper-slide">
            <div style="font-family: 'Playfair Display', serif; font-size: 1.1rem; font-weight: 600; padding: 10px; color: #333;">Paulo Coelho</div>
          </div>
        </div>
  
        <div class="swiper-pagination"></div>
      </div>
  
    </div>
  </section>
  
<!-- /Clients Section -->

    <!-- Features Section -->
    <section id="features" class="features section">
      <div class="container">
        <div class="row gy-4">
          <div class="features-image col-lg-6" data-aos="fade-up" data-aos-delay="100">
            <img src="assets/img/features-bg.jpg" alt="">
          </div>
          <div class="col-lg-6">
    
            <div class="features-item d-flex ps-0 ps-lg-3 pt-4 pt-lg-0" data-aos="fade-up" data-aos-delay="200">
              
              <div>
                <h4>Extensive Book Collection</h4>
                <p>Explore a vast range of genres including fiction, non-fiction, academic, and rare manuscripts curated for all readers.</p>
              </div>
            </div>
    
            <div class="features-item d-flex mt-5 ps-0 ps-lg-3" data-aos="fade-up" data-aos-delay="300">
              
              <div>
                <h4>Seamless Borrowing System</h4>
                <p>Easily borrow and return books through our efficient and user-friendly online management system.</p>
              </div>
            </div>
    
            <div class="features-item d-flex mt-5 ps-0 ps-lg-3" data-aos="fade-up" data-aos-delay="400">
            
              <div>
                <h4>Digital Library Access</h4>
                <p>Get access to eBooks, audiobooks, journals, and research materials anytime, anywhere.</p>
              </div>
            </div>
    
            <div class="features-item d-flex mt-5 ps-0 ps-lg-3" data-aos="fade-up" data-aos-delay="500">
              
              <div>
                <h4>Reading Events & Workshops</h4>
                <p>Join author meets, book readings, and knowledge-sharing sessions to enhance your literary experience.</p>
              </div>
            </div>
    
          </div>
        </div>
      </div>
    </section>
    <!-- /Features Section -->

    <!-- Services Section -->
  <!-- Services Section -->
<section id="services" class="services section">

  <!-- Section Title -->
  <div class="container section-title" data-aos="fade-up">
    <h2>Library</h2>
    <p>Explore Our Featured Books</p>
  </div>

  <div class="container">
    <div class="row gy-4">

      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item position-relative p-3 text-center">
          <div style="height: 300px; display: flex; align-items: center; justify-content: center; background-color: #f8f9fa;">
            <img src="assets/img/books/book1.jpg" alt="Book Image" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">
          </div>
          <h5 class="mt-3">Gift of Earth</h5>
        </div>
      </div>
      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item position-relative p-3 text-center">
          <div style="height: 300px; display: flex; align-items: center; justify-content: center; background-color: #f8f9fa;">
            <img src="assets/img/books/book2.jpg" alt="Book Image" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">
          </div>
          <h5 class="mt-3">Love Again</h5>
        </div>
      </div>
      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item position-relative p-3 text-center">
          <div style="height: 300px; display: flex; align-items: center; justify-content: center; background-color: #f8f9fa;">
            <img src="assets/img/books/book3.jpg" alt="Book Image" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">
          </div>
          <h5 class="mt-3">consititution of Indian</h5>
        </div>
      </div>
      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item position-relative p-3 text-center">
          <div style="height: 300px; display: flex; align-items: center; justify-content: center; background-color: #f8f9fa;">
            <img src="assets/img/books/book4.jpg" alt="Book Image" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">
          </div>
          <h5 class="mt-3">Lord Krishna</h5>
        </div>
      </div>
      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item position-relative p-3 text-center">
          <div style="height: 300px; display: flex; align-items: center; justify-content: center; background-color: #f8f9fa;">
            <img src="assets/img/books/book5.jpg" alt="Book Image" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">
          </div>
          <h5 class="mt-3">Ramayan</h5>
        </div>
      </div>
      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item position-relative p-3 text-center">
          <div style="height: 300px; display: flex; align-items: center; justify-content: center; background-color: #f8f9fa;">
            <img src="assets/img/books/book6.jpg" alt="Book Image" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">
          </div>
          <h5 class="mt-3">chatrapati shivaji maharaj </h5>
        </div>
      </div>
      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item position-relative p-3 text-center">
          <div style="height: 300px; display: flex; align-items: center; justify-content: center; background-color: #f8f9fa;">
            <img src="assets/img/books/book7.jpg" alt="Book Image" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">
          </div>
          <h5 class="mt-3">The Past is Rising</h5>
        </div>
      </div>
      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item position-relative p-3 text-center">
          <div style="height: 300px; display: flex; align-items: center; justify-content: center; background-color: #f8f9fa;">
            <img src="assets/img/books/book8.jpg" alt="Book Image" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">
          </div>
          <h5 class="mt-3">Fortress Blood</h5>
        </div>
      </div>
      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
        <div class="service-item position-relative p-3 text-center">
          <div style="height: 300px; display: flex; align-items: center; justify-content: center; background-color: #f8f9fa;">
            <img src="assets/img/books/book9.jpg" alt="Book Image" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">
          </div>
          <h5 class="mt-3">Crime and Punishment</h5>
        </div>
      </div>

    </div>
  </div>
</section>
<!-- /Services Section -->

    <!-- Call To Action Section -->
    <section id="call-to-action" class="call-to-action section dark-background">

      <img src="assets/img/cta-bg.jpg" alt="">

      <div class="container">
        <div class="row justify-content-center" data-aos="zoom-in" data-aos-delay="100">
          <div class="col-xl-10">
            <div class="text-center">
              <h3>Join Us</h3>
              <p style="font-size: 20px;" >Become a part of a world where stories live, knowledge grows, and curiosity is always welcome. Join our library and open the door to thousands of books, peaceful reading spaces, and a community of lifelong learners.</p>
              <a class="cta-btn" href="login.jsp">Login</a>
            </div>
          </div>
        </div>
      </div>
      

    </section><!-- /Call To Action Section -->

    <!-- Portfolio Section -->
    <section id="portfolio" class="portfolio section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Library Life</h2>
        <p>In the World of Books</p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

          <ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="100">

          <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="200">

            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-1.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-1.jpg" title="App 1" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-product">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-2.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-2.jpg" title="Product 1" data-gallery="portfolio-gallery-product" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-branding">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-3.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-3.jpg" title="Branding 1" data-gallery="portfolio-gallery-branding" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-4.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-4.jpg" title="App 2" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-product">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-5.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-5.jpg" title="Product 2" data-gallery="portfolio-gallery-product" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-branding">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-6.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-6.jpg" title="Branding 2" data-gallery="portfolio-gallery-branding" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-7.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-7.jpg" title="App 3" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-product">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-8.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-8.jpg" title="Product 3" data-gallery="portfolio-gallery-product" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>

              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-branding">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-9.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-9.jpg" title="Branding 2" data-gallery="portfolio-gallery-branding" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
              <img src="assets/img/masonry-portfolio/masonry-portfolio-10.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <p>Click to Zoom</p>
                <a href="assets/img/masonry-portfolio/masonry-portfolio-10.jpg" title="App 1" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
              </div>
            </div>

          </div><!-- End Portfolio Container -->

        </div>

      </div>

    </section><!-- /Portfolio Section -->

   

    <!-- Testimonials Section -->
    <section id="testimonials" class="testimonials section dark-background">

      <img src="assets/img/testimonials-bg.jpg" class="testimonials-bg" alt="">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="swiper init-swiper">
          <script type="application/json" class="swiper-config">
            {
              "loop": true,
              "speed": 600,
              "autoplay": {
                "delay": 5000
              },
              "slidesPerView": "auto",
              "pagination": {
                "el": ".swiper-pagination",
                "type": "bullets",
                "clickable": true
              }
            }
          </script>
          <div class="swiper-wrapper">


            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                <h3>Saul Goodman</h3>
                <h4>Ceo &amp; Founder</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bi bi-quote quote-icon-left"></i>
                  <span>Leading this company has been an incredible journey. We’ve built a strong team and achieved milestones I’m truly proud of.</span>
                  <i class="bi bi-quote quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

                      
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                <h3>Sara Wilsson</h3>
                <h4>Manager</h4> 
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bi bi-quote quote-icon-left"></i>
                  <span>Managing a diverse team has taught me the value of collaboration and adaptability in achieving consistent success.</span>
                  <i class="bi bi-quote quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->


                      
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                <h3>Jena Karlis</h3>
                <h4>Librarian</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bi bi-quote quote-icon-left"></i>
                  <span>Helping people discover knowledge and resources is my passion. Every book holds a world of learning and imagination.</span>
                  <i class="bi bi-quote quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </section><!-- /Testimonials Section -->


    <!-- Team Section -->
    <section id="team" class="team section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Collection</h2>
        <p>our Best Books</p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="team-member">
              <div class="member-img">
                <img src="assets/img/books/book_1.jpg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>by dr.apj abdul kalam</h4>
                <span>wings of fire</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="team-member">
              <div class="member-img">
                <img src="assets/img/books/dasbodh.jpg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>by Saint Samarth Ramdas</h4>
                <span>Dasbodh</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="team-member">
              <div class="member-img">
                <img src="assets/img/books/Budhbhushan_C.jpg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>by chhatrapati sambhaji maharaj</h4>
                <span>budhbhushan</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="team-member">
              <div class="member-img">
                <img src="assets/img/books/shrelock.jpg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>arthur conan doyle</h4>
                <span>sherlock holmes</span>
              </div>
            </div>
          </div>

        </div>

      </div>

    </section><!-- /Team Section -->

    <!-- Contact Section -->
    <!-- /Contact Section -->

  </main>

  <footer id="footer" class="footer bg-dark text-light pt-5 pb-3">
    <div class="container">
      
      <!-- Two Columns in One Row -->
      <div class="row justify-content-center text-center mb-4">
        <!-- Left Section -->
        <div class="col-md-5 mb-3">
          <h4 class="text-warning">Knowledge Haven</h4>
          <p>We are dedicated to spreading knowledge and inspiration through books and education. Our mission is to make learning accessible to everyone.</p>
          <p><strong>Contact:</strong> +1 5589 55488 55 <br> knowledgehaven@gmail.com</p>
        </div>
  
        <!-- Right Section -->
        <div class="col-md-5 mb-3">
          <h5  class="text-warning">Useful Links</h5>
          <ul class="list-unstyled text-light">
            <li><a href="#" class="text-light text-decoration-none">Home</a></li>
            <li><a href="#about" class="text-light text-decoration-none">About Us</a></li>
            <li><a href="#services" class="text-light text-decoration-none">Books</a></li>
            <li><a href="#portfolio" class="text-light text-decoration-none">Library Gallery</a></li>
            <li><a href="#team" class="text-light text-decoration-none">Best Books</a></li>
            <li><a href="#call-to-action" class="text-light text-decoration-none">Login</a></li>
          </ul>
        </div>
      </div>
      <!-- Social Icons -->
      <div class="text-center mb-3">
        <a href="#" class="text-light mx-2"><i class="bi bi-twitter"></i></a>
        <a href="#" class="text-light mx-2"><i class="bi bi-facebook"></i></a>
        <a href="#" class="text-light mx-2"><i class="bi bi-instagram"></i></a>
        <a href="#" class="text-light mx-2"><i class="bi bi-linkedin"></i></a>
      </div>
  
      <!-- Copyright -->
      <div class="text-center pt-3 border-top border-secondary">
        <small>© <strong>Knowledge Haven</strong> All Rights Reserved. Designed by <a href="#" class="text-light text-decoration-none">Library Team</a></small>
      </div>
  
    </div>
  </footer>
  

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>