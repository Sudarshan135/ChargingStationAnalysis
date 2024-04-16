<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewstation.aspx.cs" Inherits="viewstation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="row" style="padding-left:30px ">
       
     <div class="col-md-10">
<div class="card">
           <div class="card-header">
             <center><h3>Station Details</h3></center>
           </div>
     <div class="row" style="padding-left:30px ;padding-right:30px" >
        
     <div class="col-md-8" >
         <form runat="server">
      

                 <asp:Panel ID="Panel1" runat="server"  Width="100%">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="None" BorderWidth="3px" class="table" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="Slot Booking">
                  <ItemTemplate> 
                    <asp:HyperLink ID="view1" Text="Request Booking" Class="btn btn-warning" runat="server" NavigateUrl='<%#"~/slotbooking.aspx?stationID="+ Server.UrlEncode(Eval("stationID").ToString())+"&stationName="+ Server.UrlEncode(Eval("stationName").ToString()) %>' ForeColor="White" Font-Size="Medium" Font-Bold="True" />
                  </ItemTemplate>
                                                    
                </asp:TemplateField>

                           
                            <asp:BoundField DataField="stationID" HeaderText="ID" SortExpression="stationID" />
                            <asp:BoundField DataField="stationName" HeaderText="Station Name" SortExpression="stationName" />
                           <asp:BoundField DataField="city" HeaderText="Address" SortExpression="city" />
                            <asp:BoundField DataField="vehicleTypes" HeaderText="Vehicle Types" SortExpression="vehicleTypes" />
                            <asp:BoundField DataField="rapidcharg" HeaderText="Rapid Charger" SortExpression="rapidcharg" />
                            <asp:BoundField DataField="fastCharger" HeaderText="Fast Charger" SortExpression="fastCharger" />
                            <asp:BoundField DataField="slowcharger" HeaderText="Slow charger" SortExpression="slowcharger" />
                            <%--<asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />--%>
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

             <asp:Label ID="lblsho" runat="server" Text=""></asp:Label>
            
             </form>
         </div>
          <div class="col-md-2" ></div>
         </div>
    </div>
         </div>
         </div>
    
</asp:Content>

