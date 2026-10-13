<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="TeaMart.Admin.AddUser" %>


<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">

    <style>
        .add-user-page {
            padding: 20px;
            min-height: 80vh;
            background: #f2f2f2;
        }

        .back-btn-wrapper {
            width: 90%;
            margin: 10px auto 20px auto;
        }

        .form-wrapper {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            width: 100%;
        }

        .container1 {
            width: 430px;
            max-width: 100%;
            background: #fff;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        .container1 h2 {
            text-align: center;
            margin: 0 0 20px;
            color: #333;
            font-size: 26px;
            font-weight: 600;
        }

        .container1 .form-control {
            display: block;
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
            background: #fff;
        }

        .container1 .form-control:focus {
            border-color: #86b7fe;
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.20);
        }

        .container1 textarea.form-control {
            min-height: 80px;
            resize: vertical;
        }

        .field-label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
            color: #333;
        }

        /* Blue Add User button */
        .container1 .btn-submit {
            display: block;
            width: 100%;
            padding: 11px;
            background-color: #0d6efd;
            color: #fff;
            border: 1px solid #0d6efd;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: background-color 0.2s ease;
        }

        .container1 .btn-submit:hover {
            background-color: #0b5ed7;
            border-color: #0a58ca;
        }

        .container1 .btn-submit:focus {
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(49, 132, 253, 0.5);
        }

        /* Blue Back to Users button */
        .back-users-btn {
            display: inline-block;
            padding: 9px 16px;
            background-color: #0d6efd;
            color: #fff !important;
            border: 1px solid #0d6efd;
            border-radius: 5px;
            text-decoration: none !important;
            font-size: 14px;
            transition: background-color 0.2s ease;
        }

        .back-users-btn:hover {
            background-color: #0b5ed7;
            border-color: #0a58ca;
            color: #fff !important;
        }

        .validation-error {
            display: block;
            color: #dc3545;
            font-size: 12px;
            margin: -5px 0 10px;
        }

        .status-control {
            display: block;
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            background: #fff;
        }

        .form-message {
            display: block;
            margin-bottom: 12px;
            text-align: center;
        }

        @media (max-width: 576px) {
            .add-user-page {
                padding: 10px;
            }

            .container1 {
                padding: 18px;
            }

            .back-btn-wrapper {
                width: 100%;
            }
        }
    </style>

    <script type="text/javascript">
        function validateUserForm() {
            var password = document.getElementById('<%= txtPassword.ClientID %>').value;
            var confirmPassword = document.getElementById('<%= txtConfirmPassword.ClientID %>').value;
    var fileInput = document.getElementById('<%= fuProfilePicture.ClientID %>');

    if (typeof (Page_ClientValidate) === 'function') {
        if (!Page_ClientValidate('AddUser')) {
            return false;
        }
    }

    if (password !== confirmPassword) {
        alert('Password and Confirm Password do not match.');
        return false;
    }

    if (fileInput.value !== '') {
        var extension = fileInput.value.split('.').pop().toLowerCase();
        var allowedExtensions = ['jpg', 'jpeg', 'png', 'webp'];

        if (allowedExtensions.indexOf(extension) === -1) {
            alert('Only JPG, JPEG, PNG and WEBP images are allowed.');
            return false;
        }
    }

    return true;
}
</script>

</asp:Content>


<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">

    <div class="add-user-page">

        <div class="back-btn-wrapper">
            <a href="<%= ResolveUrl("~/Admin/Users.aspx") %>"
               class="back-users-btn">
                &larr; Back to Users
            </a>
        </div>

        <div class="form-wrapper">

            <div class="container1">

                <h2>Add User</h2>

                <asp:Label ID="lblMessage" runat="server"
                    CssClass="form-message" />

                <asp:ValidationSummary ID="vsUser" runat="server"
                    ValidationGroup="AddUser"
                    CssClass="validation-error"
                    HeaderText="Please correct the following errors:" />

                <div>
                    <label class="field-label">Profile Picture</label>
                    <asp:FileUpload ID="fuProfilePicture" runat="server"
                        CssClass="form-control" />
                </div>

                <div>
                    <label class="field-label">First Name</label>
                    <asp:TextBox ID="txtFirstName" runat="server"
                        CssClass="form-control"
                        placeholder="Enter first name"
                        MaxLength="100" />

                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                        ControlToValidate="txtFirstName"
                        ErrorMessage="First name is required."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />
                </div>

                <div>
                    <label class="field-label">Last Name</label>
                    <asp:TextBox ID="txtLastName" runat="server"
                        CssClass="form-control"
                        placeholder="Enter last name"
                        MaxLength="100" />

                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                        ControlToValidate="txtLastName"
                        ErrorMessage="Last name is required."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />
                </div>

                <div>
                    <label class="field-label">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server"
                        CssClass="form-control"
                        TextMode="Email"
                        placeholder="Enter email address"
                        MaxLength="150" />

                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email is required."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />

                    <asp:RegularExpressionValidator ID="revEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Enter a valid email address."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />
                </div>

                <div>
                    <label class="field-label">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server"
                        CssClass="form-control"
                        TextMode="Password"
                        placeholder="Enter password"
                        MaxLength="100" />

                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="Password is required."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />
                </div>

                <div>
                    <label class="field-label">Confirm Password</label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server"
                        CssClass="form-control"
                        TextMode="Password"
                        placeholder="Confirm password"
                        MaxLength="100" />

                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ErrorMessage="Please confirm your password."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />

                    <asp:CompareValidator ID="cvPassword" runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ControlToCompare="txtPassword"
                        ErrorMessage="Passwords do not match."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />
                </div>

                <div>
                    <label class="field-label">Phone Number</label>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"
                        CssClass="form-control"
                        placeholder="Enter phone number"
                        MaxLength="15" />

                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server"
                        ControlToValidate="txtPhoneNumber"
                        ErrorMessage="Phone number is required."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />
                </div>

                <div>
                    <label class="field-label">Address</label>
                    <asp:TextBox ID="txtAddress" runat="server"
                        CssClass="form-control"
                        TextMode="MultiLine"
                        Rows="3"
                        placeholder="Enter address"
                        MaxLength="500" />

                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
                        ControlToValidate="txtAddress"
                        ErrorMessage="Address is required."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />
                </div>

                <div>
                    <label class="field-label">Pincode</label>
                    <asp:TextBox ID="txtPincode" runat="server"
                        CssClass="form-control"
                        placeholder="Enter 6-digit pincode"
                        MaxLength="6" />

                    <asp:RequiredFieldValidator ID="rfvPincode" runat="server"
                        ControlToValidate="txtPincode"
                        ErrorMessage="Pincode is required."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />

                    <asp:RegularExpressionValidator ID="revPincode" runat="server"
                        ControlToValidate="txtPincode"
                        ValidationExpression="^[0-9]{6}$"
                        ErrorMessage="Pincode must contain exactly 6 digits."
                        CssClass="validation-error"
                        ValidationGroup="AddUser"
                        Display="Dynamic" />
                </div>

                <div>
                    <label class="field-label">Status</label>
                    <asp:DropDownList ID="ddlStatus" runat="server"
                        CssClass="status-control">
                        <asp:ListItem Text="Active" Value="active" />
                        <asp:ListItem Text="Inactive" Value="inactive" />
                    </asp:DropDownList>
                </div>

                <asp:Button ID="btnAddUser" runat="server"
                    Text="Add User"
                    CssClass="btn-submit"
                    ValidationGroup="AddUser"
                    CausesValidation="true"
                    OnClientClick="return validateUserForm();" />

            </div>

        </div>

    </div>

</asp:Content>
