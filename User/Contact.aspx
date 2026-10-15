<%@ Page Title="Contact Us - TeaMart" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" %>

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
            box-shadow: 0 8px 24px rgba(0,0,0,0.05);
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
            box-shadow: 0 4px 20px rgba(0,0,0,0.04);
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
            outline: none;
        }

            .custom-input:focus {
                background-color: #FFFFFF;
                border-color: #1E4D2B;
            }

        .btn-send-message {
            background-color: #153E26;
            color: #FFFFFF !important;
            font-size: 13px;
            font-weight: 600;
            padding: 11px 26px;
            border-radius: 8px;
            border: none;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            cursor: pointer;
            width: fit-content;
            margin-top: 10px;
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
                        <img src="https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=800" alt="Matcha" /></div>
                </div>
                <div class="col-lg-6">
                    <div class="contact-form-card">
                        <div class="form-title">Get in Touch</div>
                        <div class="mb-3">
                            <label class="field-label">Full Name</label><input type="text" class="custom-input" placeholder="Jane Doe" /></div>
                        <div class="mb-3">
                            <label class="field-label">Email Address</label><input type="email" class="custom-input" placeholder="jane@example.com" /></div>
                        <div class="mb-4">
                            <label class="field-label">Your Message</label><textarea rows="5" class="custom-input" placeholder="How can we assist you today?"></textarea></div>
                        <div>
                            <button type="button" class="btn-send-message">Send Message <i class="fa-solid fa-angle-right"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
