<%@ Page Title="About Us - TeaMart" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .about-page-bg {
            background-color: #FAF9F5;
            min-height: 100vh;
            padding-bottom: 80px;
        }

        .about-header {
            text-align: center;
            padding-top: 50px;
            margin-bottom: 45px;
        }

            .about-header h1 {
                font-size: 38px;
                font-weight: 800;
                color: #1E4D2B;
                margin-bottom: 8px;
            }

            .about-header p {
                font-size: 13.5px;
                color: #718096;
                max-width: 600px;
                margin: 0 auto;
                line-height: 1.6;
            }

        .about-img-box {
            height: 480px;
            width: 100%;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 8px 24px rgba(0,0,0,0.08);
        }

            .about-img-box img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

        .about-content-section {
            padding-left: 20px;
        }

        .about-section-title {
            font-size: 24px;
            font-weight: 700;
            color: #1E4D2B;
            margin-bottom: 12px;
        }

        .about-desc-text {
            font-size: 13px;
            color: #6C7A87;
            line-height: 1.7;
            margin-bottom: 35px;
        }

        .features-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

            .features-list li {
                font-size: 13.5px;
                font-weight: 600;
                color: #2D3748;
                margin-bottom: 14px;
                display: flex;
                align-items: center;
                gap: 12px;
            }

                .features-list li i {
                    color: #27AE60;
                    font-size: 16px;
                }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="about-page-bg">
        <div class="container">
            <div class="about-header">
                <h1>Welcome to TeaMart</h1>
                <p>Your one-stop shop for premium organic tea and ethically sourced coffee, delivered directly from sustainable farms to your cup.</p>
            </div>
            <div class="row g-5 align-items-center">
                <div class="col-lg-6">
                    <div class="about-img-box">
                        <img src="https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800" alt="Tea Cup" /></div>
                </div>
                <div class="col-lg-6">
                    <div class="about-content-section">
                        <div class="about-section-title">Our Mission</div>
                        <p class="about-desc-text">At TeaMart, we are dedicated to providing you with the freshest, highest-quality, and most ethically sourced organic tea and coffee. Our mission is to promote mindful living and sustainable farming practices.</p>
                        <div class="about-section-title">Why Choose Us?</div>
                        <ul class="features-list">
                            <li><i class="fa-solid fa-circle-check"></i>Premium Quality &amp; Organic Certified</li>
                            <li><i class="fa-solid fa-circle-check"></i>Direct Sourcing from Sustainable Farms</li>
                            <li><i class="fa-solid fa-circle-check"></i>Artisanal Roasting &amp; Blending</li>
                            <li><i class="fa-solid fa-circle-check"></i>Eco-Friendly Packaging</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
