<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userstatus.aspx.cs" Inherits="userstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <form id="Form1" runat="server">
    <div class="row" style="padding-left:30px ">
       
     <div class="col-md-10">
<div class="card">
           <div class="card-header">
             <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Details</h3>
           </div>
     <div class="row" style="padding-left:30px ;padding-right:30px" >
          <div class="row">
               <div class="col-md-1"></div>
         <div class="col-md-7">
           <div class="input-group">
                <span class="input-group-addon">
                   Name:
                </span>
             <div class="form-line">

                    <asp:TextBox ID="txtusername" class="form-control" placeholder="Name" runat="server"></asp:TextBox>
                
             </div>
                    </div>


                 <div class="input-group"> <span class="input-group-addon"> Vehicle Number</span>
                    <div class="form-line">
                        
                        <asp:TextBox ID="txtvhicaln" class="form-control" placeholder="VehicleNo" runat="server"></asp:TextBox>
                    </div>
                </div>

             </div>
         </div>
          <div class="text-center">
                       
                         <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Search"  OnClick="Button1_Click"     />
                    </div>
                    
                    <div class="text-center"> <a href="Default.aspx">Home Page</a></div>
                  <br />
          
         </div>
     <div class="col-md-2" ></div>
     <div class="col-md-12" >
      
      

              <asp:Panel ID="Panel1" runat="server"  Width="100%" >
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="None" BorderWidth="3px" class="table" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>

                            <asp:CommandField  ShowSelectButton="True" selectText="Action" ItemStyle-Width="45px" ButtonType="Link"  />

                           
                           <asp:BoundField DataField="slotID" HeaderText="Slot ID" SortExpression="slotID" />
                            <asp:BoundField DataField="stationID" HeaderText="station ID" SortExpression="stationID" />
                            <asp:BoundField DataField="customerName" HeaderText="customer Name" SortExpression="customerName" />
                            <asp:BoundField DataField="vehicleRegistration" HeaderText="vehicle No" SortExpression="vehicleRegistration" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            <asp:BoundField DataField="Sremark" HeaderText="Station Remark" SortExpression="Sremark" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#33CCCC" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ParkingAppDBConnectionString %>" SelectCommand=""></asp:SqlDataSource>
                </asp:Panel>


            
            
         </div>
          <div class="col-md-2" ></div>
         </div>
    </div>
         </div>

     </form>
</asp:Content>

