<%@ Page Title="Coffee Collection - TeaMart" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .coffee-page-bg {
            background-color: #FDFDFB;
            min-height: 100vh;
            padding-bottom: 70px;
        }

        .coffee-header {
            text-align: center;
            margin-bottom: 45px;
        }

            .coffee-header h1 {
                font-size: 34px;
                font-weight: 800;
                color: #1E4D2B;
                margin-bottom: 6px;
            }

            .coffee-header p {
                font-size: 13.5px;
                color: #718096;
                margin: 0;
            }

        .coffee-card {
            background-color: #FFFFFF;
            border-radius: 12px;
            overflow: hidden;
            border: 1px solid #EAEAEA;
            transition: all 0.3s ease;
            box-shadow: 0 4px 14px rgba(0,0,0,0.03);
            display: flex;
            flex-direction: column;
            height: 100%;
        }

            .coffee-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 12px 24px rgba(0,0,0,0.08);
            }

        .coffee-img-box {
            position: relative;
            height: 230px;
            width: 100%;
            background-color: #F8F7F4;
            overflow: hidden;
        }

            .coffee-img-box img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

        .badge-organic-coffee {
            position: absolute;
            top: 12px;
            left: 12px;
            background-color: #E8F5E9;
            color: #2E7D32;
            font-size: 10.5px;
            font-weight: 700;
            padding: 3px 10px;
            border-radius: 4px;
        }

        .coffee-card-body {
            padding: 20px;
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }

        .coffee-title {
            font-size: 16.5px;
            font-weight: 700;
            color: #1E4D2B;
            margin-bottom: 8px;
        }

        .coffee-desc {
            font-size: 11.5px;
            color: #718096;
            line-height: 1.55;
            min-height: 38px;
            margin-bottom: 20px;
        }

        .coffee-action-row {
            margin-top: auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .coffee-price {
            font-size: 16px;
            font-weight: 700;
            color: #1A202C;
        }

        .controls-wrapper {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .qty-container {
            display: flex;
            align-items: center;
            border: 1px solid #CBD5E0;
            border-radius: 6px;
            overflow: hidden;
            background-color: #FFFFFF;
        }

        .qty-btn {
            background: none;
            border: none;
            color: #718096;
            font-size: 12px;
            padding: 3px 8px;
            cursor: pointer;
        }

        .qty-display {
            width: 24px;
            text-align: center;
            border: none;
            font-size: 11.5px;
            font-weight: 600;
            color: #2D3748;
            padding: 0;
            outline: none;
        }

        .btn-add-coffee {
            background-color: #12372A;
            color: #FFFFFF !important;
            font-size: 11.5px;
            font-weight: 600;
            padding: 6px 14px;
            border-radius: 6px;
            border: none;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 6px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="coffee-page-bg">
        <div class="container pt-5">
            <div class="coffee-header">
                <h1>Coffee Collection</h1>
                <p>Artisanal blends for the perfect morning ritual.</p>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6">
                    <div class="coffee-card">
                        <div class="coffee-img-box">
                            <img src="https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=500" alt="Dark Roast" /><span class="badge-organic-coffee">Organic</span></div>
                        <div class="coffee-card-body">
                            <div class="coffee-title">Dark Roast Whole Bean</div>
                            <div class="coffee-desc">Rich, oily beans with notes of dark chocolate and toasted nuts.</div>
                            <div class="coffee-action-row">
                                <div class="coffee-price">₹18.00</div>
                                <div class="controls-wrapper">
                                    <div class="qty-container">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-display" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-coffee">Add <i class="fa-solid fa-basket-shopping"></i></a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="coffee-card">
                        <div class="coffee-img-box">
                            <img src="https://images.unsplash.com/photo-1509785307050-d4066910ec1e?w=500" alt="Green Coffee" /><span class="badge-organic-coffee">Organic</span></div>
                        <div class="coffee-card-body">
                            <div class="coffee-title">Green Coffee Beans</div>
                            <div class="coffee-desc">Premium unroasted beans, pale green and textured, perfect for home roasting enthusiasts.</div>
                            <div class="coffee-action-row">
                                <div class="coffee-price">₹14.00</div>
                                <div class="controls-wrapper">
                                    <div class="qty-container">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-display" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-coffee">Add <i class="fa-solid fa-basket-shopping"></i></a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="coffee-card">
                        <div class="coffee-img-box">
                            <img src="https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?w=500" alt="Light Roast" /><span class="badge-organic-coffee">Organic</span></div>
                        <div class="coffee-card-body">
                            <div class="coffee-title">Light Roast Beans</div>
                            <div class="coffee-desc">Bright and acidic with floral notes, highlighting the unique origin characteristics.</div>
                            <div class="coffee-action-row">
                                <div class="coffee-price">₹16.50</div>
                                <div class="controls-wrapper">
                                    <div class="qty-container">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-display" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-coffee">Add <i class="fa-solid fa-basket-shopping"></i></a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="coffee-card">
                        <div class="coffee-img-box">
                            <img src="https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=500" alt="Medium Roast" /><span class="badge-organic-coffee">Organic</span></div>
                        <div class="coffee-card-body">
                            <div class="coffee-title">Medium Roast Beans</div>
                            <div class="coffee-desc">Balanced body and acidity with a light sheen and notes of caramel and toasted nuts.</div>
                            <div class="coffee-action-row">
                                <div class="coffee-price">₹16.50</div>
                                <div class="controls-wrapper">
                                    <div class="qty-container">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-display" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-coffee">Add <i class="fa-solid fa-basket-shopping"></i></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
