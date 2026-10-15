<%@ Page Title="Login - TeaMart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TeaMart.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-bg {
            background: linear-gradient(rgba(255, 255, 255, 0.78), rgba(255, 255, 255, 0.78)), url('https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=1400');
            background-size: cover;
            background-position: center;
            min-height: 90vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 60px 20px;
        }

        .login-card {
            background-color: #FFFFFF;
            border-radius: 20px;
            box-shadow: 0 16px 45px rgba(0, 0, 0, 0.12);
            border: 1px solid #ECEAE4;
            width: 100%;
            max-width: 480px;
            padding: 50px 42px;
            text-align: center;
        }

        .login-icon-box {
            width: 60px;
            height: 60px;
            background-color: #E8F5E9;
            color: #1E4D2B;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 26px;
            margin-bottom: 16px;
        }

        .login-title {
            font-size: 26px;
            font-weight: 800;
            color: #1E4D2B;
            margin-bottom: 6px;
        }

        .login-subtitle {
            font-size: 14px;
            color: #718096;
            margin-bottom: 24px;
        }

        .input-group-custom {
            position: relative;
            margin-bottom: 18px;
            text-align: left;
        }

            .input-group-custom label {
                font-size: 13px;
                font-weight: 700;
                color: #2D3748;
                margin-bottom: 8px;
                display: block;
            }

        .input-box-wrapper {
            position: relative;
            display: flex;
            align-items: center;
        }

            .input-box-wrapper i {
                position: absolute;
                left: 16px;
                color: #A0AEC0;
                font-size: 15px;
                z-index: 1;
            }

            .input-box-wrapper input {
                width: 100%;
                background-color: #F1F3F0;
                border: 1.5px solid transparent;
                border-radius: 10px;
                padding: 13px 16px 13px 46px;
                font-size: 14px;
                color: #2D3748;
                outline: none;
                transition: 0.2s;
                box-sizing: border-box;
            }

                .input-box-wrapper input:focus {
                    background-color: #FFFFFF;
                    border-color: #1E4D2B;
                }

        .options-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 13px;
            margin-bottom: 24px;
        }

            .options-row a {
                color: #718096;
                text-decoration: none;
            }

                .options-row a:hover {
                    color: #1E4D2B;
                }

        .btn-login-dark {
            background-color: #153E26;
            color: #FFFFFF !important;
            font-size: 15px;
            font-weight: 700;
            padding: 14px 0;
            border-radius: 10px;
            width: 100%;
            border: none;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            transition: 0.2s;
            cursor: pointer;
        }

            .btn-login-dark:hover {
                background-color: #0E2B1A;
                color: #FFFFFF;
            }

        .text-danger-sm {
            color: #dc3545;
            font-size: 0.8rem;
            display: block;
            margin-top: 4px;
            font-weight: 500;
        }

        .footer-note {
            font-size: 13px;
            color: #718096;
            margin-top: 26px;
            margin-bottom: 0;
        }

            .footer-note a {
                color: #1E4D2B;
                font-weight: 700;
                text-decoration: none;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="login-bg">
        <div class="login-card">

            <div class="login-icon-box">
                <i class="fa-solid fa-mug-hot"></i>
            </div>

            <div class="login-title">TeaMart</div>
            <div class="login-subtitle">Sign in to your premium account</div>

            <asp:Label
                ID="lblMsg"
                runat="server"
                Visible="false"
                CssClass="d-block mb-3 text-center fw-bold">
            </asp:Label>

            <div class="input-group-custom">

                <label for="<%= txtEmail.ClientID %>">Email Address</label>

                <div class="input-box-wrapper">
                    <i class="fa-solid fa-envelope"></i>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        placeholder="Enter your email"
                        MaxLength="100" />
                </div>

                <asp:RequiredFieldValidator
                    ID="rfvEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Enter your email"
                    CssClass="text-danger-sm"
                    Display="Dynamic"
                    SetFocusOnError="true"
                    ValidationGroup="LoginGroup">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="revEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Enter a valid email address"
                    ValidationExpression="^[A-Za-z0-9._%+\-]+@[A-Za-z0-9.\-]+\.[A-Za-z]{2,}$"
                    CssClass="text-danger-sm"
                    Display="Dynamic"
                    SetFocusOnError="true"
                    ValidationGroup="LoginGroup">
                </asp:RegularExpressionValidator>

            </div>

            <div class="input-group-custom">

                <label for="<%= txtPassword.ClientID %>">Password</label>

                <div class="input-box-wrapper">
                    <i class="fa-solid fa-lock"></i>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        TextMode="Password"
                        placeholder="Enter your password"
                        MaxLength="100" />
                </div>

                <asp:RequiredFieldValidator
                    ID="rfvPassword"
                    runat="server"
                    ControlToValidate="txtPassword"
                    ErrorMessage="Enter your password"
                    CssClass="text-danger-sm"
                    Display="Dynamic"
                    SetFocusOnError="true"
                    ValidationGroup="LoginGroup">
                </asp:RequiredFieldValidator>

            </div>

            <div class="options-row">

                <label class="d-flex align-items-center gap-2 text-muted"
                    style="cursor: pointer;">

                    <asp:CheckBox
                        ID="chkRememberMe"
                        runat="server" />

                    Remember me
                </label>

                <a href="ForgotPassword.aspx" style="color: blue;">Forgot password?
                </a>

            </div>

            <asp:Button
                ID="btnLogin"
                runat="server"
                Text="Login to TeaMart"
                CssClass="btn-login-dark"
                CausesValidation="true"
                ValidationGroup="LoginGroup"
                PostBackUrl="~/User/Home.aspx" />

            <p class="footer-note">
                Don't have an account?
                <a href="Register.aspx">Register here</a>
            </p>

        </div>
    </div>

</asp:Content>