<%@ Page Title="Create Account - TeaMart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TeaMart.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .register-bg {
            background-color: #51BDDC;
            min-height: 95vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 60px 20px;
        }

        .register-container {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 35px;
            width: 100%;
            max-width: 1150px;
        }

        .side-img-box {
            display: flex;
            flex-direction: column;
            gap: 28px;
        }

        .side-card-img {
            width: 180px;
            height: 180px;
            border-radius: 20px;
            object-fit: cover;
            border: 5px solid #FFFFFF;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease;
        }

            .side-card-img:hover {
                transform: scale(1.04);
            }

        .register-card {
            background-color: #FFFFFF;
            border-radius: 24px;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 560px;
            padding: 45px 40px;
        }

        .register-title {
            font-size: 28px;
            font-weight: 800;
            color: #1E4D2B;
            text-align: center;
            margin-bottom: 24px;
        }

        .reg-field {
            margin-bottom: 15px;
        }

            .reg-field label {
                font-size: 13px;
                font-weight: 700;
                color: #4A5568;
                margin-bottom: 6px;
                display: block;
            }

        .reg-input {
            width: 100%;
            border: 1.5px solid #CBD5E0;
            border-radius: 8px;
            padding: 10px 14px;
            font-size: 13.5px;
            color: #2D3748;
            outline: none;
            box-sizing: border-box;
            transition: border-color 0.2s;
        }

            .reg-input:focus {
                border-color: #1E4D2B;
            }

        .text-danger-sm {
            color: #dc3545;
            font-size: 0.8rem;
            display: block;
            margin-top: 4px;
            font-weight: 500;
        }

        .btn-register-dark {
            background-color: #153E26;
            color: #FFFFFF;
            font-size: 15px;
            font-weight: 700;
            padding: 13px 0;
            border-radius: 8px;
            width: 100%;
            border: none;
            margin-top: 15px;
            cursor: pointer;
            transition: 0.2s;
        }

            .btn-register-dark:hover {
                background-color: #0E2B1A;
                color: #FFFFFF;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="register-bg">
        <div class="register-container">

            <div class="side-img-box d-none d-lg-flex">
                <img src="/images/T1.jpg" class="side-card-img" alt="Tea Leaves" />
                <img src="/images/T2.jpg" class="side-card-img" alt="Coffee Beans" />
            </div>

            <div class="register-card">

                <div class="register-title">Create Account</div>

                <asp:Label ID="lblMsg" runat="server" Visible="false" CssClass="d-block mb-3 text-center fw-bold"></asp:Label>

                <div class="row">

                    <div class="col-md-6 reg-field">
                        <label for="<%= txtFirstName.ClientID %>">First Name</label>

                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="reg-input" placeholder="First Name" MaxLength="50" />

                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                            ControlToValidate="txtFirstName"
                            ErrorMessage="Enter First Name"
                            CssClass="text-danger-sm"
                            Display="Dynamic"
                            SetFocusOnError="true"
                            ValidationGroup="RegisterGroup" />
                    </div>

                    <div class="col-md-6 reg-field">
                        <label for="<%= txtLastName.ClientID %>">Last Name</label>

                        <asp:TextBox ID="txtLastName" runat="server" CssClass="reg-input" placeholder="Last Name" MaxLength="50" />

                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                            ControlToValidate="txtLastName"
                            ErrorMessage="Enter Last Name"
                            CssClass="text-danger-sm"
                            Display="Dynamic"
                            SetFocusOnError="true"
                            ValidationGroup="RegisterGroup" />
                    </div>

                </div>

                <div class="reg-field">
                    <label for="<%= txtEmail.ClientID %>">Email</label>

                    <asp:TextBox ID="txtEmail" runat="server" CssClass="reg-input" placeholder="example@email.com" MaxLength="100" />

                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Enter Email"
                        CssClass="text-danger-sm"
                        Display="Dynamic"
                        SetFocusOnError="true"
                        ValidationGroup="RegisterGroup" />

                    <asp:RegularExpressionValidator ID="revEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Enter a valid email address"
                        ValidationExpression="^[A-Za-z0-9._%+\-]+@[A-Za-z0-9.\-]+\.[A-Za-z]{2,}$"
                        CssClass="text-danger-sm"
                        Display="Dynamic"
                        SetFocusOnError="true"
                        ValidationGroup="RegisterGroup" />
                </div>

                <div class="reg-field">
                    <label for="<%= txtPassword.ClientID %>">Password</label>

                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="reg-input" placeholder="Create Password" MaxLength="100" />

                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="Enter Password"
                        CssClass="text-danger-sm"
                        Display="Dynamic"
                        SetFocusOnError="true"
                        ValidationGroup="RegisterGroup" />
                </div>

                <div class="reg-field">
                    <label for="<%= txtConfirmPassword.ClientID %>">Confirm Password</label>

                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="reg-input" placeholder="Re-type Password" MaxLength="100" />

                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ErrorMessage="Enter Confirm Password"
                        CssClass="text-danger-sm"
                        Display="Dynamic"
                        SetFocusOnError="true"
                        ValidationGroup="RegisterGroup" />

                    <asp:CompareValidator ID="cvPassword" runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ControlToCompare="txtPassword"
                        Operator="Equal"
                        Type="String"
                        ErrorMessage="Passwords do not match"
                        CssClass="text-danger-sm"
                        Display="Dynamic"
                        SetFocusOnError="true"
                        ValidationGroup="RegisterGroup" />
                </div>

                <div class="reg-field">
                    <label for="<%= txtPhone.ClientID %>">Phone Number</label>

                    <asp:TextBox ID="txtPhone" runat="server" CssClass="reg-input" placeholder="Enter 10 Digit Number" MaxLength="10" />

                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Enter Phone Number"
                        CssClass="text-danger-sm"
                        Display="Dynamic"
                        SetFocusOnError="true"
                        ValidationGroup="RegisterGroup" />

                    <asp:RegularExpressionValidator ID="revPhone" runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Enter a valid 10 digit phone number"
                        ValidationExpression="^[0-9]{10}$"
                        CssClass="text-danger-sm"
                        Display="Dynamic"
                        SetFocusOnError="true"
                        ValidationGroup="RegisterGroup" />
                </div>

                <div class="reg-field">
                    <label for="<%= txtAddress.ClientID %>">Address</label>

                    <asp:TextBox ID="txtAddress" runat="server" CssClass="reg-input" placeholder="Your City, State" MaxLength="250" />

                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
                        ControlToValidate="txtAddress"
                        ErrorMessage="Enter Address"
                        CssClass="text-danger-sm"
                        Display="Dynamic"
                        SetFocusOnError="true"
                        ValidationGroup="RegisterGroup" />
                </div>

                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="Register"
                    CssClass="btn-register-dark"
                    CausesValidation="true"
                    ValidationGroup="RegisterGroup"
                    OnClientClick="if (typeof(Page_ClientValidate) === 'function' && !Page_ClientValidate('RegisterGroup')) return false; window.location.href='Login.aspx'; return false;" />

                <div class="text-center mt-3">
                    <span class="text-muted small">Already have an account? </span>
                    <a href="Login.aspx" class="text-decoration-none small fw-bold" style="color: #1E4D2B;">Login</a>
                </div>

            </div>

            <div class="side-img-box d-none d-lg-flex">
                <img src="/images/C2.jpg" class="side-card-img" alt="Tea Cup" />
                <img src="/images/C1.jpg" class="side-card-img" alt="Matcha Bowl" />
            </div>

        </div>
    </div>

</asp:Content>