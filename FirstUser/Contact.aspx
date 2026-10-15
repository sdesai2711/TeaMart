<%@ Page Title="Contact Us - TeaMart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TeaMart.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact-page-bg {
            background-color: #FAF9F5;
            min-height: 100vh;
            padding-bottom: 80px;
        }

        .contact-header {
            text-align: center;
            padding-top: 50px;
            margin-bottom: 50px;
        }

        .contact-header h1 {
            font-size: 38px;
            font-weight: 800;
            color: #1E4D2B;
            margin-bottom: 8px;
            letter-spacing: -0.5px;
        }

        .contact-header p {
            font-size: 14px;
            color: #718096;
            margin: 0;
        }

        .contact-img-box {
            height: 460px;
            width: 100%;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.05);
        }

        .contact-img-box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .contact-form-card {
            background-color: #FFFFFF;
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.04);
            border: 1px solid #ECEAE4;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .form-title {
            font-size: 24px;
            font-weight: 700;
            color: #1E4D2B;
            margin-bottom: 24px;
        }

        .field-label {
            font-size: 12px;
            font-weight: 600;
            color: #2D3748;
            margin-bottom: 6px;
            display: block;
        }

        .custom-input {
            background-color: #F1F3F0;
            border: 1px solid transparent;
            border-radius: 8px;
            padding: 10px 16px;
            font-size: 13px;
            color: #4A5568;
            width: 100%;
            transition: all 0.2s ease;
            outline: none;
            box-sizing: border-box;
        }

        .custom-input:focus {
            background-color: #FFFFFF;
            border-color: #1E4D2B;
            box-shadow: 0 0 0 3px rgba(30, 77, 43, 0.1);
        }

        .custom-input::placeholder {
            color: #A0AEC0;
            font-size: 13px;
        }

        .btn-send-message {
            background-color: #153E26;
            color: #FFFFFF;
            font-size: 13px;
            font-weight: 600;
            padding: 11px 26px;
            border-radius: 8px;
            border: none;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            cursor: pointer;
            transition: background-color 0.2s ease;
            width: fit-content;
            margin-top: 10px;
        }

        .btn-send-message:hover {
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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="contact-page-bg">
        <div class="container">

            <div class="contact-header">
                <h1>Contact Us</h1>
                <p>Have any questions? We're here to help!</p>
            </div>

            <div class="row g-5 align-items-center">

                <div class="col-lg-6">
                    <div class="contact-img-box">
                        <img src="/images/T3.jpg" alt="Matcha Pouring" />
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="contact-form-card">

                        <div class="form-title">Get in Touch</div>

                        <div class="mb-3">
                            <label class="field-label">Full Name</label>

                            <asp:TextBox ID="txtName" runat="server"
                                CssClass="custom-input"
                                placeholder="Jane Doe">
                            </asp:TextBox>

                            <asp:RequiredFieldValidator
                                ID="rfvName"
                                runat="server"
                                ControlToValidate="txtName"
                                ErrorMessage="Enter your full name"
                                CssClass="text-danger-sm"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <label class="field-label">Email Address</label>

                            <asp:TextBox ID="txtEmail" runat="server"
                                CssClass="custom-input"
                                TextMode="Email"
                                placeholder="jane@example.com">
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
                                ValidationExpression="^[\w.-]+@([\w-]+\.)+[\w-]{2,4}$"
                                ErrorMessage="Enter True Email"
                                CssClass="text-danger-sm"
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>
                        </div>

                        <div class="mb-4">
                            <label class="field-label">Your Message</label>

                            <asp:TextBox ID="txtMessage" runat="server"
                                TextMode="MultiLine"
                                Rows="5"
                                CssClass="custom-input"
                                placeholder="How can we assist you today?">
                            </asp:TextBox>

                            <asp:RequiredFieldValidator
                                ID="rfvMessage"
                                runat="server"
                                ControlToValidate="txtMessage"
                                ErrorMessage="Enter your message"
                                CssClass="text-danger-sm"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div>
                            <asp:Button
                                ID="btnSendMessage"
                                runat="server"
                                Text="Send Message  ❯"
                                CssClass="btn-send-message"
                                CausesValidation="true" />
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>