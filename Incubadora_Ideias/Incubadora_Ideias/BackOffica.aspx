<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BackOffica.aspx.cs" Inherits="Incubadora_Ideias.BackOffica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
  <%--<h2>Dynamic Tabs</h2>--%>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Editar utilizador</a></li>
    <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
    <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
    <li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>Editar utilizador</h3>
      



           <div class="input-group">
          <div class="input-group-btn">
             


          
          <input type="text" class="form-control" aria-label="...">
           <button class="btn btn-default" type="button">Go!</button>
             <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu">
                      <li><a href="#">Action</a></li>
                      <li><a href="#">Another action</a></li>
                      <li><a href="#">Something else here</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="#">Separated link</a></li>
                    </ul>
                  </div><!-- /btn-group -->
           </div>
        <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto"></asp:BoundField>
                <asp:CheckBoxField DataField="Pessoal" HeaderText="Pessoal" SortExpression="Pessoal"></asp:CheckBoxField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber"></asp:BoundField>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
                <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais"></asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#asd">
                            Editar  
                        </button>

<!--------------------------------------------Editar utilizador---------------------------------------------->
                      <div class="modal fade" id="asd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="gridSystemModalLabel">Editar utilizador</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid">



                <!----------------------------Email--------------------------------------------->
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-sm-2 control-label">Email</asp:Label>
                                                <div class="col-sm-14 ">
                                                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                                        CssClass="text-danger" ErrorMessage="The email field is required." Display="Dynamic" />
                                                </div>
                                            </div>

                <!---------------------------Fim-Email--------------------------------------------->


<%--                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-sm-2 control-label">Email</asp:Label>
                                            
                                            <div class="col-sm-10">
                                            <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" TextMode="Email" />
                                           <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                            CssClass="text-danger" ErrorMessage="The email field is required." Display="Dynamic" />
                                            </div>
                                        </div>--%>
                                                                    <br />
                     <!----------------------------Password--------------------------------------------->
                                                
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-sm-2 control-label">Password</asp:Label>
                                    <div class="col-sm-14 ">
                                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                            CssClass="text-danger" ErrorMessage="The password field is required." Display="Dynamic" />
                                    </div>
                                </div>
                     <!---------------------------Fim-Password--------------------------------------------->
                     <!------------------------------------Pessoal/privado--------------------------------->
       
                                <div class="form-group">
                                    <asp:Label runat="server" CssClass="col-sm-2 control-label">   
                                        <strong>Tipo Utilizador</strong></asp:Label>
                                    <div class="col-sm-14 ">
                                        <div class="btn-group" id="rb_tipe" data-toggle="buttons" runat="server">
                                            <label class="btn btn-primary active">
                                                <asp:RadioButton ID="rb_pessoal" runat="server" Checked="true" />
                                                Pessoal
                                            </label>
                                            <label class="btn btn-primary">
                                                <asp:RadioButton ID="rb_empresa" runat="server" />
                                                Empresa
                                            </label>

                                        </div>
                                    </div>
                                </div>
                                <br />

                     <!----------------------------------Fim-Pessoal/privado--------------------------------->


                     <!------------------------------IdPais------------------------------------------->
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="ddl_pais" CssClass="col-sm-2 control-label">Pais</asp:Label>
                                <div class="col-sm-14  ">
                                    <asp:DropDownList ID="ddl_pais" runat="server" CssClass="form-control" DataSourceID="My_Database" DataTextField="Pais" DataValueField="Id" AppendDataBoundItems="True">
                                        <asp:ListItem Value="0" Selected="True" Text="--Select--"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfv_pais" runat="server" Display="Dynamic" ControlToValidate="ddl_pais" ErrorMessage="Value Required!" InitialValue="0"></asp:RequiredFieldValidator>
                                    <asp:SqlDataSource runat="server" ID="My_Database" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT * FROM [Pais] ORDER BY [Pais]"></asp:SqlDataSource>
                                </div>
                            </div>
                    <!-----------------------------Fim-IdPais------------------------------------------->
                        <!---------------------PerguntaSecreta------------------------------------>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="ddl_secret" CssClass="col-sm-2 control-label">Pergunta Secreta</asp:Label>
                                <div class="col-sm-14   ">
                                    <asp:DropDownList ID="ddl_secret" runat="server" CssClass="form-control" AppendDataBoundItems="True" DataSourceID="secret_sql" DataTextField="secret" DataValueField="Id">
                                        <asp:ListItem Value="0" Selected="True" Text="--Select--"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="secret_sql" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT * FROM [Perguntas] ORDER BY [secret]"></asp:SqlDataSource>
                                    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl_secret" ErrorMessage="Value Required!" InitialValue="0"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        <!--------------------Fim-PerguntaSecreta------------------------------------>
                            <!-------------------------RespostaPerguntaSecreta------------------------------->
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="tb_scrt_resp" CssClass="col-sm-2 control-label">Resposta Secreta</asp:Label>
                                <div class="col-sm-14   ">
                                    <asp:TextBox runat="server" ID="tb_scrt_resp" TextMode="Password" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tb_scrt_resp"
                                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                </div>
                            </div>
                        <!------------------------Fm-RespostaPerguntaSecreta------------------------------->
                    <!------------------------------PhoneNumber------------------------------------------->                        
                            
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="tb_phone" CssClass="col-sm-2 control-label">Número Telefone</asp:Label>
                                <div class="col-sm-14  ">
                                    <asp:TextBox runat="server" ID="tb_phone" type="tel" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tb_phone"
                                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Número de telefone é necessário."></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />

                      <!-----------------------------Fim-PhoneNumber------------------------------------------->  

                        <!----------------------------Foto----------------------------------------------------->
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="col-sm-2 control-label"><strong>Fotografia</strong></asp:Label>
                            <div class="col-sm-14  ">
                                <img id="blah" src="/Content/Images/User.png" alt="your image" height="200" style="border-radius: 10px; border: 1px solid #bbbbbb; padding: 10px; margin-bottom: 10px;" />
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <span class="btn btn-primary btn-file">Browse&hellip;
                                            <input type="file" onchange="readURL(this);" id="inp_avatar" runat="server" accept="image/png,image/jpeg,image/jpg">
                                        </span>
                                    </span>
                                    <input type="text" class="form-control" value="user.png" readonly>
                                </div>
                            </div>
                        </div>

                    <!---------------------------Fim-Foto----------------------------------------------------->



                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <asp:Button ID="Save" runat="server" Text="Gravar" CssClass="btn btn-primary" OnClick="CreateUser_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
<!--------------------------------------------Editar utilizador---------------------------------------------->

                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" Text="Bloquear" CommandName="" CausesValidation="false" ID="saveEditarUser"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT AspNetUsers.Foto, AspNetUsers.Pessoal, AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.Id, UsersEstado.Estado, Pais.Pais FROM AspNetUsers INNER JOIN UsersEstado ON AspNetUsers.IdEstado = UsersEstado.Id INNER JOIN Pais ON AspNetUsers.IdPais = Pais.Id ORDER BY  AspNetUsers.Email " ></asp:SqlDataSource>
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







</asp:Content>
