<%@ Page Title="Offers - TeaMart" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .offer-page-bg {
            background-color: #FAF9F5;
            min-height: 100vh;
            padding-bottom: 70px;
        }

        /* Figma Big Orange Banner */
        .exclusive-hero-banner {
            background-color: #F06543;
            color: #FFFFFF;
            border-radius: 16px;
            padding: 55px 30px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(240, 101, 67, 0.2);
            margin-bottom: 50px;
        }

            .exclusive-hero-banner h1 {
                font-size: 36px;
                font-weight: 800;
                letter-spacing: 1px;
                margin-bottom: 10px;
                text-transform: uppercase;
            }

            .exclusive-hero-banner p {
                font-size: 14px;
                color: #FFE5DF;
                margin: 0;
                font-weight: 400;
            }

        /* 4 Dark Figma Cards */
        .figma-offer-card {
            background-color: #1F2833;
            border-radius: 12px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            height: 100%;
            box-shadow: 0 4px 18px rgba(0, 0, 0, 0.08);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

            .figma-offer-card:hover {
                transform: translateY(-6px);
                box-shadow: 0 12px 28px rgba(0, 0, 0, 0.2);
            }

        .offer-card-img {
            position: relative;
            height: 190px;
            width: 100%;
        }

            .offer-card-img img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

        /* Circular Green Badge (Card 1) */
        .badge-circle-offer {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: #27AE60;
            color: #FFFFFF;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            font-size: 9px;
            font-weight: 700;
            line-height: 1.1;
            text-transform: uppercase;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        /* Yellow Badge (Card 3) */
        .badge-yellow-tag {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: #F5B01E;
            color: #1F2833;
            font-size: 10px;
            font-weight: 800;
            padding: 3px 8px;
            border-radius: 4px;
            text-transform: uppercase;
        }

        /* Red Banner Tag (Card 4) */
        .badge-red-strip {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #D93829;
            color: #FFFFFF;
            font-size: 10px;
            font-weight: 700;
            text-align: center;
            padding: 4px 0;
            letter-spacing: 0.5px;
            text-transform: uppercase;
        }

        .offer-card-content {
            padding: 22px 18px 24px 18px;
            text-align: center;
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }

        .offer-card-heading {
            font-size: 13.5px;
            font-weight: 800;
            color: #FFFFFF;
            letter-spacing: 0.5px;
            line-height: 1.4;
            min-height: 42px;
            margin-bottom: 12px;
            text-transform: uppercase;
        }

        .offer-card-desc {
            font-size: 11px;
            color: #8C9BA5;
            line-height: 1.5;
            min-height: 44px;
            margin-bottom: 22px;
        }

        /* Green Shop Now Button */
        .btn-shop-offer {
            background-color: #27AE60;
            color: #FFFFFF !important;
            font-size: 11.5px;
            font-weight: 700;
            padding: 8px 0;
            border-radius: 6px;
            text-decoration: none;
            display: block;
            width: 100%;
            margin-top: auto;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            transition: background-color 0.2s;
            border: none;
        }

            .btn-shop-offer:hover {
                background-color: #219653;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="offer-page-bg">
        <div class="container pt-5">

            <!-- Figma Header Banner -->
            <div class="exclusive-hero-banner">
                <h1>Exclusive Offers</h1>
                <p>Grab amazing deals on your favorite products before they're gone!</p>
            </div>

            <!-- 4 Offer Cards Grid -->
            <div class="row g-4">

                <!-- Card 1: 20% OFF -->
                <div class="col-lg-3 col-md-6">
                    <div class="figma-offer-card">
                        <div class="offer-card-img">
                            <img src="/images/C2.jpg" alt="Coffee Latte" />
                            <div class="badge-circle-offer">UP TO<br />
                                50%</div>
                        </div>
                        <div class="offer-card-content">
                            <div class="offer-card-heading">20% Off on Premium Teas Bonanza - Flat 20% Off!</div>
                            <div class="offer-card-desc">Get 20% off all our premium Green teas! 100% healthy, raw & fresh!</div>
                            <a href="Tea.aspx" class="btn-shop-offer">Shop Now</a>
                        </div>
                    </div>
                </div>

                <!-- Card 2: BUY 1 GET 1 FREE -->
                <div class="col-lg-3 col-md-6">
                    <div class="figma-offer-card">
                        <div class="offer-card-img">
                            <img src="/images/T1.jpg" alt="Iced Tea Drinks" />
                        </div>
                        <div class="offer-card-content">
                            <div class="offer-card-heading">Buy 1 Get 1 Free Organic Matcha</div>
                            <div class="offer-card-desc">Stock up on authentic ceremonial grade organic Matcha. Limited time offer!</div>
                            <a href="Tea.aspx" class="btn-shop-offer">Shop Now</a>
                        </div>
                    </div>
                </div>

                <!-- Card 3: NEW ARRIVAL -->
                <div class="col-lg-3 col-md-6">
                    <div class="figma-offer-card">
                        <div class="offer-card-img">
                            <img src="/images/T2.jpg" alt="Green Tea Cup" />
                            <div class="badge-yellow-tag">NEW!</div>
                        </div>
                        <div class="offer-card-content">
                            <div class="offer-card-heading">New Arrival Offer Single Origin Coffee</div>
                            <div class="offer-card-desc">Try our newest Ethiopian Yirgacheffe beans at a special introductory price.</div>
                            <a href="Coffee.aspx" class="btn-shop-offer">Shop Now</a>
                        </div>
                    </div>
                </div>

                <!-- Card 4: 15% OFF TEAPOTS -->
                <div class="col-lg-3 col-md-6">
                    <div class="figma-offer-card">
                        <div class="offer-card-img">
                            <img src="/images/T4.jpg" alt="Teapots & Mugs" />
                            <div class="badge-red-strip">SPRING SPECIAL</div>
                        </div>
                        <div class="offer-card-content">
                            <div class="offer-card-heading">15% Off All Teapots &amp; Mugs</div>
                            <div class="offer-card-desc">Upgrade your brewing experience with our premium accessories.</div>
                            <a href="#" class="btn-shop-offer">Shop Now</a>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</asp:Content>
