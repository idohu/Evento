<%@ Page Title="" Language="C#" MasterPageFile="~/EventoWeb.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Evento.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 74px;
        }

        .auto-style3 {
            width: 56%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        Hi UserName,
    </div>
    <div>
        <table width="100%">
            <tr>
                <td class="auto-style3">
                    <table width="100%" class="table-background">
                        <tr>
                            <td>Up Coming Events</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Repeater runat="server" ID="rptr_UpComing">
                                    <ItemTemplate>
                                        <div class="rptr-event">
                                            <table width="100%">
                                                <tr>
                                                    <td width="90%">
                                                        <label id="EventName">ddd</label>
                                                    </td>
                                                    <td align="right">
                                                        <img src="~/Images/arrowhead.png" height="20px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </table>
                </td>
                <td rowspan="2" class="table-background">
                    <table width="100%">
                        <tr>
                            <td colspan="2">New Event</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text="Time"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlStartTimeHr" runat="server" CssClass="DropDown" Width="44px">
                                    <asp:ListItem Text="0" Value="00" />
                                    <asp:ListItem Text="1" Value="01" Selected="True" />
                                    <asp:ListItem Text="2" Value="02" />
                                    <asp:ListItem Text="3" Value="03" />
                                    <asp:ListItem Text="4" Value="04" />
                                    <asp:ListItem Text="5" Value="05" />
                                    <asp:ListItem Text="6" Value="06" />
                                    <asp:ListItem Text="7" Value="07" />
                                    <asp:ListItem Text="8" Value="08" />
                                    <asp:ListItem Text="9" Value="09" />
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="11" Value="11" />
                                    <asp:ListItem Text="12" Value="12" />
                                    <asp:ListItem Text="13" Value="13" />
                                    <asp:ListItem Text="14" Value="14" />
                                    <asp:ListItem Text="15" Value="15" />
                                    <asp:ListItem Text="16" Value="16" />
                                    <asp:ListItem Text="17" Value="17" />
                                    <asp:ListItem Text="18" Value="18" />
                                    <asp:ListItem Text="19" Value="19" />
                                    <asp:ListItem Text="20" Value="20" />
                                    <asp:ListItem Text="21" Value="21" />
                                    <asp:ListItem Text="22" Value="22" />
                                    <asp:ListItem Text="23" Value="23" />

                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlStartTimeMin" runat="server" CssClass="DropDown" Width="44px">
                                    <asp:ListItem Text="00" Value="00" Selected="True" />
                                    <asp:ListItem Text="05" Value="05" />
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="15" Value="15" />
                                    <asp:ListItem Text="20" Value="20" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="30" Value="30" />
                                    <asp:ListItem Text="35" Value="35" />
                                    <asp:ListItem Text="40" Value="40" />
                                    <asp:ListItem Text="45" Value="45" />
                                    <asp:ListItem Text="50" Value="50" />
                                    <asp:ListItem Text="55" Value="55" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Button runat="server" OnClick="CreateNewEvent" Text="Submit" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <table width="100%" class="table-background">
                        <tr>
                            <td>Previous Events</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Repeater runat="server" ID="rptr_Previous">
                                    <ItemTemplate>
                                        <div class="rptr-event">
                                            <table width="100%">
                                                <tr>
                                                    <td width="90%">
                                                        <label id="EventName">ddd</label>
                                                    </td>
                                                    <td align="right">
                                                        <img src="~/Images/arrowhead.png" height="20px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div class="table-background">
        <table>
            <tr>
                <td colspan="4">Reports</td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
    </div>

</asp:Content>
