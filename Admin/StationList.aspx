<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="StationList.aspx.cs" Inherits="station_stationbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="row" style="padding-left: 30px">

        <div class="col-md-10">
            <div class="card">
                <div class="card-header">
                    <center><h3>Station Details</h3></center>
                </div>
                <div class="row" style="padding-left: 30px; padding-right: 30px">

                    <div class="col-md-12">



                        <asp:Panel ID="Panel1" runat="server" Width="100%" Height="400px">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" Width="" BorderStyle="None" BorderWidth="3px" class="table" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                                <Columns>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="view1" Text="View Details" Class="btn btn-warning btn-sm" runat="server" NavigateUrl='<%#"StationDetails.aspx?stationID="+ Server.UrlEncode(Eval("stationID").ToString())+"&status="+ Server.UrlEncode(Eval("status").ToString()) %>' ForeColor="White" Font-Size="Medium" Font-Bold="True" />
                                        </ItemTemplate>


                                    </asp:TemplateField>

                                    <asp:BoundField DataField="stationID" HeaderText="Station ID" SortExpression="stationID" Visible="false" />
                                    <asp:BoundField DataField="stationName" HeaderText="Station" SortExpression="stationName" />
                                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />

                                    <asp:BoundField DataField="mobileNo" HeaderText="Mobile No" SortExpression="mobileNo" />

                                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />

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
                    <div class="col-md-2"></div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

