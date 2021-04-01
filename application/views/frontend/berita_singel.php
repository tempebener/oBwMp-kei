<!DOCTYPE html>
<html lang="en">
   <head>
    <title>Food</title>
    <?php $this->load->view('frontend/head2')?>
  </head>
  <body>
    <div class="page">

    <!--RD Navbar-->
    <!-- head -->
    <header class="section rd-navbar-wrap" data-preset='{"title":"Navbar Default","category":"header","reload":true,"id":"navbar-default"}'>
      <?php $this->load->view('frontend/header')?>
    </header>
      <section class="section breadcrumb-section">
        <div class="container">
          <!-- Breadcrumb-->
          <div class="breadcrumb">
            <div class="breadcrumb-inner">
              <div class="breadcrumb-item"><a class="breadcrumb-link" href="index.html">Home</a></div>
              <div class="breadcrumb-item"><a class="breadcrumb-link" href="blog.html">Blog</a></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Single post</span></div>
            </div>
          </div>
        </div>
      </section>
      <!-- Post single-->
      <section class="section-md bg-transparent">
        <div class="container">
          <div class="post">
            <div class="post-media"><img class="post-img" src="images/image-23-1170x500.jpg" alt="" width="1170" height="500"/>
            </div>
            <div class="post-meta">
              <div class="post-meta-item">
                <div class="post-meta-icon custom-font-calendar"></div>
                <div class="post-date">April 23, 2020</div>
              </div>
              <div class="post-meta-item">
                <div class="post-meta-icon custom-font-message-circle"></div>
                <div class="post-comment">3 Comments</div>
              </div>
            </div>
            <div class="post-title h6">Studying in the United States</div>
            <div class="post-text">
              <p>Ultrices varius tellus viverra egestas ultrices sed turpis dictum eget. Vulputate ipsum sit et mi, id feugiat. Tincidunt dictum vitae metus leo, orci luctus lorem. Volutpat ornare quis risus semper. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices ipsum non mattis pharetra. Integer laoreet non felis sit amet pharetra. Integer mollis eget felis non finibus. Nullam nibh mauris, fermentum vitae felis vehicula, aliquam bibendum sapien. In euismod velit vitae neque rhoncus congue. Aliquam luctus, sapien in consectetur cursus, quam urna euismod magna, sed pellentesque massa libero eu lorem. Aenean rhoncus gravida nisl vel pretium. Nam ac nisl non ipsum vestibulum vehicula vulputate sagittis magna. Aenean est nisl, convallis volutpat tempor ac, tempus ac ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce rhoncus sodales tempor. Nunc pretium tortor felis, eget cursus magna accumsan a.</p>
              <p>Etiam eu molestie eros, commodo hendrerit sapien. Maecenas tempus leo ac nisi iaculis porta. Sed sapien tortor, aliquet a velit ut, lacinia molestie velit. Maecenas ornare consequat massa ullamcorper dapibus. Aliquam auctor, sapien sit amet accumsan facilisis, enim enim aliquet arcu, tincidunt pellentesque justo turpis id neque. Duis eleifend nunc sit amet mi dapibus ornare. Suspendisse vel libero sem.</p>
            </div>
          </div>
        </div>
      </section>
    
      <!-- Footer default-->
    <!-- Footer start-->
     <?php $this->load->view('frontend/footer')?>
     <!-- Footer end-->
    </div>
    <!-- Preloader-->
    <div class="preloader">
      <div class="preloader-inner">
        <div class="preloader-dot"></div>
        <div class="preloader-dot"></div>
        <div class="preloader-dot"></div>
        <div class="preloader-dot"></div>
      </div>
    </div>
  </body>
</html>