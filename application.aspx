<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="application.aspx.cs" Inherits="application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="~/Styles/applicationStyles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 138px;
            text-align: right;
        }
        .style3
        {
            width: 138px;
            text-align: right;
            height: 21px;
        }
        .style4
        {
            height: 21px;
            text-align: left;
        }
        .style5
        {
            width: 138px;
            text-align: right;
            height: 29px;
        }
        .style6
        {
            height: 29px;
            text-align: left;
        }
        .style7
        {
            height: 21px;
            width: 178px;
        }
        .style8
        {
            width: 178px;
        }
        .style9
        {
            height: 29px;
            width: 178px;
        }
        .style10
        {
            text-align: left;
        }
        .style11
        {
            width: 138px;
            text-align: right;
            height: 26px;
        }
        .style12
        {
            width: 178px;
            height: 26px;
        }
        .style13
        {
            text-align: left;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div id="heading" >
    <h2>
    make sure all your information is correct and valid.
    </h2>
    </div>
    <div id="heading2">
    if you do not have a account click to Register
    </div>
   
&nbsp;
    <table class="style1">
        <tr>
            <td class="style3">
                Full names:</td>
            <td class="style7">
                <asp:TextBox ID="textBoxName" runat="server" MaxLength="50" Width="180px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
                    ControlToValidate="textBoxName" ErrorMessage="Enter full names" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Surname:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxSurname" runat="server" MaxLength="50" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxSurname" ErrorMessage="Enter Surname" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                ID Number:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxID" runat="server" MaxLength="13"  
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxID" ErrorMessage="Enter your ID number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Student Number:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxStudNum" runat="server" MaxLength="9"  
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxStudNum" ErrorMessage="Enter Student number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                NSFAS or Bursary?:</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownListFinance" runat="server" Width="180px">
                    <asp:ListItem>Nsfas</asp:ListItem>
                    <asp:ListItem>Bursary</asp:ListItem>
                    <asp:ListItem>Private</asp:ListItem>
                    <asp:ListItem Selected="True">select </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownListFinance" ErrorMessage="Select your payment type" 
                    ForeColor="Red" InitialValue="select "></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Email Address:</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxEmail" runat="server" MaxLength="30" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="enter email address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="invalid emaill address" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Gender:</td>
            <td class="style9">
                <asp:DropDownList ID="DropDownListGender" runat="server" Width="180px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem Selected="True">select </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownListGender" ErrorMessage="select gender" 
                    ForeColor="Red" InitialValue="select "></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Room type:</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownListRoom" runat="server" Width="180px">
                    <asp:ListItem>single</asp:ListItem>
                    <asp:ListItem>double</asp:ListItem>
                    <asp:ListItem Selected="True">select </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Create password:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxPword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxPword" ErrorMessage="Create password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Cornfirm password:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxCornfirmPW" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBoxCornfirmPW" ErrorMessage="cornform password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPword" ControlToValidate="TextBoxCornfirmPW" 
                    ErrorMessage="password not the same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
    </table>
    
    <asp:Button ID="BtnApply" runat="server" onclick="BtnApply_Click" 
        Text="Apply" />
<input id="Reset1" type="reset" value="reset" />
</asp:Content>

