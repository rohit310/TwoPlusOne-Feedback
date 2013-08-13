<%@ page title="User Registration" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="_UserRegistration, App_Web_3irfp2u0" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%" class="table-striped">
        <tr>
            <td>
                <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="2" Width="80%">
                    <cc1:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
                        <HeaderTemplate>
                            <div style="width: 100px; height: 30px;">Individual Registration</div>
                        </HeaderTemplate>

                        <ContentTemplate>
                            <table width="60%">
                                <tr>
                                    <td align="right">Full Name</td>
                                    <td align="left">
                                        <asp:TextBox ID="txtName" runat="server" MaxLength="50" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Full Name" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">UserName</td>
                                    <td align="left">
                                        <asp:TextBox ID="txtUserName" runat="server" MaxLength="50" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter UserName" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">Password</td>
                                    <td align="left">
                                        <asp:TextBox ID="txtPassword" runat="server" MaxLength="50" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td align="left">
                                        <asp:Button ID="btnSaveIndividual" runat="server" Text="Save" ClientIDMode="Static" class="btn btn-default" OnClick="btnSaveIndividual_Click" ValidationGroup="1" /></td>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="1" ShowMessageBox="true" ShowSummary="false" />

                                </tr>
                            </table>
                        </ContentTemplate>
                    </cc1:TabPanel>
                    <cc1:TabPanel runat="server" HeaderText="TabPanel2" ID="TabPanel2">
                        <HeaderTemplate>
                            Bulk Registration
                        </HeaderTemplate>
                        <ContentTemplate>
                            <table width="100%">
                                <tr>
                                    <td>
                                        <asp:Button ID="btnDownloadExcel" runat="server" Text="Download Excel" OnClick="btnDownloadExcel_Click" />

                                    </td>
                                    <td>
                                        <asp:FileUpload ID="fuFile" runat="server" />
                                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:GridView ID="gvRegistration" runat="server"></asp:GridView>

                                    </td>

                                </tr>
                            </table>
                        </ContentTemplate>
                    </cc1:TabPanel>
                    <cc1:TabPanel runat="server" HeaderText="TabPanel2" ID="TabPanel3">
                        <HeaderTemplate>
                            Assign Users
                        </HeaderTemplate>
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td align="right">Year</td>
                                    <td align="left">
                                        <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td align="right">Month</td>
                                    <td align="left">
                                        <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td align="right"></td>
                                    <td align="left">
                                        <asp:Button ID="btnShow" runat="server" Text="Show" class="btn btn-default" OnClick="btnShow_Click" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:GridView ID="gvUsersforAssignUsers" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table table-condensed">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Feedback From" ItemStyle-Width="20%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFromUserId" runat="server" Text='<%#Eval("FromUserId") %>'></asp:Label>
                                                        <%--<asp:TextBox ID="txtFromUserId" runat="server" Text='<%#Eval("FromUserId") %>' Visible="false"></asp:TextBox>--%>
                                                    </ItemTemplate>

                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Feedback To" ItemStyle-Width="40%">
                                                    <ItemTemplate>
                                                        <div style="width: 300px">
                                                            <asp:Label ID="lblToUserId" runat="server" Text='<%#Eval("ToUserId") %>'></asp:Label>
                                                            <asp:TextBox ID="txtToUserId" Width="300px" runat="server" Text='<%#Eval("ToUserId") %>' Visible="false" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </ItemTemplate>

                                                </asp:TemplateField>
                                                <asp:TemplateField ItemStyle-Width="40%">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btnEdit" runat="server" Text="Edit" class="btn btn-default" OnClick="btnEdit_Click" Visible='<%#Eval("Visibility") %>' />

                                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Visible="false" class="btn btn-default" OnClick="btnUpdate_Click" />
                                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Visible="false" class="btn btn-default" OnClick="btnCancel_Click" />
                                                        <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>' ForeColor="Red"></asp:Label>
                                                    </ItemTemplate>

                                                </asp:TemplateField>
                                            </Columns>

                                        </asp:GridView>

                                    </td>

                                </tr>
                            </table>

                        </ContentTemplate>

                    </cc1:TabPanel>
                </cc1:TabContainer>
            </td>

        </tr>

    </table>
</asp:Content>

