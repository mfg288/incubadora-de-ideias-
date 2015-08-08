<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Incubadora_de_Ideas.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" ClientIDMode="Static" runat="server">
    <br />

        <script >

          
            
        
      </script>
    <br />
    <br />


    <br />
    <br />
    <br />
    <br />
            <input type="text" id="blablaText" />

            <ul id="category1">
                <li>item1</li>
                <li>item2</li>
                <li>item3</li>
            </ul>
            <ul>
                <li>item27</li>
                <li>item28</li>
                <li>sara</li>
            </ul>




    <ul class="list-group" id="ul_badges" runat="server">
    </ul>

    <br />
    <h3>
        <asp:Label ID="lbl1" runat="server" /></h3>
    <h3>
        <asp:Label ID="lbl2" runat="server" /></h3>
    <asp:Button Text="Submit" OnClick="Unnamed_Click" runat="server" />





    <h2>&lt;select multiple&gt;</h2>
				<div class="control-group">
					<label for="select-state">States:</label>
					<select id="select-state" name="state[]" multiple class="demo-default" style="width:50%" placeholder="Select a state..." runat="server" DataSourceID="SqlDataSource1" DataTextField="Pais" DataValueField="Id">
							</select>
				</div>
    
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT * FROM [Pais]"></asp:SqlDataSource>

</asp:Content>
