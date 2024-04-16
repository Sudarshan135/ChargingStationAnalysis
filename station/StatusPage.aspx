<%@ Page Title="" Language="C#" MasterPageFile="~/station/StationMasterPage.master" AutoEventWireup="true" CodeFile="StatusPage.aspx.cs" Inherits="station_stationbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="row" style="padding-left:30px ">
       
     <div class="col-md-10">
<div class="card" >
           <div class="card-header">
             <center><h3>Booking History</h3></center>
           </div>
     <div class="row" style="padding-left:30px ;padding-right:30px" >
        
     <div class="col-md-12" >
        
      

                 <asp:Panel ID="Panel1" runat="server"  Width="100%">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" Width="" BorderStyle="None" BorderWidth="3px" class="table" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" >
                        <Columns>
                            
                           
                            <asp:BoundField DataField="slotID" HeaderText="slotID" SortExpression="slotID" Visible="false" />
                            <asp:BoundField DataField="customerName" HeaderText="Customer" SortExpression="customerName" />
                            <asp:BoundField DataField="vehicleRegistration" HeaderText="Vehical No." SortExpression="vehicleRegistration" />
       
                            <asp:BoundField DataField="Startdatetime" HeaderText="Date" SortExpression="Startdatetime" />
                            <asp:BoundField DataField="arrivaltime" HeaderText="Time" SortExpression="arrivaltime" />
                            <asp:BoundField DataField="Uremark" HeaderText="User Remark" SortExpression="Uremark" />
                             <asp:BoundField DataField="Sremark" HeaderText="Station Remark" SortExpression="Sremark" />
                               <asp:BoundField DataField="status" HeaderText="Satus" SortExpression="status" />

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
         </div>


</asp:Content>

