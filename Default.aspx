<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dosya Yöneticisi - Giriş</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/giris.css" rel="stylesheet" />


</head>
<body style="">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-login">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form id="login-form" action="#" method="post" role="form" style="display: block;">
                                    <h2>Giriş Yap</h2>
                                    <div class="form-group">
                                        <input type="text" id="txtemail" tabindex="1" class="form-control" placeholder="E-Mail">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" id="txtsifre" tabindex="2" class="form-control" placeholder="Şifre">
                                    </div>
                                    <div class="col-xs-6 form-group pull-left ">
                                        <label class="alert-danger" id="lbluyari"></label>
                                    </div>
                                    <div class="col-xs-6 form-group pull-right">
                                        <input type="button" name="btngiris" id="btngiris" tabindex="4" class="form-control btn btn-login" value="Giriş Yap">
                                    </div>
                                </form>
                                <form id="register-form" action="#" method="post" role="form" style="display: none;">
                                    <h2>Yeni Üyelik</h2>
                                    <div class="form-group">
                                        <input type="text" name="txtuyelikka" id="txtuyelikka" tabindex="1" class="form-control" placeholder="Kullanıcı Adı" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="txtuyelikemail" id="txtuyelikemail" tabindex="1" class="form-control" placeholder="E-Mail" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="txtuelikpw" id="txtuelikpw" tabindex="2" class="form-control" placeholder="Şifre">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="txtuelikpwt" id="txtuelikpwt" tabindex="2" class="form-control" placeholder="Şifreyi Doğrula">
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-xs-6 form-group pull-left ">
                                                <label class="alert-danger" id="lbluyari2"></label>
                                            </div>
                                            <div class="col-xs-6 form-group pull-right">
                                                <input type="submit" name="btnuyeol" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Üye Ol">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6 tabs">
                                <a href="#" class="active" id="login-form-link">
                                    <div class="login">Giriş</div>
                                </a>
                            </div>
                            <div class="col-xs-6 tabs">
                                <a href="#" id="register-form-link">
                                    <div class="register">Üye Ol</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <script type="text/javascript">$(function () {
            $('#login-form-link').click(function (e) {
                $("#login-form").delay(100).fadeIn(100);
                $("#register-form").fadeOut(100);
                $('#register-form-link').removeClass('active');
                $(this).addClass('active');
                e.preventDefault();
            });
            $('#register-form-link').click(function (e) {
                $("#register-form").delay(100).fadeIn(100);
                $("#login-form").fadeOut(100);
                $('#login-form-link').removeClass('active');
                $(this).addClass('active');
                e.preventDefault();
            });

        });
    </script>
    <script>
        $('#btngiris').click(function (e) {
            $("#lbluyari").text("");



            if ($("input[id$='txtemail']").val().length < 1) {
                $("#lbluyari").text("Kullanıcı Adı Giriniz");
            }
            else {
                if ($("input[id$='txtsifre']").val().length < 1) {
                    $("#lbluyari").text("Şifre Giriniz");
                }
                else {
                   
                    //Giriş Yeri...

                    if ($("input[id$='txtemail']").val() == "admin" && $("input[id$='txtsifre']").val() == "123") {
                        $("#lbluyari").removeClass("alert-danger");
                        $("#lbluyari").addClass("alert-success");
                        $("#lbluyari").text("Giriş Yapılıyor..");

                        window.setTimeout(function () {
                            window.location.href = "/yonetim";
                        }, 1000);

                    }
                    else {
                        $("#lbluyari").text("Kullanıcı Adı Şifre Yanlış!..");
                    }

                }
            }
        });
    </script>

</body>
</html>
