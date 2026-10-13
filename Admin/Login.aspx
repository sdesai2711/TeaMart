<%@ Page Title="Admin Login" Language="C#" AutoEventWireup="true" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Admin Login - TeaMart</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
        rel="stylesheet" />

    <style>
        body {
            background: #e9ecef;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 15px;
            font-family: Arial, sans-serif;
        }

        .login-container {
            width: 100%;
            max-width: 430px;
            padding: 30px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            color: #1e293b;
            font-weight: 700;
            margin-bottom: 25px;
        }

        .form-label {
            font-weight: 600;
            font-size: 14px;
            color: #495057;
        }

        .form-control {
            margin-bottom: 5px;
            padding: 10px;
            border-radius: 6px;
        }

        .text-danger-sm {
            display: block;
            color: #dc3545;
            font-size: 13px;
            margin-bottom: 10px;
        }

        .btn-login {
            width: 100%;
            padding: 11px;
            background: #2563eb;
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: 700;
            margin-top: 10px;
        }

        .btn-login:hover {
            background: #1d4ed8;
        }

        .forgot {
            display: block;
            text-align: right;
            margin: 10px 0;
            font-size: 14px;
            text-decoration: none;
        }

        .signup-text {
            text-align: center;
            margin-top: 18px;
            margin-bottom: 0;
            font-size: 14px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server" class="login-container">

        <h3>Admin Login</h3>

        <div class="mb-3">
            <asp:Label ID="lblEmail" runat="server"
                AssociatedControlID="txtEmail"
                CssClass="form-label"
                Text="Email Address" />

            <asp:TextBox ID="txtEmail" runat="server"
                CssClass="form-control"
                TextMode="Email"
                placeholder="admin@teamart.com" />

            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Enter your email"
                CssClass="text-danger-sm"
                Display="Dynamic" />

            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                ErrorMessage="Enter a valid email address"
                CssClass="text-danger-sm"
                Display="Dynamic" />
        </div>

        <div class="mb-2">
            <asp:Label ID="lblPassword" runat="server"
                AssociatedControlID="txtPassword"
                CssClass="form-label"
                Text="Password" />

            <asp:TextBox ID="txtPassword" runat="server"
                CssClass="form-control"
                TextMode="Password"
                placeholder="Enter your password" />

            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Enter your password"
                CssClass="text-danger-sm"
                Display="Dynamic" />
        </div>

        <a href="#" class="forgot">Forgot password?</a>

        <asp:Button ID="btnLogin" runat="server"
            Text="Login"
            CssClass="btn-login"
            PostBackUrl="Dashboard.aspx" />

        <p class="signup-text">
            If you are not registered,
            <asp:HyperLink ID="lnkRegister" runat="server"
                NavigateUrl="Register.aspx"
                Text="Sign Up" />
        </p>

    </form>
</body>
</html>
