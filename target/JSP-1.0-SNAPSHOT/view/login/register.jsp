<%@ page import="java.net.URLEncoder" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng Ký</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="<c:url value='/assets/register/css/bootstrap.css'/>" rel="stylesheet" type="text/css" media="all" />
    <link href="<c:url value='/assets/register/css/style.css'/>" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="<c:url value='/assets/register/js/jquery.min.js'/>"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="<c:url value='/assets/register/js/simpleCart.min.js'/>"></script>
    <!-- cart -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="<c:url value='/assets/register/js/bootstrap-3.1.1.min.js'/>"></script>
    <!-- //for bootstrap working -->
    <!-- animation-effect -->
    <link href="<c:url value='/assets/register/css/animate.min.css'/>" rel="stylesheet">
    <script src="<c:url value='/assets/register/js/wow.min.js'/>"></script>
    <script>
        new WOW().init();
    </script>
    <!-- //animation-effect -->
    <link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var x_timer;
            $("#name").keyup(function (e) {
                clearTimeout(x_timer);
                var user_name = $(this).val();
                x_timer = setTimeout(function () {
                    check_username_ajax(user_name);
                }, 1000);
            });



            function check_username_ajax(username) {
                $("#user-result").html('<img src="/assets/register/img/ajax-loader.gif" />');
                $.post('/check', {'username': username}, function (data) {
                    $("#user-result").html(data);
                });
            }


        });

        function trim(str) {
            var str = str.replace(/^\s+|\s+$/g,"");
            return str;
        }
        function ValidCaptcha(a,b){
            var a = trim(a);
            if (a == b){
                return true;
            }
            return false;
        }
        function checkform(theform, b){
            var why = "";
            var a = theform.input.value;
            if(a == ""){
                why += "Security code should not be empty.\n";
            }
            if(a != ""){
                if(!ValidCaptcha(a, b)){
                    why += "Security code did not match.\n";
                }
            }
            if(why != ""){
                alert(why);
                return false;
            }
        }
        var a = Math.ceil(Math.random() * 9);
        var b = Math.ceil(Math.random() * 9);
        var code = a + b;

    </script>
</head>
<body>

<div class="banner-top">
    <div class="container">
        <h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Đăng Ký</h2>
        <h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="/trang-chu">Trang Chủ</a><label>/</label>Đăng Ký</h3>
        <div class="clearfix"> </div>
    </div>
</div>

<div class="login">
    <div class="container">
        <form action="/dang-ki" method="POST">
            <div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
                <div class="login-mail">
                    <input type="text" placeholder="Tên đăng nhập" name="name" id="name" required>

                    <i class="glyphicon glyphicon-user"></i>
                    <span id="user-result"></span>
                </div>
                <div class="login-mail">
                    <input type="text" placeholder="Tên hiển thị" name="display" id="display" required>

                    <i class="glyphicon glyphicon-envelope"></i>
                    <span id="user-result"></span>
                </div>

                <div class="login-mail">
                    <input type="password" placeholder="Mật khẩu" name="pass" id="pass" required>

                    <i class="glyphicon glyphicon-lock"></i>
                    <span></span>
                </div>

                <div class="login-mail">
                    <input type="password" placeholder="Xác Nhận Mật khẩu" name="confirm_pass" id="confirm_pass" required>

                    <script>$('#pass, #confirm_pass').on('keyup', function () {
                        if ($('#pass').val() == $('#confirm_pass').val()) {
                            $('#message').html('Trùng khớp').css('color', 'green');
                        } else
                            $('#message').html('Không trùng khớp').css('color', 'red');
                    });

                    </script>


                    <i class="glyphicon glyphicon-lock"></i>
                    <span></span><span id='message'></span>
                </div>
                <div class="login-mail">
                    <script type="text/javascript">
                        document.write("Kết quả của "+ a + " + " + b +" là ? ");
                    </script>
                    <input type="input" name="input" value="" />



                    <i class="glyphicon glyphicon-question-sign"></i>
                    <span></span>

                </div>

                <div class="login-mail" href="#">
                    <label class="checkbox1"><input type="checkbox" name="checkbox" ><i> </i>Tôi đồng ý với các điều khoản.</label>
                    <fieldset disabled>
                        <div class="form-group">
                            <label for="disabledTextInput">Điều khoản tại website </label>
                            <textarea type="text" id="disabledTextInput" class="form-control" placeholder="">* Mua hàng tại HAS không được đổi trả. &#10;* Bạn hãy chắc địa chỉ bạn gửi là đúng. &#10;* Sau 3 ngày không chuyển khoản, đơn hàng sẽ xóa.&#10;* Phải biết rằng admin cute phô mai que :3</textarea>
                        </div>
                    </fieldset>


                </div>

            </div>
            <div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
                <label class="hvr-sweep-to-top login-sub">
                    <input type="hidden" value="insert" name="command">
                    <input type="submit" value="Đăng Ký">
                </label>

                <p>Bạn đã có tài khoản ?</p>
                <a href="/dang-nhap" class="hvr-sweep-to-top">Đăng Nhập</a>
            </div>
            <div class="clearfix"> </div>
        </form>
    </div>


</div>

<div class="social animated wow fadeInUp" data-wow-delay=".1s">
    <div class="container">
        <div class="col-sm-3 social-ic">
            <a href="#">FACEBOOK</a>
        </div>
        <div class="col-sm-3 social-ic">
            <a href="#">TWITTER</a>
        </div>
        <div class="col-sm-3 social-ic">
            <a href="#">GOOGLE+</a>
        </div>
        <div class="col-sm-3 social-ic">
            <a href="#">PINTEREST</a>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</body>
</html>
