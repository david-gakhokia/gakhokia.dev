<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>@yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/favicon.ico" />
    <meta name="description" content="დავით გახოკია , ვებ დეველოპერი / IT სპეციალიტი">
    <meta name="author" content="Davit gakhokia,დავით გახოკია">
    <meta name="keywords" content="Davit, repair.ge, Gakhokia.online, gakhokia.com, dato,dato gakhokia,dato-gakhokia,gakhokia,დავით, დავით გახოია, გახოკია, დათო,დათო გახოკია,გახოკია, ვებ დიზაინი,ვებ დიზაინი,ვებ გვერდის დიზაინერი">
    <!-- Template Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

    <!-- Template CSS Files -->
    <link type="text/css" media="all" href="css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" media="all" href="css/jquery.animatedheadline.css" rel="stylesheet">
    <link type="text/css" media="all" href="css/font-awesome.min.css" rel="stylesheet">
    <link type="text/css" media="all" href="css/style.css" rel="stylesheet">
    <link type="text/css" media="all" href="css/skins/blue.css" rel="stylesheet">

    <!-- Template JS Files -->
    <script src="js/modernizr.js"></script>

    <!-- Live Style Switcher - demo only -->
	<link rel="alternate stylesheet" type="text/css" title="blue" href="css/skins/blue.css" />
    <link rel="alternate stylesheet" type="text/css" title="goldenrod" href="css/skins/goldrenrod.css" />
    <link rel="alternate stylesheet" type="text/css" title="green" href="css/skins/green.css" />
    <link rel="alternate stylesheet" type="text/css" title="magenta" href="css/skins/magenta.css" />
    <link rel="alternate stylesheet" type="text/css" title="orange" href="css/skins/orange.css" />
    <link rel="alternate stylesheet" type="text/css" title="red" href="css/skins/red.css" />
    <link rel="alternate stylesheet" type="text/css" title="yellow" href="css/skins/yellow.css" />
    <link rel="alternate stylesheet" type="text/css" title="yellowgreen" href="css/skins/yellowgreen.css" />
    <link rel="stylesheet" type="text/css" href="css/styleswitcher.css" />

</head>

<body class="dark bgimage">
    <div class="page">
        <!-- Header Starts -->
    <header id="header">
		<div class="nav-container">
			<div>
				<!-- Mobile Navigation Starts -->
				<ul id="nav" class="navigation">
					<li class="active">
						<div>
							<a id="link-home" href="#home" >
								<i class="fa fa-home"></i><span>Home</span>
							</a>
						</div>
					</li>

					<li>
						<div>
							<a id="link-about" href="#about">
								<i class="fa fa-user"></i><span>About me</span>
							</a>
						</div>
					</li>
					<li>
						<div>
							<a id="link-work" href="#work">
								<i class="fa fa-briefcase"></i><span>my Portfolio</span>
							</a>
						</div>
					</li>
					<li>
						<div>
							<a id="link-contact" href="#contact">
								<i class="fa fa-envelope-open"></i><span>get in touch</span>
							</a>
						</div>
					</li>


				</ul>
				<!-- Mobile Navigation Ends -->
			</div>
		</div>
		<!-- Stretchy Navigation Starts -->
		<div class="cd-stretchy-nav">
			<a class="cd-nav-trigger" href="#0">
				<span aria-hidden="true"></span>
			</a>
			<ul class="stretchy-nav">
				<li class="active"><a href="#home"><span>Home</span></a></li>
				<li><a href="#about"><span>About</span></a></li>
				<li><a href="#works"><span>Portfolio</span></a></li>
				<li><a href="#contact"><span>Contact</span></a></li>
			</ul>
			<span aria-hidden="true" class="stretchy-nav-bg"></span>
		</div>
		<!-- Stretchy Navigation Ends -->
    </header>
    <!-- Header Ends -->
        <!-- Main Content Starts -->
       
            <!-- Start Main Content  -->

                @yield('content')

            <!-- // End Main Content  -->

        <!-- Main Content Ends -->
    </div>
        
    <!-- Preloader Starts -->
    <div class="preloader">
        <div class="preloader-container">
            <h1>Davit</h1>
            <div id="progress-line-container">
                <div class="progress-line"></div>
            </div>
            <h1>Gakhokia</h1>
        </div>
    </div>
    <!-- Preloader Ends -->



</body>

</html>