<%@ Page Title="" Language="VB" MasterPageFile="~/yonetim/main.master" AutoEventWireup="false" CodeFile="Ayarlar.aspx.vb" Inherits="yonetim_Ayarlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../js/jquery-3.2.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

     <script>
        $(document).ready(function () {
            $("li").removeClass("active");
            $("#liHesabim").addClass("active");
        });
    </script>

    <div class="panel panel-default">
        <div class="panel-heading"><strong>Ayarlarım</strong></div>
        <div class="panel-body form-horizontal">

            <div class="form-group">
                <label class="control-label col-sm-2" for="txtka">Kullanıcı Adı:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="txtka" placeholder="Kullanıcı Adı" name="txtka">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="txtemail">E-mail:</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="txtemail" placeholder="E-mail" name="txtemail">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="txtpw">Şifre:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="txtpw" placeholder="Şifre" name="txtpw">
                </div>
            </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="txtpw">Şifre Tekrar:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="txtpwt" placeholder="Şifre Tekrar" name="txtpwt">
                </div>
            </div>
            <div class="form-group text-center">
                <label class="alert-danger " id="lbluyari"></label>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="btnkaydet"></label>
                <div class="col-sm-10">
                    <input type="button" class="form-control btn btn-success" id="btnkaydet" value="Kaydet" name="btnkaydet">
                </div>
            </div>

        </div>
    </div>

    <script>
        $("#btnkaydet").click(function () {
            $("#lbluyari").removeClass("alert-success");
            $("#lbluyari").addClass("alert-danger");
            if ($("#txtka").val() == "" || $("#txtemail").val() == "" || $("#txtpw").val() == "" || $("#txtpwt").val() == "") {
                $("#lbluyari").text("Tüm Alanları Doldurun!");
            }
            else {
                if ($("#txtpw").val() == $("#txtpwt").val()) {
                    $("#lbluyari").removeClass("alert-danger");
                    $("#lbluyari").addClass("alert-success");
                    $("#txtaciklama").val("");
                    $("#datepicker").val("");
                    $("#datepicker2").val("");
                    $("#txtis").val("");
                    $("#lbluyari").text("Kayıt Başarılı!");
                }
                else {
                    $("#lbluyari").text("Şifreler uyuşmuyor!");
                }
            }
        });


    </script>

</asp:Content>

