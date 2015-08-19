<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testpage.aspx.cs" Inherits="Incubadora_Ideias.testpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
 















    <%--    <div class="container">
        <h2>Dynamic Tabs</h2>
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
            <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
            <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
            <li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <h3>HOME</h3>




                <div class="input-group">
                    <div class="input-group-btn">




                        <input type="text" class="form-control" aria-label="...">
                        <button class="btn btn-default" type="button">Go!</button>
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
                        <ul class="dropdown-menu dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </div>
                    <!-- /btn-group -->
                </div>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sql_user" CssClass="table">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                        <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto"></asp:BoundField>
                        <asp:CheckBoxField DataField="Pessoal" HeaderText="Pessoal" SortExpression="Pessoal"></asp:CheckBoxField>
                        <asp:BoundField DataField="Email" HeaderText="Email/Username" SortExpression="Email"></asp:BoundField>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber"></asp:BoundField>
                        <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais"></asp:BoundField>
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
                    </Columns>
                </asp:GridView>






                <asp:SqlDataSource runat="server" ID="sql_user" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT AspNetUsers.Id, AspNetUsers.SecretAnswer, AspNetUsers.Foto, AspNetUsers.Pessoal, AspNetUsers.Email, AspNetUsers.UserName, AspNetUsers.PhoneNumber, Pais.Pais, UsersEstado.Estado, Perguntas.Secret FROM AspNetUsers INNER JOIN Pais ON AspNetUsers.IdPais = Pais.Id INNER JOIN UsersEstado ON AspNetUsers.IdEstado = UsersEstado.Id INNER JOIN Perguntas ON AspNetUsers.IdSecret = Perguntas.Id ORDER BY AspNetUsers.Email"></asp:SqlDataSource>
            </div>











            <div id="menu1" class="tab-pane fade">
                <h3>Menu 1</h3>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
            <div id="menu2" class="tab-pane fade">
                <h3>Menu 2</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
            <div id="menu3" class="tab-pane fade">
                <h3>Menu 3</h3>
                <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
        </div>
    </div>



    --%>
</asp:Content>
