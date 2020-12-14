<!DOCTYPE html>
<html lang="en" class="no-js">

  @include('partials.head')

  <body>
    <!-- Animated Background -->
    {{-- <div class="lm-animated-bg" style="background-image: url(img/main_bg.png);"></div> --}}
    <!-- /Animated Background -->

    <!-- Loading animation -->
    <div class="preloader">
      <div class="preloader-animation">
        <div class="preloader-spinner">
        </div>
      </div>
    </div> 
    <!-- /Loading animation -->

    <div class="page">
      <div class="page-content">

          <header id="site_header" class="header mobile-menu-hide">
            <div class="header-content">
              <div class="header-photo">
                <img src="{{ Voyager::image(setting('site.image')) }}" alt="Davit Gakhokia">
              </div>
              <div class="header-titles">
                <h2>{{setting('about.name')}} {{setting('about.surname')}}</h2>
                <h4>{{setting('about.profession')}}</h4>
              </div>
            </div>

            <ul class="main-menu">
              <li>
                <a href="#home" class="nav-anim">
                  <span class="menu-icon lnr lnr-home"></span>
                  <span class="link-text">Home</span>
                </a>
              </li>
              <li>
                <a href="#about-me" class="nav-anim">
                  <span class="menu-icon lnr lnr-user"></span>
                  <span class="link-text">About Me</span>
                </a>
              </li>
              <li>
                <a href="#resume" class="nav-anim">
                  <span class="menu-icon lnr lnr-graduation-hat"></span>
                  <span class="link-text">Resume</span>
                </a>
              </li>
              <li class="active">
                <a href="#portfolio" class="nav-anim">
                  <span class="menu-icon lnr lnr-briefcase"></span>
                  <span class="link-text">Portfolio</span>
                </a>
              </li>
              <li>
                <a href="#contact" class="nav-anim">
                  <span class="menu-icon lnr lnr-envelope"></span>
                  <span class="link-text">Contact</span>
                </a>
              </li>
            </ul>

            <div class="social-links">
              <ul>
                <li><a href="{{ setting('contact.linkdin') }}" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                <li><a href="{{setting('contact.facebook')}}" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="{{setting('contact.behance')}}" target="_blank"><i class="fab fa-behance"></i></a></li>
                <li><a href="{{setting('contact.github')}}" target="_blank"><i class="fab fa-github"></i></a></li>
              </ul>
            </div>

            <div class="header-buttons">
              <a href="{{ setting('about.cv_url') }}" target="_blank" class="btn btn-primary">Download CV
              </a>
            </div>

            <div class="copyrights">©  {{ date('Y') }} All rights reserved.</div>
          </header>

          <!-- Mobile Navigation -->
          <div class="menu-toggle">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <!-- End Mobile Navigation -->

          <!-- Arrows Nav -->
          <div class="lmpixels-arrows-nav">
            <div class="lmpixels-arrow-right"><i class="lnr lnr-chevron-right"></i></div>
            <div class="lmpixels-arrow-left"><i class="lnr lnr-chevron-left"></i></div>
          </div>
          <!-- End Arrows Nav -->

          <div class="content-area">
            <div class="animated-sections">
              <!-- Home Subpage -->
              <section data-id="home" class="animated-section start-page">
                <div class="section-content vcentered">

                    <div class="row">
                      <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="title-block">
                          <h2>{{setting('site.title')}}</h2>
                          <div class="owl-carousel text-rotation">                                    
                            <div class="item">
                              <div class="sp-subtitle">Web Designer</div>
                            </div>
                            
                            <div class="item">
                              <div class="sp-subtitle">Full Stack Developer</div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                </div>
              </section>
              <!-- End of Home Subpage -->

              <!-- About Me Subpage -->
              <section data-id="about-me" class="animated-section">
                <div class="page-title">
                  <h2>About <span>Me</span></h2>
                </div>

                <div class="section-content">
                  <!-- Personal Information -->
                  <div class="row">
                    <div class="col-xs-12 col-sm-7">
                      <p>{{setting('about.about_text')}}</p>
                    </div>

                    <div class="col-xs-12 col-sm-5">
                      <div class="info-list">
                        <ul>
                          <li>
                            <span class="title">Birthday</span>
                            <span class="value">{{ setting('about.birthdate') }}</span>
                          </li>

                          <li>
                            <span class="title">Residence</span>
                            <span class="value">{{ setting('about.nationality') }}</span>
                          </li>

                          <li>
                            <span class="title">Address</span>
                            <span class="value">{{ setting('about.address') }}</span>
                          </li>

                          <li>
                            <span class="title">e-mail</span>
                            <span class="value"><a href="mailto:{{setting('contact.email')}}">{{setting('contact.email')}}</a></span>
                          </li>

                          <li>
                            <span class="title">Phone</span>
                            <span class="value"><a href="tel:{{setting('contact.phone')}}"> {{setting('contact.phone')}}</a></span>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <!-- End of Personal Information -->

                  <div class="white-space-50"></div>

                  <!-- Services -->
                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="block-title">
                        <h3>What <span>I Do</span></h3>
                      </div>
                    </div>
                  </div>

                  <div class="row">

                    <div class="col-xs-12 col-sm-4">
                      <div class="col-inner">
                        <div class="info-list-w-icon">
                          <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-laptop-phone"></i>
                            </div>
                            <div class="ci-text">
                              <h4>Web Design</h4>
                              <p></p>
                            </div>
                          </div>
                          <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-store"></i>
                            </div><div class="ci-text">
                              <h4>Ecommerce</h4>
                              <p></p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-xs-12 col-sm-4">
                      <div class="col-inner">
                        <div class="info-list-w-icon">
                          <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-code"></i>
                            </div>
                            <div class="ci-text">
                              <h4>Coding</h4>
                              <p></p>
                            </div>
                          </div>
                          <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-cog"></i>
                            </div><div class="ci-text">
                              <h4>CMS</h4>
                              <p></p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-xs-12 col-sm-4">
                      <div class="col-inner">
                        <div class="info-list-w-icon">
                          <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-database"></i>
                            </div>
                            <div class="ci-text">
                              <h4>Database</h4>
                              <p></p>
                            </div>
                          </div>
                          <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-flag"></i>
                            </div><div class="ci-text">
                              <h4>Copywriting</h4>
                              <p></p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div> 

                  </div>
                  <!-- End of Services -->

                  <div class="white-space-30"></div>


                  <!-- Clients -->
                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="block-title">
                        <h3>Cilents</h3>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="clients owl-carousel">
                        @foreach ($Clients as $Client)
                        
                        <div class="client-block">
                          <a href="{{ $Client->link }}" target="_blank" title="{{ $Client->name }}">
                            <img src="{{ URL::to ('storage/'. $Client->image) }}" alt="Logo">
                          </a>
                        </div>

                        @endforeach  
  
                      </div>
                    </div>
                  </div>
                  <!-- End of Clients -->

                  <div class="white-space-50"></div>


                  <!-- Fun Facts -->
                  <div class="row">
                    <div class="col-xs-12 col-sm-12">

                      <div class="block-title">
                        <h3>Fun <span>Facts</span></h3>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-xs-12 col-sm-4">
                      <div class="fun-fact gray-default">
                        <i class="lnr lnr-heart"></i>
                        <h4>Happy Clients</h4>
                        <span class="fun-fact-block-value">40</span>
                        <span class="fun-fact-block-text"></span>
                      </div>
                    </div>

                    <div class="col-xs-12 col-sm-4">
                      <div class="fun-fact gray-default">
                        <i class="lnr lnr-clock"></i>
                        <h4>Experience Year</h4>
                        <span class="fun-fact-block-value">4</span>
                        <span class="fun-fact-block-text"></span>
                      </div>
                    </div>

                    <div class="col-xs-12 col-sm-4 ">
                      <div class="fun-fact gray-default">
                        <i class="lnr lnr-star"></i>
                        <h4>completed projects</h4>
                        <span class="fun-fact-block-value">50</span>
                        <span class="fun-fact-block-text"></span>
                      </div>
                    </div>
                  </div>
                  <!-- End of Fun Facts -->

                </div>
              </section>
              <!-- End of About Me Subpage -->

              <!-- Resume Subpage -->
              <section data-id="resume" class="animated-section">
                <div class="page-title">
                  <h2>Resume</h2>
                </div>

                <div class="section-content">

                  <div class="row">
                    <div class="col-xs-12 col-sm-7">

                      <div class="block-title">
                        <h3>Education</h3>
                      </div>
                      
                      <div class="timeline timeline-second-style clearfix">
                        @foreach ($Education as $Education)
                        <div class="timeline-item clearfix">
                          <div class="left-part">
                            <h5 class="item-period">{{ $Education->start}} {{ $Education->end}}</h5>
                            <span class="item-company">{{ $Education->name}}</span>
                          </div>
                          <div class="divider"></div>
                          <div class="right-part">
                            <h4 class="item-title">{{ $Education->title}}</h4>
                            <p>{{ $Education->description}}</p>
                            <p><b> {{ $Education->faculty}}</b></p>
                            <h5>{{ $Education->rank}}</h5>                            
                          </div>
                        </div>
                        @endforeach
                      </div>

                      <div class="white-space-50"></div>

                      <div class="block-title">
                        <h3>Experience</h3>
                      </div>

                      <div class="timeline timeline-second-style clearfix">
                        @foreach ($Experiences as $Experience)
                        <div class="timeline-item clearfix">
                          <div class="left-part">
                            <h5 class="item-period">{{ $Experience->start }}  {{ $Experience->end }}</h5>
                            <span class="item-company">{{ $Experience->company }}</span>
                          </div>
                          <div class="divider"></div>
                          <div class="right-part">
                            <h4 class="item-title">{{ $Experience->jobtitle }} </h4>
                            <p> {{ $Experience->description }}</p>
                          </div>
                        </div>
                        @endforeach
                      </div>

                    </div>

                    <!-- Skills & Certificates -->
                    <div class="col-xs-12 col-sm-5">
                      <!-- Design Skills -->
                      <div class="block-title">
                        <h3>Design <span>Skills</span></h3>
                      </div>

                      <div class="skills-info skills-second-style">
                        <!-- Skills -->
                        @foreach ($Skills as $Skill)
                        <div class="skill clearfix">
                          <h4>{{ $Skill->name }}</h4>
                          <div class="skill-value">{{ $Skill->show_percent }} %</div>
                        </div>
                        <div class="skill-container skill-6">
                          <div class="skill-percentage"></div>
                        </div>
                        @endforeach
                        <!-- End of Skills -->
                      </div>
                      <!-- End of Design Skills -->

                      <div class="white-space-10"></div>

                      <!-- Knowledges -->
                      <div class="block-title">
                        <h3>Knowledges</h3>
                      </div>

                      <ul class="knowledges">
                        <li>Marketing</li>
                        <li>Print</li>
                        <li>Digital Design</li>
                        <li>Social Media</li>
                        <li>Time Management</li>
                        <li>Communication</li>
                        <li>Problem-Solving</li>
                        <li>Social Networking</li>
                        <li>Flexibility</li>
                      </ul>
                      <!-- End of Knowledges -->
                    </div>
                    <!-- End of Skills & Certificates -->
                  </div>

                  <div class="white-space-50"></div>

                  <!-- Certificates -->
                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="block-title">
                        <h3>Certificates</h3>
                      </div>
                    </div>
                  </div>
                  
                  <div class="row">
                    <!-- Certificate 1 -->
                    <div class="col-xs-12 col-sm-6">
                      <div class="certificate-item clearfix">
                        <div class="certi-logo">
                          <img src="img/udemy-logo.png" alt="logo">
                        </div>
                        
                        <div class="certi-content">
                          <div class="certi-title">
                            <h4>Windows Server 2016</h4>
                          </div>
                          <div class="certi-id">
                            <span>Udemy Online Course</span>
                          </div>
                          <div class="certi-date">
                            <span>April 2018</span>
                          </div>
                          <div class="certi-company">
                            <span></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- End of Certificate 1 -->

                    <!-- Certificate 2 -->
                    <div class="col-xs-12 col-sm-6">
                      <div class="certificate-item clearfix">
                        <div class="certi-logo">
                          <img src="img/udemy-logo.png" alt="logo">
                        </div>
                        
                        <div class="certi-content">
                          <div class="certi-title">
                            <h4>Web Developer Course</h4>
                          </div>
                          <div class="certi-id">
                            <span>Udemy</span>
                          </div>
                          <div class="certi-date">
                            <span>June 2019</span>
                          </div>
                          <div class="certi-company">
                            <span></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- End of Certificate 2 -->

                  </div>
                  <!-- End of Certificates -->
                </div>
              </section>
              <!-- End of Resume Subpage -->

              <!-- Portfolio Subpage -->
              <section data-id="portfolio" class="animated-section">
                <div class="page-title">
                  <h2>Portfolio</h2>
                </div>

                <div class="section-content">

                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <!-- Portfolio Content -->
                      <div class="portfolio-content">

                        <ul class="portfolio-filters">
                          <li class="active">
                            <a class="filter btn btn-sm btn-link" data-group="category_all">All</a>
                          </li>
                          <li>
                            <a class="filter btn btn-sm btn-link" data-group="Web">Web Sites</a>
                          </li>
                          <li>
                            <a class="filter btn btn-sm btn-link" data-group="poster">Posters</a>
                          </li>
                          <li>
                            <a class="filter btn btn-sm btn-link" data-group="logo">Logos</a>
                          </li> 
                        </ul>

                        <!-- Portfolio Grid -->
                        <div class="portfolio-grid three-columns">
                          
                          @foreach ($Works as $Work)
                          <figure class="item standard" data-groups='["category_all", "{{ $Work->project }}"]'>
                            <div class="portfolio-item-img">
                              <img src="{{ URL::to('storage/'.$Work->image) }}" alt="Media Project 1" title="" />
                              {{-- <a href="www.{{ $Work->project_url }}"  target="_blank"></a> --}}
                            </div>
                            <a href="{{ $Work->project_url }}" target="_blank"><i class="far fa-file-alt"></i></a>
                            <h4 class="name">{{ $Work ->name }}</h4>
                          </figure>
                          @endforeach
                           
                        </div>
                      
                        
                      </div>
                      
                      <!-- End of Portfolio Content -->
                    </div>
                  </div>
                </div>
              </section>
              <!-- End of Portfolio Subpage -->



              <!-- Contact Subpage -->
              <section data-id="contact" class="animated-section">
                <div class="page-title">
                  <h2>Contact</h2>
                </div>

                <div class="section-content">

                  <div class="row">
                    <!-- Contact Info -->
                    <div class="col-xs-12 col-sm-4">
                      <div class="lm-info-block gray-default">
                        <a href="">
                          <i class="lnr lnr-map-marker"></i>
                        </a>
                        <h4>{{setting('about.address')}}</h4>
                        <span class="lm-info-block-value"></span>
                        <span class="lm-info-block-text"></span>
                      </div>

                      <div class="lm-info-block gray-default">
                        <a href="tel:{{ setting('contact.phone') }}">
                          <i class="lnr lnr-phone-handset"></i>
                        </a>
                        <h4>{{ setting('contact.phone') }}</h4>
                        <span class="lm-info-block-value"></span>
                        <span class="lm-info-block-text"></span>
                      </div>

                      <div class="lm-info-block gray-default">
                        <a href="mailto:{{ setting('contact.email') }}">
                          <i class="lnr lnr-envelope"></i>
                        </a>
                        <h4>{{ setting('contact.email') }}</h4>
                        <span class="lm-info-block-value"></span>
                        <span class="lm-info-block-text"></span>
                      </div>

                      <div class="lm-info-block gray-default">
                      <a href="tel:{{ setting('contact.whatsapp') }}">
                        <i class="fab fa-whatsapp"></i>
                      </a>
                      <a href="viber://pa?chatURI={{ setting('contact.viber') }}">
                        <i class="fab fa-viber"></i>
                      </a>

                        <h4>{{ setting('contact.phone') }}</h4>
                        <span class="lm-info-block-value"></span>
                        <span class="lm-info-block-text"></span>
                      </div>


                    </div>
                    <!-- End of Contact Info -->

                    <!-- Contact Form -->
                    <div class="col-xs-12 col-sm-8">
                      
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1491.251887322697!2d41.62496567091526!3d41.62324109834173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406785d18133b15f%3A0xc926f95e5de4d228!2z4YOg4YOU4YOk4YOQ4YOY4YOgIOKAoiBSZXBhaXI!5e0!3m2!1sen!2sge!4v1603743970834!5m2!1sen!2sge" width="100%"  frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                      

                      <div class="block-title">
                        <h3>How Can I <span>Help You?</span></h3>
                      </div>

                      <form id="contact_form" class="contact-form" action="#" method="post">

                        <div class="messages"></div>

                        <div class="controls two-columns">
                          <div class="fields clearfix">
                            <div class="left-column">
                              <div class="form-group form-group-with-icon">
                                <input id="form_name" type="text" name="name" class="form-control" placeholder="" required="required" data-error="Name is required.">
                                <label>Full Name</label>
                                <div class="form-control-border"></div>
                                <div class="help-block with-errors"></div>
                              </div>

                              <div class="form-group form-group-with-icon">
                                <input id="form_email" type="email" name="email" class="form-control" placeholder="" required="required" data-error="Valid email is required.">
                                <label>Email Address</label>
                                <div class="form-control-border"></div>
                                <div class="help-block with-errors"></div>
                              </div>

                              <div class="form-group form-group-with-icon">
                                <input id="form_subject" type="text" name="subject" class="form-control" placeholder="" required="required" data-error="Subject is required.">
                                <label>Subject</label>
                                <div class="form-control-border"></div>
                                <div class="help-block with-errors"></div>
                              </div>
                            </div>
                            <div class="right-column">
                              <div class="form-group form-group-with-icon">
                                <textarea id="form_message" name="message" class="form-control" placeholder="" rows="7" required="required" data-error="Please, leave me a message."></textarea>
                                <label>Message</label>
                                <div class="form-control-border"></div>
                                <div class="help-block with-errors"></div>
                              </div>
                            </div>
                          </div>

                          <div class="g-recaptcha" data-sitekey="6LdqmCAUAAAAAMMNEZvn6g4W5e0or2sZmAVpxVqI" data-theme="dark"></div>
      
                          <input type="submit" class="button btn-send" value="Send message">
                        </div>
                      </form>
                    </div>
                    <!-- End of Contact Form -->
                  </div>

                </div>
              </section>
              <!-- End of Contact Subpage -->
            </div>
          </div>

      </div>
    </div>

    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
    fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

    <!-- Your share button code -->
    <div class="fb-share-button" 
    data-href="https://gakhokia.dev" 
    data-layout="button_count">
    </div>
    <!--  include Js  -->
    @include('partials.js')
    <!--//  include Js  -->

  </body>

</html>
