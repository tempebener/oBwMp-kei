

<section class="section breadcrumb-section">
        <div class="container">
          <!-- Breadcrumb-->
          <div class="breadcrumb">
            <div class="breadcrumb-inner">
              <div class="breadcrumb-item"><a class="breadcrumb-link" href="index.html">Home</a></div>
              <div class="breadcrumb-item"><span class="breadcrumb-text breadcrumb-active">Contact us</span></div>
            </div>
          </div>
        </div>
      </section>
      <!-- Contact us-->
      <section class="section-md bg-transparent">
        <div class="container">
          <div class="text-block text-block-1 text-center">
            <h5 class="text-primary">Get in touch</h5>
            <h2>Contact us</h2>
          </div>
          <div class="row row-30">
            <div class="col-md-8">
              <form class="rd-form rd-mailform" data-form-output="contact-form" data-form-type="contact" method="post" action="components/rd-mailform/rd-mailform.php">
                <div class="row row-20">
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="name" placeholder="Name*" data-constraints="@Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="email" name="email" placeholder="E-mail*" data-constraints="@Email @Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="phone" placeholder="Phone*" data-constraints="@Numeric @Required">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" name="subject" placeholder="Subject">
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                      <textarea class="form-control" name="textarea" placeholder="Message"></textarea>
                    </div>
                  </div>
                </div>
                <div class="rd-form-btn text-left">
                  <button class="btn btn-primary" type="submit">Send message</button>
                </div>
              </form>
              <div class="form-output snackbar snackbar-primary" id="contact-form"></div>
            </div>
            <div class="col-md-4">
              <h5 class="text-primary">Before contacting us</h5>
              <p>Ultrices varius tellus viverra egestas ultrices sed turpis dictum eget. Vulputate ipsum sit et mi, id feugiat. Tincidunt dictum vitae metus leo.</p>
              <h5 class="text-primary">Contact information</h5>
              <ul class="list list-icons">
                <li class="list-item">
                  <div class="list-icon custom-font-pin"></div><a class="link link-inherit" href="#">Brooklyn, NY 10036, 16-2 <br>United States</a>
                </li>
                <li class="list-item">
                  <div class="list-icon custom-font-email"></div><a class="link link-inherit" href="mailto:#">info@demolink.org</a>
                </li>
                <li class="list-item">
                  <div class="list-icon custom-font-phone"></div><span><span>Call Us: </span><a class="link link-inherit" href="tel:#">1-800-123-1234</a></span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>