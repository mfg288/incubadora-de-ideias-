<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Incubadora_de_Ideas._Default" %>

<%--<script>
    function mach(){
        var eingabe = XMLHttpRequest();
        var string = "eingabe" + document.getElementById("eingabe").value;
        eingabe.open("GET" , "Mach.asp?" +string, false  )
        eingabe
    }


</script>--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#asd">
        Reportar Erro   
    </button>

    <div class="modal fade" id="asd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">Erro</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="form-group">
                            <label for="inp_title" class="col-sm-2 control-label">Titulo</label>
                            <div class="col-sm-10">
                                <input id="inp_title" runat="server" class="form-control" type="text" placeholder="Reportar  erros " /><br />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="ta_eingabe" class="col-sm-2 control-label">Descricao</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" rows="5" id="ta_eingabe" runat="server" placeholder="Não abre a paginal login"></textarea>
                            </div>
                        </div>
                                                    <br />
                        
                        <div class="form-group">
                            <label for="inp_anexo" class="col-sm-2 control-label">Anexos</label>
                            <div class="col-sm-10">
                                <p></p>
                                <input id="inp_anexo" name="imp_anexo[]" type="file" class="file" multiple="true" data-show-upload="false" data-show-caption="true">
                                <script>
                                    $("#inp_anexo").fileinput({ maxFileCount: 2 });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <asp:Button ID="Save" runat="server" Text="Button" CssClass="btn btn-primary"  OnClick="Button1_Click"/>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
