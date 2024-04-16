<%@ Page Title="" Language="C#" MasterPageFile="~/station/StationMasterPage.master" AutoEventWireup="true" CodeFile="SbookingStatus.aspx.cs" Inherits="station_SbookingStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row" style="padding-left:30px ">
         <div class="col-md-1" ></div>
       <div class="col-md-8" >
     
<div class="card">
           <div class="card-header">
             <center><h3>Station Booking</h3></center>
           </div>
     <div class="row" style="padding-left:30px ;padding-right:30px" >
        
     
                <div class="input-group">
                <span class="input-group-addon">
                    Customer Name
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtCostomerN"  class="form-control" placeholder=" Customer Name" runat="server"    ReadOnly="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCostomerN" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                     </div>
            </div>

                 <div class="input-group">
                <span class="input-group-addon">
                   Vehicle Registration Number
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtregistration"  class="form-control" placeholder="Vehicale Registration Number" runat="server"    ReadOnly="true"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtregistration" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                     
                     </div>
            </div>

            <div class="input-group">
                <span class="input-group-addon">
                   Charger Type
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtchargerType"  class="form-control"  placeholder="Charger Type"  runat="server"   ReadOnly="true"></asp:TextBox>
                   
                     
                </div>
            </div>
            
          
              <%--   <div class="input-group">
                <span class="input-group-addon">
                   Require Unit (in KWh)
                </span>
                <div class="form-line">
                    <asp:TextBox ID="txtbatteryper" class="form-control" placeholder="Initial Battery Persentage" runat="server" TextMode="Number"    ReadOnly="true"></asp:TextBox>
               
                      </div>
            </div>--%>

               
            <div class="input-group">
                <span class="input-group-addon">
                     <i class="zmdi zmdi-calendar"></i>
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtSdateT"   class="form-control" placeholder=" Date " runat="server" TextMode="Date"    ReadOnly="true"></asp:TextBox>
                 
                     </div>
            </div>
            
             <div class="input-group">
                <span class="input-group-addon">
                      Arrival Time
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtarrivalT"   class="form-control" placeholder=" Arrival Time" runat="server" TextMode="Time"  ValidationGroup="a"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtarrivalT" ErrorMessage="*" Display="Dynamic" ReadOnly="true"  ValidationGroup="a"></asp:RequiredFieldValidator>
                    
                     </div>
            </div>
         <div class="input-group">
                <span class="input-group-addon">
                     Description
                </span>
                
            </div>


          <div class="input-group">
                <span class="input-group-addon">
                     Unite
                </span>
                <div class="form-line">
                    <asp:Label ID="txtunite" runat="server" ></asp:Label>
                     
                     </div>
            </div>
          <div class="input-group">
                <span class="input-group-addon">
                     Time
                </span>
                <div class="form-line">
                     
                    <asp:Label ID="txttime" runat="server" ></asp:Label>
                     </div>
            </div>
          <div class="input-group">
                <span class="input-group-addon">
                     Amount
                </span>
                <div class="form-line">
                    
                   <asp:Label ID="txtamount" runat="server" ></asp:Label>
                     </div>
            </div>



                 

          <div class="input-group">
                <span class="input-group-addon">
                     Add Remark
                </span>
                <div class="form-line">
                      <asp:TextBox ID="txtremark"   class="form-control" placeholder="Add remark" runat="server"   ValidationGroup="a"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtremark" ErrorMessage="*" Display="Dynamic"  ValidationGroup="a"></asp:RequiredFieldValidator>
                    
                     </div>
            </div>


          <div class="input-group">
                <span class="input-group-addon">
                  Status Type
                </span>
                <div class="form-line">
                    <asp:DropDownList ID="ddlstatus" class="btn btn-danger dropdown-toggle"   placeholder="charging Type" runat="server" ForeColor="White" ValidationGroup="a">
                         <asp:ListItem>Set Action</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                        <asp:ListItem>Accept</asp:ListItem>
                         <%--<asp:ListItem Value="Charged">Charged</asp:ListItem>--%>
                         <asp:ListItem>Reject</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlstatus" ErrorMessage="*" Display="Dynamic"  ValidationGroup="a"></asp:RequiredFieldValidator>
                    
                </div>
            </div>


            <div class="text-center">
                <asp:Button ID="Button1" runat="server"  class="btn btn-raised g-bg-cyan waves-effect" Text="Submit" OnClick="Button1_Click"   ValidationGroup="a" />
               
            </div>
             <%--<div class="text-center"> <a href="stationbooking.aspx">station booking.aspx</a></div>--%>
       
        </div>
    
          <div class="col-md-2" ></div>
        
    </div>
        
         </div>

        </div>
</asp:Content>

