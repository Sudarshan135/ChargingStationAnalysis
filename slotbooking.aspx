<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="slotbooking.aspx.cs" Inherits="slotbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="row" style="padding-left: 30px">
        <div class="col-md-8">

            <div class="card">
                <div class="card-header">
                    <center><h3>Slot Booking</h3></center>
                </div>
                <div class="row" style="padding-left: 30px; padding-right: 30px">








                    <form id="sign_up" class="col-xs-12" runat="server" action="#" method="post">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-account"></i>
                            </span>
                            <div class="form-line">
                                <asp:TextBox ID="txtsID" class="form-control" placeholder=" Station ID" runat="server" ReadOnly="True"></asp:TextBox>

                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-account"></i>
                            </span>
                            <div class="form-line">
                                <asp:TextBox ID="txtstation" class="form-control" placeholder=" Station Name" runat="server" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-account"></i>
                            </span>
                            <div class="form-line">
                                <asp:TextBox ID="txtCostomerN" class="form-control" placeholder=" Customer Name" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCostomerN" ErrorMessage="*" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-car"></i>
                            </span>
                            <div class="form-line">
                                <asp:TextBox ID="txtregistration" class="form-control" placeholder="Vehicle Number" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtregistration" ErrorMessage="*" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-car"></i>
                            </span>
                            <div class="form-line">

                                <asp:RadioButtonList ID="rblvehicle" runat="server" class="form-control" placeholder="Vehicle Types" RepeatDirection="Horizontal">
                                    <asp:ListItem>Car</asp:ListItem>
                                    <asp:ListItem>Bike/Scooter</asp:ListItem>
                                    <asp:ListItem>Three wheeler</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlcharingT" ErrorMessage="*" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>

                            </div>
                        </div>


                                     <div class="input-group">
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-battery-charging"></i>
                            </span>
                            <div class="form-line">
                                <asp:DropDownList ID="ddlcharingT" class="form-control" placeholder="Select charging Type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcharingT_SelectedIndexChanged">
                                    <asp:ListItem>Select charging Type</asp:ListItem>
                                    <asp:ListItem Value="rapidcharg">Rapid charging (50KWh)</asp:ListItem>
                                    <asp:ListItem Value="fastCharger">Fast charging (30KWh)</asp:ListItem>
                                    <asp:ListItem Value="slowcharger">Slow charging (10KWh)</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlcharingT" ErrorMessage="*" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                         <div class="input-group">
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-battery-charging"></i>
                            </span>
                            <div class="form-line">
                                <asp:RadioButtonList ID="rblchargMode" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblchargMode_SelectedIndexChanged" >
                                    <asp:ListItem >Amount</asp:ListItem>
                                    <asp:ListItem>Unit</asp:ListItem>
                                    
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlcharingT" ErrorMessage="*" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>

                            </div>
                        </div>


                          <div class="input-group">
                            <span class="input-group-addon">
                              <asp:Label ID="lblaU" runat="server" Text=" Add Amount or Unit"></asp:Label>
                            </span>
                            <div class="form-line">
                                <asp:TextBox ID="txtvalue" class="form-control" placeholder="" runat="server" TextMode="Number" AutoPostBack="True" OnTextChanged="txtvalue_TextChanged"></asp:TextBox>
                              
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtvalue" ErrorMessage="*" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">
                             <asp:Label ID="lbl" runat="server" Text="Unit or Amount"></asp:Label>
                            </span>
                            <div class="form-line">
                                <asp:Label ID="lblshowamount" runat="server" Text=""></asp:Label>

                            </div>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">Select Date 
                            </span>
                            <div class="form-line">
                                <asp:TextBox ID="txtSdate" class="form-control" placeholder="Select Date " onchange="checkDate()" runat="server" TextMode="Date" AutoPostBack="true" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSdate" ErrorMessage="*" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>
                               <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSdate" ErrorMessage="Don't select Previous Date" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" Font-Bold="true" Operator="GreaterThanEqual"  Type="Date" ValidationGroup="a"></asp:CompareValidator>


                            </div>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">Select Arrival Time
                            </span>
                            <div class="form-line">
                                <asp:TextBox ID="txtarrivalT" class="form-control" placeholder="Select Arrival Time" runat="server" TextMode="Time"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtarrivalT" ErrorMessage="*" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>

                            </div>
                        </div>


                        <div class="text-center">
                            <asp:Button ID="Button1" runat="server" class="btn btn-raised g-bg-cyan waves-effect" Text="Submit" OnClick="Button1_Click" ValidationGroup="a" />

                        </div>
                        <div class="text-center"><a href="SearchStation.aspx">Search Station</a></div>
                        <asp:HiddenField ID="hfunit" runat="server" />
                         <asp:HiddenField ID="hftime" runat="server" />
                         <asp:HiddenField ID="hfamount" runat="server" />
                    </form>
                </div>

                <div class="col-md-2"></div>

            </div>

        </div>

    </div>
</asp:Content>

