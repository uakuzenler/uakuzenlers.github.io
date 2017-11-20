<%@ Page Title="" Language="VB" MasterPageFile="~/yonetim/main.master" AutoEventWireup="false" CodeFile="Yukle.aspx.vb" Inherits="yonetim_Yukle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../css/fileupload/css/fileinput-rtl.css" rel="stylesheet" />
    <link href="../css/fileupload/css/fileinput-rtl.min.css" rel="stylesheet" />
    <link href="../css/fileupload/css/fileinput.css" rel="stylesheet" />
    <link href="../css/fileupload/css/fileinput.min.css" rel="stylesheet" />
    <script src="../css/fileupload/js/fileinput.min.js"></script>
    <link href="../css/fileupload/themes/explorer/theme.min.css" rel="stylesheet" />
    <script src="../css/fileupload/themes/explorer/theme.min.js"></script>
    <link href="../css/fileupload/themes/explorer-fa/theme.min.css" rel="stylesheet" />
    <script src="../css/fileupload/themes/explorer-fa/theme.min.js"></script>
    <script src="../css/fileupload/themes/fa/theme.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

       <script>
        $(document).ready(function () {
            $("li").removeClass("active");
            $("#liDosyaYukle").addClass("active");
        });
    </script>
 
        <div class="panel panel-default">
            <div class="panel-heading"><strong>Dosya Yükleme</strong></div>
            <div class="panel-body">
                <div class="file-loading">
                    <input id="input-b6" name="input-b6[]" type="file" multiple>
                </div>
                <script>
                    $(document).on('ready', function () {
                        $("#input-b6").fileinput({
                            showUpload: false,
                            maxFileCount: 10,
                            mainClass: "input-group-lg",
                            
                        });
                    });
                </script>
            </div>
        </div>


</asp:Content>

