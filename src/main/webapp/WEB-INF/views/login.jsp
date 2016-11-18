<%@page contentType="text/html" pageEncoding="UTF-8" autoFlush="true" %>
<!DOCTYPE html>

<html class="ie9">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BenQ Redis Viewer</title>

    <!-- Vendor CSS -->
    <link href="assets/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css"
          rel="stylesheet">

    <!-- CSS -->
    <link href="assets/css/app.css" rel="stylesheet">
</head>

<body class="login-content">
<!-- Login -->
<div class="lc-block toggled" id="l-login" >

    <form id="login_form" method="post" action="login" >
    <div class="input-group m-b-20">
        <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
        <div class="fg-line">
            <input id="username" name="username" type="text" class="form-control" placeholder="Username">
        </div>
    </div>

    <div class="input-group m-b-20">
        <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
        <div class="fg-line">
            <input id="password" name="password" type="password" class="form-control" placeholder="Password">
        </div>
    </div>

    <div class="checkbox">
        <label>
            <input id="keepSigned" type="checkbox" value="">
            <i class="input-helper"></i>
            Keep me signed in
        </label>
    </div>

    <a class="btn btn-login btn-danger btn-float" type="submit" onclick="login()"> <i
            class="zmdi zmdi-arrow-forward"></i></a>
</form>
</div>

<!-- Older IE warning message -->
<!--[if lt IE 9]>
<div class="ie-warning">
    <h1 class="c-white">Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the
        following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/img/browsers/chrome.png" alt="">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/img/browsers/firefox.png" alt="">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/img/browsers/opera.png" alt="">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/img/browsers/safari.png" alt="">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/img/browsers/ie.png" alt="">
                    <div>IE (New)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->

<!-- Javascript Libraries -->
<script src="assets/vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script src="assets/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="assets/vendors/bower_components/Waves/dist/waves.min.js"></script>

<!-- Placeholder for IE9 -->
<!--[if IE 9 ]>
<script src="assets/vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
<![endif]-->

<script src="assets/js/functions.js"></script>
<script src="assets/js/login.js"></script>
</body>
</html>
