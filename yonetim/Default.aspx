<%@ Page Title="" Language="VB" MasterPageFile="~/yonetim/main.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="yonetim_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        $(document).ready(function () {
            $("li").removeClass("active");
            $("#liAnasayfa").addClass("active");
        });
    </script>

    <div class="row">
		<div class="col-sm-3">
    	    <div class="hero-widget well well-sm">
                <div class="icon">
                     <i class="fa fa-file"></i>
                </div>
                <div class="text">
                    <var>3</var>
                    <label class="text-muted">Toplam Dosya</label>
                </div>
                <div class="options">
                    <a href="Dosyalar.aspx" class="btn btn-primary btn-lg"><i class="fa fa-search"></i> Sayfayı Göster</a>
                </div>
            </div>
		</div>
        <div class="col-sm-3">
            <div class="hero-widget well well-sm">
                <div class="icon">
                     <i class="fa fa-upload"></i>
                </div>
                <div class="text">
                    <var>+</var>
                    <label class="text-muted">Dosya Yükle</label>
                </div>
                <div class="options">
                    <a href="Yukle.aspx"" class="btn btn-default btn-lg"><i class="fa fa-search"></i> Sayfayı Göster</a>
                </div>
            </div>
		</div>
        <div class="col-sm-3">
            <div class="hero-widget well well-sm">
                <div class="icon">
                     <i class="fa fa-cogs"></i>
                </div>
                <div class="text">
                    <var></var>
                    <label class="text-muted">Ayarlar</label>
                </div>
                <div class="options">
                    <a href="Ayarlar.aspx" class="btn btn-default btn-lg"><i class="fa fa-search"></i> Sayfayı Göster</a>
                </div>
            </div>
    	</div>
        <div class="col-sm-3">
            <div class="hero-widget well well-sm">
                <div class="icon">
                     <i class="fa fa-sign-out"></i>
                </div>
                <div class="text">
                    <var></var>
                    <label class="text-muted">Çıkış Yap</label>
                </div>
                <div class="options">
                    <a href="Cikis.aspx" class="btn btn-default btn-lg"><i class="fa fa-search"></i> Sayfayı Göster</a>
                </div>
            </div>
		</div>
	</div>


</asp:Content>

