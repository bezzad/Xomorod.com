<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Xomorod.News._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Xomorod News about technology, softwares, business, android</title>

    <!-- metas -->
    <meta charset="utf-8">
    <meta name="keywords" content="xomorod, zoomorod, world news, sports news, business news, finance news, tech news, learning news" />
    <meta name="description" content="Xomorod News in topic world, sports, finance, technology, software, learning, business">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">

    <link rel="canonical" href="http://news.xomorod.com/" />
    <!--/ metas -->

    <!-- styles -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/1.1.0/css/flag-icon.min.css" />
    <link href="css/weather.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/socialsider.css" media="screen" />
    <!--/ styles -->

    <!-- scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.min.js"></script>
    <!--/ scripts -->
</head>
<body ng-app="xomorodApp">
    <nav class="social">
        <ul>
            <li><a target="_blank" href="http://telegram.me/xomorod">Telegram <i class="fa fa-paper-plane"></i></a></li>
            <li><a target="_blank" href="https://twitter.com/xomorod">Twitter <i class="fa fa-twitter"></i></a></li>
            <li><a target="_blank" href="https://www.facebook.com/Xomorod/">Facebook <i class="fa fa-facebook"></i></a></li>
            <li><a target="_blank" href="https://instagram.com/xomorod">Instagram <i class="fa fa-instagram"></i></a></li>
            <li><a target="_blank" href="https://plus.google.com/112166949009339498430">Google + <i class="fa fa-google-plus"></i></a></li>
            <li><a target="_blank" href="https://ir.linkedin.com/in/xomorod-corporation-155017115">LinkedIn <i class="fa fa-linkedin"></i></a></li>
            <li><a target="_blank" href="http://stackoverflow.com/jobs/companies/Xomorod">Stack Overflow <i class="fa fa-stack-overflow"></i></a></li>
            <li><a target="_blank" href="https://github.com/Xomorod">GitHub <i class="fa fa-github"></i></a></li>
            <li><a target="_blank" href="#">RSS <i class="fa fa-rss"></i></a></li>
        </ul>
    </nav>
    <!-- page -->
    <div class="page page-boxed">
        <!-- page header -->
        <header class="page-header">
            <!-- page header top -->
            <div class="page-header-top">

                <div class="grid-cont">
                    <div class="grid-row">
                        <div class="grid-col grid-col-2">
                            <!-- slogan -->
                            <a href="#" class="slogan"><span>News</span></a>
                            <!--/ slogan -->
                        </div>

                        <div class="grid-col grid-col-10">
                            <!-- secondary nav -->
                            <nav class="secondary-nav">
                                <ul>
                                    <li>
                                        <a href="#" class="active">home</a>
                                    </li>
                                    <li>
                                        <a href="/en">English&nbsp;&nbsp;<span class="flag-icon flag-icon-gb"></span></a>
                                    </li>
                                    <li>
                                        <a href="/fa">فارسی&nbsp;&nbsp;<span class="flag-icon flag-icon-ir"></span></a>
                                    </li>
                                    <li>
                                        <a href="http://Xomorod.com" class="alt">Xomorod</a>
                                    </li>
                                </ul>
                            </nav>
                            <!--/ secondary nav -->
                        </div>
                    </div>
                </div>

            </div>
            <!-- page header top -->
            <!-- page header middle -->
            <div class="page-header-middle">

                <div class="grid-cont">
                    <div class="grid-row">
                        <div class="grid-col grid-col-2">
                            <!-- logo -->
                            <a href="#" class="logo">
                                <img src="images/logo.svg" width="68" height="61" alt="">
                            </a>
                            <!--/ logo -->
                        </div>

                        <div class="grid-col grid-col-7">
                            <!-- main nav -->
                            <nav id="main-nav" class="main-nav">
                                <a href="#" class="switcher"><i class="fa fa-bars"></i></a>
                                <ul>
                                    <li class="has-dropdown">
                                        <a href="#">world</a>
                                        <div class="dropdown dropdown-large">
                                            <div class="grid-row">
                                                <div class="grid-col grid-col-3">
                                                    <ul class="subnav">
                                                        <li class="icon"><i class="fa fa-globe"></i></li>
                                                        <li><a href="#">Asia</a></li>
                                                        <li><a href="#">America</a></li>
                                                        <li><a href="#">Africa</a></li>
                                                        <li><a href="#">Europe</a></li>
                                                        <li><a href="#">Latin America</a></li>
                                                    </ul>
                                                </div>
                                                <div class="grid-col grid-col-9">
                                                    <div class="latest">
                                                        <p>
                                                            <a href="#" class="fa fa-chevron-right next"></a>
                                                            <a href="#" class="fa fa-chevron-left prev"></a>
                                                            Latest posts in category
                                                       
                                                        </p>
                                                        <div class="carousel">
                                                            <div class="item">
                                                                <a href="#" style="background-image: url(images/MainPage/finance.jpg)">
                                                                    <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                                    <div><i class="fa fa-comment"></i>124 Comments</div>
                                                                </a>
                                                            </div>
                                                            <div class="item">
                                                                <a href="#" style="background-image: url(images/MainPage/finance.jpg)">
                                                                    <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                                    <div><i class="fa fa-comment"></i>124 Comments</div>
                                                                </a>
                                                            </div>
                                                            <div class="item">
                                                                <a href="#" style="background-image: url(images/MainPage/finance.jpg)">
                                                                    <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                                    <div><i class="fa fa-comment"></i>124 Comments</div>
                                                                </a>
                                                            </div>
                                                            <div class="item">
                                                                <a href="#" style="background-image: url(images/MainPage/finance.jpg)">
                                                                    <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                                    <div><i class="fa fa-comment"></i>124 Comments</div>
                                                                </a>
                                                            </div>
                                                            <div class="item">
                                                                <a href="#" style="background-image: url(images/MainPage/sport.jpg)">
                                                                    <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                                    <div><i class="fa fa-comment"></i>124 Comments</div>
                                                                </a>
                                                            </div>
                                                            <div class="item">
                                                                <a href="#" style="background-image: url(images/MainPage/finance.jpg)">
                                                                    <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                                    <div><i class="fa fa-comment"></i>124 Comments</div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="has-dropdown has-dropdown-alt">
                                        <a href="#">business</a>
                                        <div class="dropdown dropdown-xlarge">
                                            <div class="latest latest-alt">
                                                <div class="item">
                                                    <a href="#" style="background-image: url(images/MainPage/world.jpg)">
                                                        <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                        <div><i class="fa fa-comment"></i>124 Comments</div>
                                                    </a>
                                                </div>
                                                <!--
                                        -->
                                                <div class="item">
                                                    <a href="#" style="background-image: url(images/MainPage/world.jpg)">
                                                        <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                        <div><i class="fa fa-comment"></i>124 Comments</div>
                                                    </a>
                                                </div>
                                                <!--
                                        -->
                                                <div class="item">
                                                    <a href="#" style="background-image: url(images/MainPage/world.jpg)">
                                                        <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                        <div><i class="fa fa-comment"></i>124 Comments</div>
                                                    </a>
                                                </div>
                                                <!--
                                        -->
                                                <div class="item">
                                                    <a href="#" style="background-image: url(images/MainPage/world.jpg)">
                                                        <h4>Lorem ipsum dolor sit amet seco laopir</h4>
                                                        <div><i class="fa fa-comment"></i>124 Comments</div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="has-dropdown">
                                        <a href="#">pages</a>
                                        <div class="dropdown">
                                            <ul class="subnav">
                                                <li><a href="#">Magazine layout</a></li>
                                                <li><a href="#">Classic Blog layout</a></li>
                                                <li><a href="#">Author page</a></li>
                                                <li><a href="#">404 page</a></li>
                                                <li><a href="#">Contacts</a></li>
                                                <li class="has-dropdown">
                                                    <a href="#"><i class="fa fa-chevron-right"></i>Dropdown</a>
                                                    <div class="dropdown dropdown-left">
                                                        <ul class="subnav">
                                                            <li><a href="#">Item 1</a></li>
                                                            <li><a href="#">Item 2</a></li>
                                                            <li><a href="#">Item 3</a></li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="has-dropdown">
                                        <a href="#">blog</a>
                                        <div class="dropdown">
                                            <ul class="subnav">
                                                <li><a href="#">List (1 col)</a></li>
                                                <li><a href="#">Grid (2 cols)</a></li>
                                                <li><a href="#">Grid (3 cols)</a></li>
                                                <li><a href="#">Grid (4 cols)</a></li>
                                                <li><a href="#">Author page</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="has-dropdown">
                                        <a href="#">posts</a>
                                        <div class="dropdown">
                                            <ul class="subnav">
                                                <li><a href="blog-post.php">Regular</a></li>
                                                <li><a href="blog-post-audio.php">Audio</a></li>
                                                <li><a href="blog-post-gallery.php">Gallery</a></li>
                                                <li><a href="blog-post-vimeo.php">Video (vimeo)</a></li>
                                                <li><a href="blog-post-youtube.php">Video (youtube)</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                            <!--/ main nav -->
                        </div>

                        <div class="grid-col grid-col-3">
                            <!-- Google CSE Search Box Begins -->
                            <div id="gcseh" style="width: 0px; overflow: hidden; height: 0px;">
                                <!-- if you use display:none here, it doesn't work-->
                                <gcse:search></gcse:search>
                            </div>
                            <form id="searchbox_013034816303821010153:3s5wrmrboj4" action="#" class="search">
                                <input value="013034816303821010153:3s5wrmrboj4" name="cx" type="hidden" />
                                <input value="FORID:11" name="cof" type="hidden" />
                                <input id="q" type="text" name="q" placeholder="search" />
                                <button class="btn fa fa-search"></button>
                            </form>
                            <!--/ Google CSE Search Box Begins -->
                        </div>
                    </div>
                </div>

            </div>
            <div></div>
            <!-- page header middle -->
            <!-- page header bottom -->
            <div class="page-header-bottom">

                <div class="grid-cont">
                    <!-- breaking news -->
                    <div class="breaking-news">
                        <div class="grid-row">
                            <div class="grid-col grid-col-2">
                                <p><strong>breaking</strong></p>
                            </div>

                            <div class="grid-col grid-col-10">
                                <p><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</a></p>
                            </div>
                        </div>
                    </div>
                    <!--/ breaking news -->
                </div>

            </div>
            <!-- page header bottom -->
        </header>
        <!--/ page header -->

        <!-- page content -->
        <div ng-include="'pages/main/pageContent.html'"></div>
        <!--/ page content -->

        <!-- page footer -->
        <div ng-include="'pages/main/pageFooter.html'"></div>
        <!--/ page footer -->

        <button type="button" id="scroll-top" class="scroll-top fa fa-chevron-up"></button>
    </div>
    <!--/ page -->

    <!-- scripts -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/jquery.form.min.js"></script>
    <script src="js/ng-inspector.js"></script>
    <script src="js/main.js"></script>
    <script src="https://cdn.rawgit.com/monkeecreate/jquery.simpleWeather/master/jquery.simpleWeather.min.js"></script>
    <script src="js/weather.js"></script>
    <script src="js/google.search.engine.js"></script>
    <!--/ scripts -->
</body>
</html>
