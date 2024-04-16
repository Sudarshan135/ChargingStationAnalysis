<%@ Page Title="" Language="C#" MasterPageFile="~/station/StationMasterPage.master" AutoEventWireup="true" CodeFile="Stationdetails.aspx.cs" Inherits="Admin_Stationdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
        <div class="col-md-1"></div>
     <div class="col-md-10">
<div class="card">
           <div class="card-header" >
             <center><h3 >Station Details</h3></center>
           </div>
     <div class="row" style="padding-left:30px ;padding-right:30px" >
        
     <div class="col-md-4" >


        <div class="form-group" style="border:thin solid #000000 ;border-radius:20px">
             <center>   <asp:Label ID="Label9" runat="server" Text="Station ID" Font-Bold="True" style="text-align: center"  ></asp:Label> <br />  
                        <asp:TextBox ID="txtsID" placeholder="ID" class="form-control"  runat="server" ForeColor="#000066" style="text-align: center" Font-Bold="True" Enabled="False"></asp:TextBox></center>
                        
                    </div>
         
          <div class="form-group" style="border:thin solid #000000;border-radius:20px"">
               <center>   <asp:Label ID="Label8" runat="server" Text="opertion Days & Hours" Font-Bold="True" style="text-align: center"  ></asp:Label>  
                        <asp:TextBox ID="txtoperationDHr" placeholder="Monday To Saturday;10am To 6pm " class="form-control "  runat="server" style="text-align: center" ForeColor="#000066" Font-Bold="True" ></asp:TextBox> </center>
                        
                    </div>

        
          <div class="form-group" style="border:thin solid #000000;border-radius:20px"">
                <center>   <asp:Label ID="Label7" runat="server" Text="Parking Spaces In Sq.Ft" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtspace" placeholder="Parking Spaces In Sq.Ft" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" TextMode="Number"></asp:TextBox>
                        
                    </div>

      
         
          <div class="form-group" style="border:thin solid #000000;border-radius:20px"">
                        <center>   <asp:Label ID="Label6" runat="server" Text="Payment Mode" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
              <asp:DropDownList ID="ddlpaymentMode" placeholder="Payment Mode" style="text-align: center" class="form-control " runat="server">
                  <asp:ListItem>Select</asp:ListItem>
                   <asp:ListItem>Cash</asp:ListItem>
                  <asp:ListItem>UPI</asp:ListItem>
                  <asp:ListItem>BOTH</asp:ListItem>
              </asp:DropDownList>
                    </div>

         


       <%--   <div class="form-group " style="border:thin solid #000000 ;border-radius:20px" "  >
               <center>   <asp:Label ID="Label5" runat="server" Text="Per Unit Cost" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtUcost" placeholder="Per Unit Cost" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" TextMode="Number"></asp:TextBox>
                        
                    </div>--%>
          <div class="form-group" style="border:thin solid #000000 ;border-radius:20px"">
                <center> <asp:Label ID="Label15" runat="server" Text="Area" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtArea"  class="form-control "   placeholder="Area" style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        
                    </div>

         

        


               </div>



        <div class="col-md-4" >
        <div class="form-group" style="border:thin solid #000000;border-radius:20px"">
          <center>   <asp:Label ID="Label2" runat="server" Text="pincode" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtpincode"  class="form-control "   placeholder="pincode" runat="server" ForeColor="#000066" style="text-align: center" Font-Bold="True"></asp:TextBox>
                        
                    </div>

           
             <div class="form-group" style="border:thin solid #000000;border-radius:20px"" >
               <center>  <asp:Label ID="Label1" runat="server" Text="Vehicle Types" Font-Bold="True"></asp:Label>  
                 <asp:CheckBoxList ID="cblvehicle" runat="server" class="form-check" CellSpacing="20"  >
                     <asp:ListItem>car</asp:ListItem>
                     <asp:ListItem></asp:ListItem>
                     <asp:ListItem>Bike/Scooter</asp:ListItem>
                     <asp:ListItem>Three wheeler</asp:ListItem>
                     <asp:ListItem></asp:ListItem>
                 </asp:CheckBoxList></center> 
                 
                    </div>
           

             <div class="form-group" style="border:thin solid #000000 ;border-radius:20px"">
              <center>   <asp:Label ID="Label4" runat="server" Text="State" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtstate" placeholder="State" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        
                    </div>

          


          <div class="form-group" style="border:thin solid #000000 ;border-radius:20px"">
              <center>   <asp:Label ID="Label3" runat="server" Text="City" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtcity"  class="form-control "   placeholder="City" style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        
                    </div>
           <%-- <div class="form-group" style="border:thin solid #000000 ;border-radius:20px"">
                <center> <asp:Label ID="Label15" runat="server" Text="Area" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtArea"  class="form-control "   placeholder="Area" style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        
                    </div>--%>


               </div>






          <div class="col-md-4" >


         <div class="form-group" style="border:thin solid #000000;border-radius:20px"" >
               <center>  <asp:Label ID="Label10" runat="server" Text="Charger Types" Font-Bold="True"></asp:Label>   
                <center>   <asp:Label ID="Label12" runat="server" Text="Rapid Charger-50KW+" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtrapid" placeholder="Rapid Charger-50KW+" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" TextMode="Number"></asp:TextBox>
                       <center>   <asp:Label ID="Label13" runat="server" Text="Fast Charger-30KW+" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtfast" placeholder="Fast Charger-30KW+" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" TextMode="Number"></asp:TextBox>
                        
                     <center>   <asp:Label ID="Label14" runat="server" Text="Slow Charger-10KW+" Font-Bold="True" style="text-align: center"  ></asp:Label>   </center>
                        <asp:TextBox ID="txtslow" placeholder="Slow Charger-10KW+" class="form-control  "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" TextMode="Number"></asp:TextBox>
                        
                     
                     
                 
                    </div>






              <div class="form-group" style="border:thin solid #000000;border-radius:20px"" >
                    <center> <asp:Label ID="Label11" runat="server" Text="Near By 6 Locations" Font-Bold="True"></asp:Label> 
                      
                        <asp:TextBox ID="txtloc1" placeholder="Location1" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        <asp:TextBox ID="txtloc2" placeholder="Location2" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        <asp:TextBox ID="txtloc3" placeholder="Location3" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        <asp:TextBox ID="txtloc4" placeholder="Location4" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        <asp:TextBox ID="txtloc5" placeholder="Location5" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        <asp:TextBox ID="txtloc6" placeholder="Location6" class="form-control "  style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        </center>
                    </div>


                <%--<div class="form-group" style="border:thin solid #000000 ;border-radius:20px"">
                 <asp:Label ID="Label15" runat="server" Text="Area" Font-Bold="True" style="text-align: center"  ></asp:Label>   
                        <asp:TextBox ID="txtArea"  class="form-control "   placeholder="Area" style="text-align: center" runat="server" ForeColor="#000066" Font-Bold="True" ></asp:TextBox>
                        
                    </div>--%>


               </div>


             </div>




   <center> <asp:Button ID="btnsave" runat="server" Text="Save" class="btn btn-raised waves-effect g-bg-cyan" OnClick="btnsave_Click" /></center>
           </div>
         </div>
        <div class="col-md-1"></div>
        </div>
    



</asp:Content>

