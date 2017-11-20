<%@ Page Title="" Language="VB" MasterPageFile="~/yonetim/main.master" AutoEventWireup="false" CodeFile="Dosyalar.aspx.vb" Inherits="yonetim_Dosyalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

       <script>
        $(document).ready(function () {
            $("li").removeClass("active");
            $("#liDosyalar").addClass("active");
        });
    </script>


    <div class="panel panel-default">
        <div class="panel-heading"><strong>Dosyalar</strong></div>
        <div class="panel-body">


            <table class="table">
                <thead class="thead-inverse">
                    <tr>
                        <th>#</th>
                        <th>Dosya Adı</th>
                        <th>Yükleme TTarihi</th>
                        <th>Kontroller</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>resim.png</td>
                        <td>03.07.2017</td>
                        <td>
                            <div class="btn btn-sm btn-success">İndir <span><i class="fa fa-download"></i></span></div>
                            <div class="btn btn-sm btn-danger">Sil <span><i class="fa fa-trash"></i></span></div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>dosya.rar</td>
                        <td>16.9.2017</td>
                        <td>
                            <div class="btn btn-sm btn-success">İndir <span><i class="fa fa-download"></i></span></div>
                            <div class="btn btn-sm btn-danger">Sil <span><i class="fa fa-trash"></i></span></div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>resimlerim.zip</td>
                        <td>09.10.2017</td>
                        <td>
                            <div class="btn btn-sm btn-success">İndir <span><i class="fa fa-download"></i></span></div>
                            <div class="btn btn-sm btn-danger">Sil <span><i class="fa fa-trash"></i></span></div>
                        </td>
                    </tr>
                </tbody>
            </table>


        </div>
    </div>
</asp:Content>

