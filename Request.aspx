<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="Onyango_estates.Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script language="javascript">
    function OtherSel()
    {
        var val=window.event.srcElement.value;
        if(val=='Other')
        { 
            other.style.display='block';
            document.getElementById('ctl00_ContentPlaceHolder1_txtOther').focus();
        } 
        else 
        {
            other.style.display='none';
            document.getElementById('ctl00_ContentPlaceHolder1_txtOther').value='';
        }
    }
            </script>
        <table align="center" style="font-weight: bold; text-align: left;">
            <tr>
                <td align="center" colspan="3" bgcolor="blue">
                    Estate Request Entry</td>
            </tr>
            <tr>
                <td align="left" bgcolor="blue">
                    Area</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlArea" runat="server">
                        <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                        <asp:ListItem>Maasai Road</asp:ListItem>
                        <asp:ListItem>University Road</asp:ListItem>
                        <asp:ListItem>Mbagathi Road</asp:ListItem>
                        <asp:ListItem>Magadi Road</asp:ListItem>
                        <asp:ListItem>Olerai Road</asp:ListItem>
                        <asp:ListItem>Langata Road</asp:ListItem>
                        <asp:ListItem>Tasya Road</asp:ListItem>
                        <asp:ListItem>Kiserian </asp:ListItem>
                        <asp:ListItem>Asyaana Area</asp:ListItem>
                        <asp:ListItem>Ole Kasasi road</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="ddlArea"
                        Display="Dynamic" ErrorMessage="Select Estate Area" Operator="NotEqual" SetFocusOnError="True"
                        ValueToCompare="0">*</asp:CompareValidator></td>
            </tr>
            <tr id="other" style="display:none">
                <td align="left" bgcolor="blue">
                    Other Area</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtOther" runat="server" MaxLength="30" Width="187px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left" bgcolor="blue">
                    Type</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlType" runat="server">
                        <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                        <asp:ListItem>Flat</asp:ListItem>
                        <asp:ListItem>Tenament</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ddlType"
                        Display="Dynamic" ErrorMessage="Select Estate Type" Operator="NotEqual" SetFocusOnError="True"
                        ValueToCompare="0">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td align="left" bgcolor="blue">
                    Construction</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlConstruction" runat="server">
                        <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                        <asp:ListItem>1 BHK</asp:ListItem>
                        <asp:ListItem>2 BHK</asp:ListItem>
                        <asp:ListItem>3 BHK</asp:ListItem>
                        <asp:ListItem>4 BHK</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="ddlConstruction"
                        Display="Dynamic" ErrorMessage="Select Estate Construction" Operator="NotEqual"
                        SetFocusOnError="True" ValueToCompare="0">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td align="left" bgcolor="blue">
                    Estimate Budget</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlBudget" runat="server">
                        <asp:ListItem Selected="True" Value="0">--Select(In Lac)--</asp:ListItem>
                        <asp:ListItem Value="1">Less Than 10</asp:ListItem>
                        <asp:ListItem Value="2">10 - 15</asp:ListItem>
                        <asp:ListItem Value="3">15 - 20</asp:ListItem>
                        <asp:ListItem Value="4">20 - 25</asp:ListItem>
                        <asp:ListItem Value="5">25 - 30</asp:ListItem>
                        <asp:ListItem Value="6">More Than 30</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="ddlBudget"
                        Display="Dynamic" ErrorMessage="Select Estate Budget" Operator="NotEqual" SetFocusOnError="True"
                        ValueToCompare="0">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblDuplicate" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" colspan="3" bgcolor="#ffccff">
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Text="Submit" 
                        Width="76px" OnClick="btnSubmit_Click" style="height: 25px" /></td>
            </tr>
        </table>
    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" />
        </div>
    </form>
</body>
</html>       