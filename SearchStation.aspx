


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchStation.aspx.cs" Inherits="StudentLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
     <div class="row" >
         <div class="col-md-7">
    <div class="card-top"></div>
    <div class="card">
        <div class="row" style="padding-left:30px ">
       <div class="col-md-2"></div>
     <div class="col-md-8">
        <h1 class="title" style="text-align:center">Search Station <asp:Image ID="Image1" Width="50px" ImageUrl="~/Images/locate.png" runat="server" /></h1>
        <div class="col-md-12">
            <form id="sign_in" runat="server" method="POST">
                
                <div>
                    <div class="form-line">
                       <center> <asp:Image ID="Image2" Height="150px" Width="30%" ImageUrl ="~/Images/mapLocate.jpg" runat="server" /></center>
                    </div>
                </div>
                <br />
             <div class="input-group">
                <span class="input-group-addon">
                    <i class="zmdi zmdi-account"></i>
                </span>
             <div class="form-line">

                    <asp:DropDownList ID="ddlArea" runat="server"  Height="25px" Width="100%" >
                    <asp:ListItem>Search By</asp:ListItem>
                    <asp:ListItem>Station Name</asp:ListItem>
                   
                    <asp:ListItem>Area</asp:ListItem>
                       
                  
                </asp:DropDownList>
             </div>
                    </div>


                 <div class="input-group"> <span class="input-group-addon"> <i class="zmdi zmdi-account"></i> </span>
                    <div class="form-line">
                        
                        <asp:TextBox ID="txtusername" class="form-control" placeholder="Search" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div>
                    
                    <div class="text-center">
                       
                         <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Search" OnClick="Button1_Click"   />
                    </div>
                    
                    <div class="text-center"> <a href="Default.aspx">Home Page</a></div>
                  <br />
                     <div class="text-center">
                       
                         <asp:Button ID="Button2" runat="server"   class="btn btn-raised g-bg-cyan waves-effect"  Text="search user status" OnClick="Button2_Click"   />
                    </div><br />
                        </div>
            </form>
        </div>
         </div>
            </div>
        </div>
             </div>
    </div>    
</div>
    </asp:Content>





