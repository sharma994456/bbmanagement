﻿<%@ Page Title="" Language="C#" MasterPageFile="akshara.master"
    AutoEventWireup="true" CodeFile="bloodtype.aspx.cs" Inherits="bloodtype" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 290px;
        }
        .auto-style3 {
            width: 189px;
        }
        .auto-style4 {
            position: relative;
            display: table;
            border-collapse: separate;
            left: 0px;
            top: 0px;
            height: 201px;
        }
        .auto-style5 {
            width: 189px;
            height: 74px;
        }
        .auto-style6 {
            height: 74px;
        }
        .auto-style8 {
            width: 141px;
        }
        .auto-style9 {
            width: 141px;
            height: 74px;
        }
        .auto-style10 {
            width: 141px;
            height: 58px;
        }
        .auto-style11 {
            width: 189px;
            height: 58px;
        }
        .auto-style12 {
            height: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="padding100">s
        <div class="container">
            <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                     
                     <div class="panel-title">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; البحث عن فصيله </div>
                    </div>
                    <div style="padding-top: 30px" class="panel-body">
                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12">
                        </div>
                        <div id="loginform" class="form-horizontal" role="form">
                           
                            <div class="auto-style4">
                               
                                <table class="auto-style2">
                                    <tr>
                                        <td class="auto-style10">
                                        </td>
                                        <td class="auto-style11">
                                            <asp:DropDownList ID="drpGovernorate" runat="server" Height="30px" Width="189px" AutoPostBack="True" OnSelectedIndexChanged="drpGovernorate_SelectedIndexChanged" DataValueField="Address_id" DataTextField="Governrate">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style12">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <div class="label1">
                                            <asp:Label ID="Label1" runat="server" Text="اختر المحافظه"></asp:Label>
                                                 </div>
                                            &nbsp;</td>
                                        <td class="auto-style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            &nbsp;</td>
                                        <td class="auto-style5">
                                            <asp:DropDownList ID="drpCity" runat="server" Height="30px" Width="192px" DataValueField="City_id" DataTextField="City_Name">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style6">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <div class="label2">
                                            <asp:Label ID="Label2" runat="server" Text="اختر المركز  "></asp:Label>
                                                </div>
                                            &nbsp;</td>
                                        <td class="auto-style6"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            &nbsp;</td>
                                        <td class="auto-style5">
                                            &nbsp;&nbsp;
                                            <asp:DropDownList ID="drpBloodType" runat="server" Height="30px" Width="190px" CssClass="auto-style7" DataSourceID="BloodDs" DataTextField="Blood_Type" DataValueField="Blood_Id" >
                                                <asp:ListItem>A</asp:ListItem>
                                                <asp:ListItem>B</asp:ListItem>
                                                <asp:ListItem>AB</asp:ListItem>
                                                <asp:ListItem>O+</asp:ListItem>
                                                <asp:ListItem>O-</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="BloodDs" runat="server" ConnectionString="Data Source=islam;Initial Catalog=OurProjectBloodBank;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Blood_Type]"></asp:SqlDataSource>
                                            &nbsp;</td>
                                        <td class="auto-style6">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <div class="label3">
                                            <asp:Label ID="Label3" runat="server" Text="اختر الفصليه"></asp:Label>
                                                 </div>
                                            &nbsp;</td>
                                        <td class="auto-style6"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Text="ok" CssClass="btn btn-success" BackColor="#CC3300" Width="70px" OnClick="Button2_Click1"  />
                                            <br />
                                            <br />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">
                                            &nbsp;</td>
                                        <td colspan="3">
                                            
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div style="margin-top: 10px" class="form-group">
                               
                            </div>
                            <div class="form-group">
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <asp:GridView ID="GridView1" runat="server" Width="340px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="3" Font-Size="Large" HorizontalAlign="Center">
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                            </asp:GridView>
            <div id="signupbox" style="display: none; margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Sign Up</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px">
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="signupform" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="email" class="col-md-3 control-label">
                                    Email</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="firstname" class="col-md-3 control-label">
                                    First Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">
                                    Last Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">
                                    Password</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>                           
                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">
                                    <button id="btn-signup" type="button" class="btn btn-info">
                                        <i class="icon-hand-right"></i>&nbsp Sign Up</button>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>


