<%@ Page Title="Forgot Password - TeaMart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TeaMart.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .forgot-bg {
            background-color: #92B29F;
            min-height: 90vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 60px 20px;
        }

        .forgot-card {
            background-color: #FFFFFF;
            border-radius: 22px;
            box-shadow: 0 18px 45px rgba(0, 0, 0, 0.12);
            width: 100%;
            max-width: 500px;
            padding: 55px 44px;
            text-align: center;
        }

        .forgot-title {
            font-size: 28px;
            font-weight: 800;
            color: #1E4D2B;
            margin-bottom: 10px;
        }

        .forgot-desc {
            font-size: 13.5px;
            color: #718096;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        .forgot-field {
            text-align: left;
            margin-bottom: 24px;
        }

        .forgot-field label {
            font-size: 13px;
            font-weight: 700;
            color: #2D3748;
            margin-bottom: 8px;
            display: block;
        }

        .forgot-field input {
            width: 100%;
            border: 1.5px solid #CBD5E0;
            border-radius: 8px;
            padding: 12px 16px;
            font-size: 14px;
            color: #2D3748;
            outline: none;
            transition: 0.2s;
            box-sizing: border-box;
        }

        .forgot-field input:focus {
            border-color: #1E4D2B;
        }

        .btn-reset-dark {
            background-color: #153E26;
            color: #FFFFFF;
            font-size: 14.5px;
            font-weight: 700;
            padding: 13px 0;
            border-radius: 8px;
            width: 100%;
            border: none;
            cursor: pointer;
            margin-bottom: 22px;
            transition: 0.2s;
        }

        .btn-reset-dark:hover {
            background-color: #0E2B1A;
            color: #FFFFFF;
        }

        .back-link {
            font-size: 13px;
            color: #718096;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        .back-link:hover {
            color: #1E4D2B;
        }

        .text-danger-sm {
            color: #dc3545;
            font-size: 0.8rem;
            display: block;
            margin-top: 4px;
            font-weight: 500;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="forgot-bg">
        <div class="forgot-card">

            <div class="forgot-title">Forgot Password</div>

            <div class="forgot-desc">
                Enter your email address and we'll send you a link to reset your password.
            </div>

            <div class="forgot-field">
                <label>Email Address</label>

                <asp:TextBox ID="txtEmail" runat="server"
                    TextMode="Email"
                    placeholder="Enter your registered email">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Enter your email"
                    CssClass="text-danger-sm"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="revEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Enter True Email"
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
                    CssClass="text-danger-sm"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <asp:Button
                ID="btnReset"
                runat="server"
                Text="Send Reset Link"
                CssClass="btn-reset-dark"
                CausesValidation="true" />

            <div>
                <a href="Login.aspx" class="back-link" style="color:blue">
                    <i class="fa-solid fa-arrow-left"></i>Back to Login
                </a>
            </div>

        </div>
    </div>
</asp:Content>