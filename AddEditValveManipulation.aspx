﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEditValveManipulation.aspx.cs" Inherits="IncidentManagement.AddValveManipulation" %>

<!DOCTYPE html>

<html>
<head>
    <title>Incidents Report Management System</title>   
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function RefreshParent() {
            if (window.opener != null && !window.opener.closed) {
                alert("Record has saved successfully!");
                window.opener.location.reload();
                window.close();
            }
        }
        function CloseMe() {
            //if (window.opener != null && !window.opener.closed) {
                window.close();
            //}
        }
    </script>
</head>
<body>
    <h2>Add New Valve Manipulation Table</h2>
    <div>
        <form id="formMethod" runat="server" class="form-group">
            <table style="width: 500px" class="table table-striped table-bordered table-condensed">
                <tr><td>
                    <asp:Label ID="lblErr" Visible="false" runat="server" ForeColor="Red"></asp:Label></td></tr>
                <tr>
                    <td style="width: 10%">Location</td>
                    <td>
                        <asp:TextBox ID="txtLocation" Width="90%" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 10%">Size</td>
                    <td>
                        <asp:TextBox ID="txtSize" Width="90%" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 10%">Present Status</td>
                    <td>
                        <asp:TextBox ID="txtPresentStatus" Width="90%" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 10%">Proposed Status</td>
                    <td>
                        <asp:TextBox ID="txtProposedStatus" Width="90%" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 10%">Status After Activity</td>
                    <td>
                        <asp:TextBox ID="txtStatusAfActivity" Width="90%" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Create Valve Manipulation" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnClose" runat="server" CssClass="btn btn-primary" Text="Close" OnClick="btnClose_Click" />
                    </td>
                </tr>
            </table>



        </form>
    </div>
</body>
</html>
