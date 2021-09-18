<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ValidateForm.WebForm1" %>

<!DOCTYPE html>
<style>
    * {
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        font-size: 1em;
        letter-spacing: .5px;
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
</head>

<body>
    <ul class="nav nav-tabs nav-fill">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="WebForm1.aspx">Form</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled" href="#">David Peña Avila</a>
        </li>
    </ul>
    <section class="d-flex justify-content-center mb-4 mt-5">
        <div class="card shadow-lg p-3 m-3 col-lg-8 col-12">
            <form id="form1" runat="server">
                <div class="p-4">
                    <div class="mb-4 text-center">
                        <asp:Label ID="lblHeader" runat="server" Text="Complete the form" CssClass="h3"></asp:Label>
                    </div>
                    <div class="row mb-2">
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label1" runat="server" Text="Username: " CssClass="myClass"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Campo requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Only strings allowed!" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]*$">*</asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="bg-light form-control" MaxLength="10"></asp:TextBox>
                        </div>
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCPassword" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtCPassword" ControlToValidate="txtPassword" ErrorMessage="Passwords must match" ForeColor="Red">*</asp:CompareValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="bg-light form-control" MaxLength="12" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label3" runat="server" Text="Confirm Password: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCPassword" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtCPassword" runat="server" CssClass="bg-light form-control" MaxLength="12" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label4" runat="server" Text="Email: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="bg-light form-control" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label5" runat="server" Text="Last Name: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLastName" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Only Strings allowed" ForeColor="Red" ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="bg-light form-control"></asp:TextBox>
                        </div>
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label6" runat="server" Text="Name: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtName" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Only Strings allowed" ForeColor="Red" ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtName" runat="server" CssClass="bg-light form-control"></asp:TextBox>
                        </div>
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label7" runat="server" Text="Country: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="bg-light form-control">
                                <asp:listitem text="Select country" value="default"></asp:listitem>
                                <asp:listitem text="Colombia" value="Colombia"></asp:listitem>
                                <asp:listitem text="Venezuela" value="Venezuela"></asp:listitem>
                                <asp:listitem text="Argentina" value="Argentina"></asp:listitem>
                                <asp:listitem text="Ecuador" value="Ecuador"></asp:listitem>
                                <asp:listitem text="Bolivia" value="Bolivia"></asp:listitem>
                            </asp:DropDownList>
                        </div>
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label8" runat="server" Text="Department: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDpto" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtDpto" runat="server" CssClass="bg-light form-control"></asp:TextBox>
                        </div>
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label9" runat="server" Text="ZIP Code: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtZIP" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtZIP" runat="server" CssClass="bg-light form-control"></asp:TextBox>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtZIP" ErrorMessage="it has to be multiple of 5" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">Its not multiple of 5</asp:CustomValidator>
                        </div>
                        <div class="col col-md-6 mt-3">
                            <asp:Label ID="Label11" runat="server" Text="Birthdate: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtBirthdate" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtBirthdate" runat="server" CssClass="bg-light form-control" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="col col-md-12 mt-3">
                            <asp:Label ID="Label10" runat="server" Text="Genre: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <div>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="col col-md-12 mt-3">
                            <div>
                                <asp:Label ID="Label12" runat="server" Text="Comments: "></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtComments" ErrorMessage="Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </div>
                            <asp:TextBox id="txtComments" runat="server" TextMode="MultiLine" CssClass="comments bg-light form-control" maxlength="1200" Rows="5" Columns="30" wrap="true"  />
                        </div>
                        <div class="col col-md-12 mt-3">
                            <asp:Label ID="Label13" runat="server" Text="Accept Terms & Conditions: "></asp:Label>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            <asp:Label ID="Label14" runat="server" CssClass="alert-danger"></asp:Label>
                        </div>
                        <div class="col col-md-12 mt-3">
                            <asp:Button ID="btnForm" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit" />
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
</body>
</html>
