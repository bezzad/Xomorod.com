<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Xomorod.loginPage" %>

<%@ Import Namespace="Xomorod.Core" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Xomorod web site login form" />
    <meta name="keywords" content="xomorod, zoomorod, zomorod, login, form" />
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="<%= CdnHelper.GetCdn("favicon_jpg", 1) %>">
    <title>Login</title>
</head>
<body ng-app="xomorodApp" ng-controller="bodyController">
    
    <!-- Trianglify container -->
    <canvas id="headerCanvas"></canvas>
    <script src="<%= CdnHelper.GetCdn("trianglifyCreator_js", 1) %>"></script>

    <!-- particles.js container -->
    <div id="particles-js"></div>

    <!-- login form container -->
    <div class="container">

        <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">

            <div class="row">
                <div class="iconmelon">
                    <object data="<%= CdnHelper.GetCdn("xomorod_svg", 1) %>" type="image/svg+xml" id="svg-logo"></object>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title text-center">Xomorod</div>
                </div>

                <div class="panel-body">

                    <form name="form" id="form" class="form-horizontal" enctype="multipart/form-data" method="POST">

                        <div class="has-success has-feedback col-sm-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="user" type="text" class="form-control" name="user" value="" placeholder="{{ 'Username' | translate }}">
                            </div>
                            <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                        </div>

                        <div class="has-error has-feedback col-sm-12">
                            <div class="input-group ">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="password" type="password" class="form-control" name="password" placeholder="{{ 'Password' | translate }}">
                            </div>
                            <span class="glyphicon glyphicon-remove  form-control-feedback" aria-hidden="true"></span>
                            <span class="help-inline error" style="margin: 10px; font-size: 1.5em; display: block">Something may have gone wrong</span>
                        </div>

                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-sm-12 controls">
                                <button id="btn-sign-up" href="#" class="btn btn-primary pull-left"><i class="glyphicon glyphicon-user btn-gly"></i>{{ 'Signup' | translate }}</button>
                                <button type="submit" id="btn-submit" href="#" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-log-in btn-gly"></i>{{ 'Login' | translate }}</button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>

</body>

<!-- Bootstrap CSS -->
<link href="<%= CdnHelper.GetCdn("bootstrap_min_css", 1) %>" rel="stylesheet">

<!-- trianglify js and css -->
<link href="<%= CdnHelper.GetCdn("trianglify_css", 1) %>" rel="stylesheet" />
<script src="<%= CdnHelper.GetCdn("trianglify_min_js", 1) %>"></script>

<!-- particles style CSS -->
<link rel="stylesheet" media="screen" href="<%= CdnHelper.GetCdn("particles_style_css", 1) %>">

<!-- login form css -->
<link href="<%= CdnHelper.GetCdn("login_css", 1) %>" rel="stylesheet" />


<!-- scripts -->
<script src="<%= CdnHelper.GetCdn("particles_min_js", 1) %>"></script>
<script src="<%= CdnHelper.GetCdn("particles_app_js", 1) %>"></script>


<!-- Angular.JS -->
<script src="<%= CdnHelper.GetCdn("angular_min_js", 1) %>"></script>

<!-- Angular Cookies -->
<script src="<%= CdnHelper.GetCdn("angular_cookies_min_js", 1) %>"></script>

<!-- Angular Translate -->
<script src="<%= CdnHelper.GetCdn("angular_translate_min_js", 1) %>"></script>

<!-- Angular Translate Url Loader -->
<script src="<%= CdnHelper.GetCdn("angular_translate_loader_url_min_js", 1) %>"></script>

<script src="<%= CdnHelper.GetCdn("translator_js", 1) %>"></script>

<!-- jQuery -->
<script src="<%= CdnHelper.GetCdn("jquery_min_js", 1) %>"></script>

<script src="<%= CdnHelper.GetCdn("loginForm_js", 1) %>"></script>


</html>
