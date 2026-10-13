<%@ Page Title="Admin Register" Language="C#" AutoEventWireup="true" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Admin Register - TeaMart</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
        rel="stylesheet" />

    <style>
        body {
            background: #e9ecef;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 30px 15px;
            font-family: Arial, sans-serif;
        }

        .auth-card {
            background: #ffffff;
            border-radius: 15px;
            padding: 30px;
            width: 100%;
            max-width: 430px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .auth-card h3 {
            color: #1e293b;
            font-weight: 700;
            text-align: center;
            margin-bottom: 25px;
        }

        .form-label {
            font-size: 14px;
            font-weight: 600;
            color: #495057;
        }

        .form-control {
            padding: 10px;
            border-radius: 6px;
        }

        .text-danger-sm {
            display: block;
            color: #dc3545;
            font-size: 12px;
            margin-top: 4px;
            margin-bottom: 8px;
        }

        .btn-blue {
            background: #2563eb;
            color: #ffffff;
            width: 100%;
            padding: 11px;
            border-radius: 6px;
            font-weight: 700;
            border: none;
            margin-top: 12px;
        }

        .btn-blue:hover {
            background: #1d4ed8;
            color: #ffffff;
        }

        .login-link {
            text-decoration: none;
        }

        .register-footer {
            text-align: center;
            font-size: 14px;
            margin-top: 18px;
            margin-bottom: 0;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server" class="auth-card">

        <h3>Admin Register</h3>

        <!-- Full Name -->
        <div class="mb-2">
            <asp:Label ID="lblName" runat="server"
                AssociatedControlID="txtName"
                CssClass="form-label"
                Text="Full Name" />

            <asp:TextBox ID="txtName" runat="server"
                CssClass="form-control"
                placeholder="Admin Name" />

            <asp:RequiredFieldValidator ID="rfvName" runat="server"
                ControlToValidate="txtName"
                ErrorMessage="Full name is required"
                CssClass="text-danger-sm"
                Display="Dynamic" />
        </div>

        <!-- Email -->
        <div class="mb-2">
            <asp:Label ID="lblEmail" runat="server"
                AssociatedControlID="txtEmail"
                CssClass="form-label"
                Text="Email Address" />

            <asp:TextBox ID="txtEmail" runat="server"
                CssClass="form-control"
                TextMode="Email"
                placeholder="admin@example.com" />

            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required"
                CssClass="text-danger-sm"
                Display="Dynamic" />

            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                ErrorMessage="Enter a valid email address"
                CssClass="text-danger-sm"
                Display="Dynamic" />
        </div>

        <!-- Secret Admin Key -->
        <div class="mb-2">
            <asp:Label ID="lblAdminKey" runat="server"
                AssociatedControlID="txtAdminKey"
                CssClass="form-label"
                Text="Secret Admin Key" />

            <asp:TextBox ID="txtAdminKey" runat="server"
                CssClass="form-control"
                TextMode="Password"
                placeholder="Key Provided by SuperAdmin" />

            <asp:RequiredFieldValidator ID="rfvAdminKey" runat="server"
                ControlToValidate="txtAdminKey"
                ErrorMessage="Secret Admin Key is required"
                CssClass="text-danger-sm"
                Display="Dynamic" />
        </div>

        <!-- Password -->
        <div class="mb-2">
            <asp:Label ID="lblPassword" runat="server"
                AssociatedControlID="txtPassword"
                CssClass="form-label"
                Text="Password" />

            <asp:TextBox ID="txtPassword" runat="server"
                CssClass="form-control"
                TextMode="Password"
                placeholder="Create Password" />

            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required"
                CssClass="text-danger-sm"
                Display="Dynamic" />

            <asp:RegularExpressionValidator ID="revPassword" runat="server"
                ControlToValidate="txtPassword"
                ValidationExpression="^[\s\S]{6,}$"
                ErrorMessage="Password must be at least 6 characters"
                CssClass="text-danger-sm"
                Display="Dynamic" />
        </div>

        <!-- Confirm Password -->
        <div class="mb-3">
            <asp:Label ID="lblConfirm" runat="server"
                AssociatedControlID="txtConfirmPassword"
                CssClass="form-label"
                Text="Confirm Password" />

            <asp:TextBox ID="txtConfirmPassword" runat="server"
                CssClass="form-control"
                TextMode="Password"
                placeholder="Re-enter Password" />

            <asp:RequiredFieldValidator ID="rfvConfirm" runat="server"
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="Please confirm your password"
                CssClass="text-danger-sm"
                Display="Dynamic" />

            <asp:CompareValidator ID="cvPassword" runat="server"
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword"
                Operator="Equal"
                Type="String"
                ErrorMessage="Passwords do not match"
                CssClass="text-danger-sm"
                Display="Dynamic" />
        </div>

        <!-- Profile Picture -->
        <div class="mb-3">
            <asp:Label ID="lblPicture" runat="server"
                AssociatedControlID="fuProfilePicture"
                CssClass="form-label"
                Text="Profile Picture (Optional)" />

            <asp:FileUpload ID="fuProfilePicture" runat="server"
                CssClass="form-control" />
        </div>

        <!-- Register Button -->
        <asp:Button ID="btnRegister" runat="server"
            Text="Register Admin"
            CssClass="btn-blue"
            CausesValidation="true" />

        <p class="register-footer">
            Already registered?
            <asp:HyperLink ID="lnkLogin" runat="server"
                NavigateUrl="Login.aspx"
                CssClass="login-link"
                Text="Login" />
        </p>

    </form>
</body>
</html>
