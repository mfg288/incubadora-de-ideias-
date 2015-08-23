<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BackOffica.aspx.cs" Inherits="Incubadora_Ideias.BackOffica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--------------------------------------------Editar utilizador---------------------------------------------->
    <div class="modal fade" id="EditarUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-id="5" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Editar utilizador</h4>
                </div>

                <div class="modal-body">
                    <div class="form-horizontal">



                        <!----------------------------Email--------------------------------------------->
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-sm-4 control-label">Email</asp:Label>
                            <div class="col-sm-6 ">
                                <asp:TextBox runat="server" ClientIDMode="Static" ID="txtEmail" CssClass="form-control" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                                    CssClass="text-danger" ErrorMessage="The email field is required." Display="Dynamic" ValidationGroup="editUtil"/>
                            </div>
                        </div>

                        <!---------------------------Fim-Email--------------------------------------------->

                        <!----------------------------Password--------------------------------------------->

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-sm-4 control-label">Password</asp:Label>
                            <div class="col-sm-6 ">
                                <asp:TextBox runat="server" ClientIDMode="Static" ID="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="text-danger" ErrorMessage="The password field is required." ValidationGroup="editUtil" Display="Dynamic" />
                            </div>
                        </div>
                        <!---------------------------Fim-Password--------------------------------------------->
                        <!------------------------------------Pessoal/privado--------------------------------->

                        <div class="form-group">
                            <asp:Label runat="server" CssClass="col-sm-4 control-label">   
                                        <strong>Tipo Utilizador</strong></asp:Label>
                            <div class="col-sm-6">
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


                        <!----------------------------------Fim-Pessoal/privado--------------------------------->


                        <!------------------------------IdPais------------------------------------------->
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="ddl_pais" CssClass="col-sm-4 control-label">Pais</asp:Label>
                            <div class="col-sm-6  ">
                                <asp:DropDownList ID="ddl_pais" runat="server" CssClass="form-control" DataSourceID="My_Database" DataTextField="Pais" DataValueField="Id" AppendDataBoundItems="True">
                                    <asp:ListItem Value="0" Selected="True" Text="--Select--"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfv_pais" runat="server" ValidationGroup="editUtil" Display="Dynamic" ControlToValidate="ddl_pais" ErrorMessage="Value Required!" InitialValue="0"></asp:RequiredFieldValidator>
                                <asp:SqlDataSource runat="server" ID="My_Database" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT * FROM [Pais] ORDER BY [Pais]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <!-----------------------------Fim-IdPais------------------------------------------->
                        <!---------------------PerguntaSecreta------------------------------------>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="ddl_secret" CssClass="col-sm-4 control-label">Pergunta Secreta</asp:Label>
                            <div class="col-sm-6  ">
                                <asp:DropDownList ID="ddl_secret" runat="server" CssClass="form-control" AppendDataBoundItems="True" DataSourceID="secret_sql" DataTextField="secret" DataValueField="Id">
                                    <asp:ListItem Value="0" Selected="True" Text="--Select--"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="secret_sql" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT * FROM [Perguntas] ORDER BY [secret]"></asp:SqlDataSource>
                                <asp:RequiredFieldValidator ValidationGroup="editUtil" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl_secret" ErrorMessage="Value Required!" InitialValue="0"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <!--------------------Fim-PerguntaSecreta------------------------------------>
                        <!-------------------------RespostaPerguntaSecreta------------------------------->
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="tb_scrt_resp" CssClass="col-sm-4 control-label">Resposta Secreta</asp:Label>
                            <div class="col-sm-6   ">
                                <asp:TextBox runat="server" ID="tb_scrt_resp" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator ValidationGroup="editUtil" runat="server" ControlToValidate="tb_scrt_resp"
                                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                            </div>
                        </div>
                        <!------------------------Fm-RespostaPerguntaSecreta------------------------------->
                        <!------------------------------PhoneNumber------------------------------------------->

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="tb_phone" CssClass="col-sm-4 control-label">Número Telefone</asp:Label>
                            <div class="col-sm-6  ">
                                <asp:TextBox runat="server" ID="tb_phone" type="tel" CssClass="form-control" />
                                <asp:RequiredFieldValidator ValidationGroup="editUtil" runat="server" ControlToValidate="tb_phone"
                                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Número de telefone é necessário."></asp:RequiredFieldValidator>
                            </div>
                        </div>


                        <!-----------------------------Fim-PhoneNumber------------------------------------------->

                        <!----------------------------Foto----------------------------------------------------->
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="col-sm-4 control-label"><strong>Fotografia</strong></asp:Label>
                            <div class="col-sm-6  ">
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
                            <asp:Button ValidationGroup="editUtil" ID="Save" runat="server" Text="Gravar" CssClass="btn btn-primary" OnClick="GravarUser" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-------------------------------------------fim-Editar utilizador---------------------------------------------->
    <!-----------------------------------------Banit User---------------------------------------------------------->
    <div class="modal fade" id="BanitUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-id="5" data-dismiss="modal" aria-label="Close" onclick="Apagar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Banir utilizador</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="ddl_secret" CssClass="col-sm-4 control-label"> Banir </asp:Label>
                                <div class="col-sm-6  ">
                                    <select id="SB_BanitUser" class="form-control">
                                        <option id="one">1 mês</option>
                                        <option id="three">3 mês</option>
                                        <option id="six">6 mês</option>
                                        <option id="perman">Definitivo</option>
                                        <option id="apagar">Apagar</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Canselar</button>
                    <asp:Button ID="BanirSim" runat="server" Text="Banir" CssClass="btn btn-primary" OnClick="Banir" />
                </div>


            </div>
        </div>
    </div>
    <!---------------------------------------------Fim-Banit User----------------------------------------------------->


    <!---------------------------------------------editar Ideia---------------------------------------------------------->
    <div class="modal fade" id="EditarIdeia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-id="5" data-dismiss="modal" aria-label="Close" onclick="Apagar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Editar Tag</h4>
                </div>


                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="email">Nome</label>
                                <div class="col-sm-6 ">
                                    <input class="form-control" id="inpName" placeholder="Nome" runat="server">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="pwd">Tipo Ideia</label>
                                <div class="">
                                    <div class="col-sm-6 " data-toggle="buttons">
                                        <label class="btn btn-primary active">
                                            <input type="radio" name="options" id="rbPublica" checked runat="server">
                                            Publica
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="radio" name="options" id="rbPrivada" runat="server">
                                            Privada       
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="inpTags">Tags</label>
                                <div class="col-sm-6 ">
                                    <input id="inpTags" class="form-control" runat="server" clientidmode="Static">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="asdasd">Descrição</label>
                                <div class="col-sm-6 ">

                                    <textarea class="form-control" rows="10" id="taDesc" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Canselar</button>
                    <asp:Button ID="BTBanirtag" runat="server" Text="Banir" CssClass="btn btn-primary" OnClick="Banir" />
                </div>

            </div>
        </div>
    </div>
    <!----------------------------------------------fim editar tag--------------------------------------------------------->

    <!--------------------------------------------------EstadoTag----------------------------------------------------->
    <div class="modal fade" id="EstadoTag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-id="5" data-dismiss="modal" aria-label="Close" onclick="Apagar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Estado utilizador</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="ddl_secret" CssClass="col-sm-4 control-label"> Duração  </asp:Label>
                                <div class="col-sm-6  ">
                                    <select id="SB_EstadoTag" class="form-control">
                                        <option id="oneEstadoTag">1 mês</option>
                                        <option id="threeEstadoTag">3 mês</option>
                                        <option id="sixEstadoTag">6 mês</option>
                                        <option id="permanEstadoTag">Definitivo</option>

                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Canselar</button>
                    <asp:Button ID="BTEstadoGravar" runat="server" Text="Gravar" CssClass="btn btn-primary" OnClick="Banir" />
                </div>


            </div>
        </div>
    </div>
    <!------------------------------------------------------------------------------------------------------->

    <!-------------------------------------------EditarErros------------------------------------------------------------>
    <div class="modal fade" id="EditarErros" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-id="5" data-dismiss="modal" aria-label="Close" onclick="Apagar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Editar Erros</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="form-horizontal">

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-sm-4 control-label">Email</asp:Label>
                                <div class="col-sm-6 ">
                                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" TextMode="Email" />
                                    <asp:RequiredFieldValidator ValidationGroup="edit error" runat="server" ControlToValidate="txtEmail"
                                        CssClass="text-danger" ErrorMessage="The email field is required." Display="Dynamic" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ta_descript" class="col-sm-4 control-label">Descrição</label>
                                <div class="col-sm-6">
                                    <textarea id="ta_descript" class="form-control" rows="5" runat="server"></textarea>
                                    <asp:RequiredFieldValidator  ValidationGroup="edit error" 
                                        ControlToValidate="ta_descript"
                                        Text="Por favor insira uma Descrição"
                                        runat="server"
                                        ForeColor="#c60000"
                                        Display="Dynamic" />
                                </div>
                            </div>




                            <%--aaaaa--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Canselar</button>
                <asp:Button ID="Button1" runat="server" Text="Banir"  CssClass="btn btn-primary" ValidationGroup="edit error"  OnClick="Banir" />
            </div>


        </div>
    </div>
    
    <!-------------------------------------------Fim--EditarErros---------------------------------------------------------->


   
    <!---------------------------------------------EditarTag---------------------------------------------------------->
 
     <div class="modal fade" id="EditarrTag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-id="5" data-dismiss="modal" aria-label="Close" onclick="Apagar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Editar Tag</h4>
                </div>

                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="form-horizontal">

                <a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseExample1" aria-expanded="false" aria-controls="collapseExample">
                  Link with href
                </a>
                <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
                  Button with data-target
                </button>
                <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample3" aria-expanded="false" aria-controls="collapseExample">
                  Button with data-target
                </button>
                <div class="collapse" id="collapseExample1">
                  <div class="well">
                  <div class="form-group">

                     <div class="col-sm-1 control-label  ">
                     <asp:Button ID="Button2" runat="server" Text="Editar" CssClass="btn btn-success"  />
                      </div>
                      </div>
                  </div>
                </div>
                 <div class="collapse" id="collapseExample2">
                  <div class="well">
                    2
                  </div>
                </div>
                <div class="collapse" id="collapseExample3">
                  <div class="well">
                    3
                  </div>
                </div>


                       

                    </div>




















                           <div class="form-group">
                               <div class="col-sm-4 control-label  ">
                                    <asp:Button ID="BT_unir_tag" runat="server" Text="Editar" CssClass="btn btn-info"  />
                            </div>
                              <div class="col-sm-6 control-label ">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="My_Database" DataTextField="Pais" DataValueField="Id" AppendDataBoundItems="True">
                                    <asp:ListItem Value="0" Selected="True" Text="--Select--"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="editUtil" Display="Dynamic" ControlToValidate="ddl_pais" ErrorMessage="Value Required!" InitialValue="0"></asp:RequiredFieldValidator>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT * FROM [Pais] ORDER BY [Pais]"></asp:SqlDataSource>
                            </div>

                            <div class="col-sm-4 control-label">
                            
                                    <asp:Button ID="Bt_Apagarr_tag" runat="server" Text="Apagar" class="btn btn-danger"  />
                            </div>

                        </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Canselar</button>
                    <asp:Button ID="BT_banir_tag" runat="server" Text="Banir" CssClass="btn btn-primary" OnClick="Banir" />
                </div>

            </div>
        </div>
    </div>






    <!--------------------------------------------fim-EditarTag---------------------------------------------------------->
    <div class="container" >
        <%--<h2>Dynamic Tabs</h2>--%>
        <ul class="nav nav-tabs" id="ul_tabs" >
            <li runat="server"><a data-toggle="tab" href="#home">Editar utilizador</a></li>
            <li id="tab_ideia" runat="server" ><a data-toggle="tab" id="tab_a_ideia" href="#menu1">Editar Ideias</a></li>
            <li runat="server"><a data-toggle="tab" href="#menu2">Erros</a></li>
            <li runat="server"><a data-toggle="tab" href="#menu3">Tags</a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <h3>Utilizador</h3>




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
                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>

                        <%-----------------------------------------meter a foto  ----------------------------------------------------------------------       
           <asp:TemplateField HeaderText="Foto" SortExpression="Foto">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("Foto") %>' ID="TextBox1"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("Foto") %>' ID="Label1"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>--%>


                        <asp:CheckBoxField DataField="Pessoal" HeaderText="Pessoal" SortExpression="Pessoal"></asp:CheckBoxField>
                        <asp:BoundField DataField="Email" HeaderText="Email/UserName" SortExpression="Email"></asp:BoundField>
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber"></asp:BoundField>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
                        <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais"></asp:BoundField>
                        <asp:BoundField DataField="Id" Visible="true"></asp:BoundField>
                        <asp:TemplateField ShowHeader="False " HeaderText="Editar">
                            <ItemTemplate>
                                <button type="button" class="btn btn-primary" id="bt_editar_user" data-toggle="modal" data-target="#EditarUser" onclick="EditarUser('<%# Eval("Id") %>')" >
                                    Editar  
                                </button>
                                <div class="modal fade" id="EstadoTag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-id="5" data-dismiss="modal" aria-label="Close" onclick="Apagar"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="gridSystemModalLabel">Banir utilizador</h4>
                                            </div>



                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Canselar</button>
                                                <asp:Button ID="BanirSim" runat="server" Text="Banir" CssClass="btn btn-primary" OnClick="Banir" />
                                            </div>


                                        </div>
                                    </div>
                                </div>



                            </ItemTemplate>
                        </asp:TemplateField>




                        <asp:TemplateField ShowHeader="False" HeaderText="Banir">
                            <ItemTemplate>
                                <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#BanitUser">
                                    Banit  
                                </button>

                                <!--------------------------------------------Banir utilizador---------------------------------------------->

                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT AspNetUsers.Foto, AspNetUsers.Pessoal, AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.Id, UsersEstado.Estado, Pais.Pais FROM AspNetUsers INNER JOIN UsersEstado ON AspNetUsers.IdEstado = UsersEstado.Id INNER JOIN Pais ON AspNetUsers.IdPais = Pais.Id ORDER BY  AspNetUsers.Email "></asp:SqlDataSource>
            </div>



            <!--------------------------------------------Menu ----------------------------------------------------------------------------------->






            <div id="menu1" class="tab-pane fade">
                <h3>Ideias</h3>



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


                <asp:GridView ID="GridView2" runat="server" CssClass="table" DataSourceID="Sqltable" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome"></asp:BoundField>
                        <asp:BoundField DataField="Resumo" HeaderText="Resumo" SortExpression="Resumo"></asp:BoundField>
                        <asp:BoundField DataField="Visualizacoes" HeaderText="Visualizacoes" SortExpression="Visualizacoes"></asp:BoundField>
                        <asp:CheckBoxField DataField="Publica" HeaderText="Publica" SortExpression="Publica"></asp:CheckBoxField>
                        <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data"></asp:BoundField>
                        <asp:TemplateField ShowHeader="False" HeaderText="Editar">
                            <ItemTemplate>
                                <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#EditarIdeia">
                                    Editar  
                                </button>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False" HeaderText="Estado">
                            <ItemTemplate>
                                <asp:Button ID="actDesact" runat="server" data-activo='<%# Eval("Activo") %>' data-id='<%# Eval("Id") %>' OnClick="actDesact_Click"/>
                              






















                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="Sqltable" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Nome, Resumo, Visualizacoes, Publica, Data,  Id, Activo FROM Ideias"></asp:SqlDataSource>
            </div>
            <!-------------------------------------------- menu Erros ----------------------------------------------------------------------------------->
            <div id="menu2" class="tab-pane fade">
                <h3>Erros</h3>
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

                <asp:GridView ID="GridView3" runat="server" CssClass="table" AutoGenerateColumns="False" DataSourceID="SqlDErros">
                    <Columns>
                        <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao"></asp:BoundField>
                        <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url"></asp:BoundField>
                        <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo"></asp:BoundField>
                        <asp:BoundField DataField="Anexo" HeaderText="Anexo" SortExpression="Anexo"></asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <%  
    //select anexo from whre ID=
                                    
                                    
                                %>
                                <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#EditarErros">
                                    Editar  
                                </button>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDErros" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Erros.Descricao, Erros.Url, Erros.Titulo, ErrosAnexo.Anexo, AspNetUsers.Email FROM Erros INNER JOIN ErrosAnexo ON Erros.Id = ErrosAnexo.IdErro INNER JOIN AspNetUsers ON Erros.IdUser = AspNetUsers.Id"></asp:SqlDataSource>

            </div>


            <!--------------------------------------------Menu tags----------------------------------------------------------------------------------->
            <div id="menu3" class="tab-pane fade">
                <h3>Tags</h3>
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
                </div>
                <asp:GridView ID="GVTags" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="Expr1" DataSourceID="SQLDS_Tags">
                    <Columns>
                        <asp:BoundField DataField="Tag" HeaderText="Tag" SortExpression="Tag"></asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                              <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#EditarrTag">
                                    Editar 
                                </button
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                    </asp:GridView>
                <asp:SqlDataSource ID="SQLDS_Tags" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Tag, Id AS Expr1 FROM Tags"></asp:SqlDataSource>
                
            </div>
            <!----------------------------------------------------------------------------------------------------------------------------->
            <!------------------------------------------------------------------------------------------------------------------------------>

           
            <!----------------------------------------------------------------------------------------------------------------------------->
        </div>
    </div>







</asp:Content>
