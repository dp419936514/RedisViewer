<%@page contentType="text/html" pageEncoding="UTF-8" autoFlush="true" %>
<!DOCTYPE html>
<!--[if IE 9 ]>
<html class="ie9"><![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BenQ Redis Viewer</title>

    <!-- Vendor CSS -->
    <link href="assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="assets/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
    <link href="assets/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css"
          rel="stylesheet">
    <link href="assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"
          rel="stylesheet">

    <!-- CSS -->
    <link href="assets/css/app.css" rel="stylesheet">

    <!-- Chinese Font CSS -->
    <link href="assets/css/text-chinese.css" rel="stylesheet">

</head>
<body>
<header id="header-2" class="clearfix " data-current-skin="blue">
    <ul class="header-inner clearfix">
        <li id="menu-trigger" data-trigger=".ha-menu" class="visible-xs">
            <div class="line-wrap">
                <div class="line top"></div>
                <div class="line center"></div>
                <div class="line bottom"></div>
            </div>
        </li>
        <li class="logo hidden-xs">
            <a href="index">BenQ Redis Viewer</a>
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
    <!-- Top Search Content -->
    <div class="search" >
        <div class="fg-line">
            <input type="text" class="form-control" placeholder="Search...">
        </div>
    </div>

    <nav class="ha-menu">
        <ul>
            <li class="active dropdown text-chinese"><a href="index">首页</a></li>
            <li class="waves-effect text-chinese"><a href="match_queue">匹配队列</a></li>
            <li class="waves-effect text-chinese"><a href="gaming">游戏中</a></li>
            <li class="dropdown">
            </li>
        </ul>
    </nav>


</header>

<section id="main" data-layout="layout-1">
    <section id="content">
        <div class="container">
            <div class="block-header">
            </div>

            <div class="card">
                <div class="card-header">

                </div>

                <div class="card-body">
                    <div style="min-height: 400px; min-width: 500px" id="match_queue_history"></div>
                </div>
            </div>


        </div>
    </section>
</section>

<footer id="footer">
    Copyright &copy; 2016 BenQ Corp.,Ltd.

    <ul class="f-menu">
        <li><a href="">Home</a></li>
        <li><a href="">Dashboard</a></li>
        <li><a href="">Reports</a></li>
        <li><a href="">Support</a></li>
        <li><a href="">Contact</a></li>
    </ul>
</footer>

<!-- Page Loader -->
<div class="page-loader">
    <div class="preloader pls-blue">
        <svg class="pl-circular" viewBox="25 25 50 50">
            <circle class="plc-path" cx="50" cy="50" r="20"/>
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


<script type="text/javascript" src="assets/js/youziku.api.min.js"></script>
<script src="assets/js/font-chinese.js"></script>

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
<script src="assets/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
<script src="assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/vendors/bower_components/Waves/dist/waves.min.js"></script>
<script src="assets/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
<script src="assets/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>

<!-- Placeholder for IE9 -->
<!--[if IE 9 ]>
<script src="assets/vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
<![endif]-->

<%--Echarts--%>
<script src="assets/js/echarts/echarts.js"></script>
<!-- 引入 vintage 主题 -->
<script src="assets/js/echarts/macarons.js"></script>
<script src="assets/js/echarts/match_queue_history_chart.js"></script>

<script src="assets/js/flot-charts/curved-line-chart.js"></script>
<script src="assets/js/flot-charts/line-chart.js"></script>
<script src="assets/js/charts.js"></script>

<script src="assets/js/charts.js"></script>
<script src="assets/js/functions.js"></script>
<script src="assets/js/demo.js"></script>


</body>
</html>
