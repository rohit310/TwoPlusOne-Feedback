<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="_Default, App_Web_3irfp2u0" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Error" runat="server" visible="false">
        UnAuthorized Access
    </div>

    <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Width="80%">
        <cc1:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <HeaderTemplate>
                <div style="width: 100px; height: 30px;">Current</div>
            </HeaderTemplate>

            <ContentTemplate>
                <div id="Welcome" runat="server" visible="false">
                    Welcome 
    <asp:Label ID="lbltext" runat="server" Font-Bold="true"></asp:Label>

                </div>
                <div id="Feedback" runat="server" visible="false">

                    <table style="width: 60%">
                        <tr>
                            <td align="right">Good 1</td>
                            <td align="left">
                                <asp:TextBox ID="txtGood1" class="form-control" runat="server" TextMode="MultiLine" Style="resize: none;" Height="70px" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Good Feedback" Text="*" ValidationGroup="1" ControlToValidate="txtGood1"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">Good 2</td>
                            <td align="left">
                                <asp:TextBox ID="txtGood2" class="form-control" runat="server" TextMode="MultiLine" Style="resize: none;" Height="70px" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Second Good Feedback" Text="*" ValidationGroup="1" ControlToValidate="txtGood2"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right">Bad/Improvement</td>
                            <td align="left">
                                <asp:TextBox ID="txtBad" class="form-control" runat="server" TextMode="MultiLine" Style="resize: none;" Height="70px" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Bad/Improvement Feedback" Text="*" ValidationGroup="1" ControlToValidate="txtBad"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right"></td>
                            <td align="left">
                                <asp:Button ID="btnSave" CssClass="btn btn-default" runat="server" Text="Submit Feedback" OnClick="btnSave_Click" ValidationGroup="1" />
                                <asp:HiddenField ID="hfFromUserId" runat="server" />
                                <asp:HiddenField ID="hfToUserId" runat="server" />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="1" ShowMessageBox="true" ShowSummary="false" />
                            </td>
                        </tr>
                    </table>

                </div>
            </ContentTemplate>
        </cc1:TabPanel>
        <cc1:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel2">
            <HeaderTemplate>
                <div style="width: 100px; height: 30px;">Feedback History</div>
            </HeaderTemplate>
            <ContentTemplate>
                <asp:GridView ID="gvFeedbackHistory" runat="server" Width="100%" AutoGenerateColumns="false" CssClass="table">
                    <Columns>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <span style="font-weight:bold;"><%# Container.DataItemIndex+1 %>.</span>
                                <asp:Label ID="lblText" runat="server" Text='<%# Eval("Text") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Good1">
                            <ItemTemplate>
                                <asp:Label ID="lblGood1" runat="server" Text='<%# Eval("Good1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Good2">
                            <ItemTemplate>
                                <asp:Label ID="lblGood2" runat="server" Text='<%# Eval("Good2") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bad">
                            <ItemTemplate>
                                <asp:Label ID="lblBad" runat="server" Text='<%# Eval("Bad") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>


            </ContentTemplate>
        </cc1:TabPanel>
    </cc1:TabContainer>

</asp:Content>

