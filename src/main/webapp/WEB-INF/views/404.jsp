<%--
  Created by IntelliJ IDEA.
  User: Derek.P.Dai
  Date: 2016/11/14
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--[if IE 9 ]>
<html class="ie9"><![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BenQ Redis Viewer</title>

    <!-- Vendor CSS -->
    <link href="assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css"
          rel="stylesheet">
    <link href="assets/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css"
          rel="stylesheet">
    <link href="assets/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css"
          rel="stylesheet">
    <link href="assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"
          rel="stylesheet">

    <!-- CSS -->
    <link href="assets/css/app.min.1.css" rel="stylesheet">
    <link href="assets/css/app.min.2.css" rel="stylesheet">

    <!-- Chinese Font CSS -->
    <link href="assets/css/text-chinese.css" rel="stylesheet">

</head>
<body>
<header id="header" class="clearfix" data-current-skin="blue">
    <ul class="header-inner">
        <li class="logo hidden-xs">
            <a href="index">BenQ B5 Redis Viewer</a>
        </li>

        <li class="pull-right">
            <ul class="top-menu">
                <li id="top-search">
                    <a href=""><i class="tm-icon zmdi zmdi-search"></i></a>
                </li>

                <li class="dropdown">
                    <a data-toggle="dropdown" href=""><i
                            class="tm-icon zmdi zmdi-more-vert"></i></a>
                    <ul class="dropdown-menu dm-icon pull-right">
                        <li class="skin-switch hidden-xs">
                            <span class="ss-skin bgm-lightblue" data-skin="lightblue"></span>
                            <span class="ss-skin bgm-bluegray" data-skin="bluegray"></span>
                            <span class="ss-skin bgm-cyan" data-skin="cyan"></span>
                            <span class="ss-skin bgm-teal" data-skin="teal"></span>
                            <span class="ss-skin bgm-orange" data-skin="orange"></span>
                            <span class="ss-skin bgm-blue" data-skin="blue"></span>
                        </li>
                        <li class="divider hidden-xs"></li>
                        <li class="hidden-xs">
                            <a data-action="fullscreen" href=""><i class="zmdi zmdi-fullscreen"></i>
                                Toggle Fullscreen</a>
                        </li>
                        <li>
                            <a data-action="clear-localstorage" href=""><i
                                    class="zmdi zmdi-delete"></i> Clear Local Storage</a>
                        </li>
                        <li>
                            <a href="#"><i class="zmdi zmdi-settings"></i> Other Settings</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>

</header>

<section id="main" data-layout="layout-1">
    <section id="content">
        <div class="container">
            <div style="margin: 10%">
                <div class=""
                     style="font-size: 150px; text-align: center; margin: 10%; font-family: 'Arial Rounded MT Bold'">
                    404
                </div>
                <div class="text-chinese" style="font-size: 25px; text-align: center; ">
                    页面删除或未找到, 5s 后跳转到首页
                </div>
            </div>
        </div>
    </section>

    <footer id="footer">
        Copyright &copy; 2016 BenQ Corp.,Ltd.

        <ul class="f-menu">
            <li><a href="">Home</a></li>
            <li><a href="">Reports</a></li>
            <li><a href="">Support</a></li>
            <li><a href="">Contact</a></li>
        </ul>
    </footer>

    <!-- Page Loader -->
    <div class="page-loader">
        <div class="preloader pls-blue">
            <svg class="pl-circular" viewBox="25 25 50 50">
                <circle class="plc-path" cx="50" cy="50" r="20"></circle>
            </svg>
            <p>Please wait...</p>
        </div>
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

    <script src="assets/vendors/bower_components/flot/jquery.flot.js"></script>
    <script src="assets/vendors/bower_components/flot/jquery.flot.resize.js"></script>
    <script src="assets/vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
    <script src="assets/vendors/sparklines/jquery.sparkline.min.js"></script>
    <script src="assets/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

    <script src="assets/vendors/bower_components/moment/min/moment.min.js"></script>
    <script src="assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js "></script>
    <script src="assets/vendors/bower_components/Waves/dist/waves.min.js"></script>
    <script src="assets/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
    <script src="assets/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
    <script src="assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

    <!-- Placeholder for IE9 -->
    <!--[if IE 9 ]>
    <script src="assets/vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
    <![endif]-->

    <script type="text/javascript" src="http://cdn.webfont.youziku.com/wwwroot/js/wf/youziku.api.min.js"></script>
    <script src="assets/js/font-chinese.js"></script>

    <script src="assets/js/functions.js"></script>
    <script>
        $(window).load(function () {
            //Welcome Message (not for login page)
            function notify(message, type) {
                $.growl({
                    message: message
                }, {
                    type: type,
                    allow_dismiss: false,
                    label: 'Cancel',
                    className: 'btn-xs btn-inverse',
                    placement: {
                        from: 'top',
                        align: 'right'
                    },
                    delay: 2500,
                    animate: {
                        enter: 'animated fadeIn',
                        exit: 'animated fadeOut'
                    },
                    offset: {
                        x: 20,
                        y: 85
                    }
                });
            }

            if (!$('.login-content')[0]) {
                notify('We don\'t find the page ! ', 'reverse');
            }

            setTimeout(function () {
                $(window.location).attr('href', 'index');
            }, 5000)
        });

    </script>


</section>
</body>
</html>
