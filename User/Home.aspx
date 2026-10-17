<%@ Page Title="Home - TeaMart" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TeaMart.User.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Top Banner Hero Cards */
        .hero-banner-card {
            position: relative;
            border-radius: 12px;
            overflow: hidden;
            height: 380px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.12);
        }

        .hero-img-wrapper {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }

        .hero-img-wrapper img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Dark gradient overlay on top of image */
        .hero-img-wrapper::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to top, rgba(0, 0, 0, 0.85) 15%, rgba(0, 0, 0, 0.2) 75%);
        }

        .hero-body-custom {
            position: relative;
            z-index: 2;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            padding: 30px 28px;
            color: #FFFFFF;
        }

        .hero-title {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 8px;
            color: #FFFFFF;
        }

        .hero-desc {
            font-size: 13px;
            color: #E2E8F0;
            line-height: 1.5;
            margin-bottom: 20px;
            max-width: 320px;
        }

        .btn-tea {
            background-color: #27AE60;
            color: #FFFFFF;
            font-size: 13px;
            font-weight: 600;
            padding: 8px 26px;
            border-radius: 6px;
            border: none;
            width: fit-content;
            text-decoration: none;
            transition: 0.2s;
            display: inline-block;
        }

        .btn-tea:hover {
            background-color: #219653;
            color: #FFF;
        }

        .btn-coffee {
            background-color: #4A5568;
            color: #FFFFFF;
            font-size: 13px;
            font-weight: 600;
            padding: 8px 26px;
            border-radius: 6px;
            border: none;
            width: fit-content;
            text-decoration: none;
            transition: 0.2s;
            display: inline-block;
        }

        .btn-coffee:hover {
            background-color: #2D3748;
            color: #FFF;
        }

        /* Section Header */
        .section-header h2 {
            font-size: 26px;
            font-weight: 700;
            color: #2D3748;
            margin-bottom: 4px;
        }

        .section-header p {
            font-size: 13px;
            color: #718096;
        }

        /* Featured Product Cards */
        .figma-card {
            background-color: #1F2833;
            border-radius: 12px;
            overflow: hidden;
            color: #FFFFFF;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.08);
            position: relative;
        }

        .figma-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        .card-img-wrapper {
            position: relative;
            height: 180px;
            width: 100%;
        }

        .card-img-wrapper img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .product-badge {
            position: absolute;
            top: 10px;
            left: 10px;
            font-size: 10px;
            font-weight: 700;
            padding: 4px 10px;
            border-radius: 4px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .badge-organic {
            background-color: #2ECC71;
            color: #FFFFFF;
        }

        .badge-caffeine-free {
            background-color: #E67E22;
            color: #FFFFFF;
        }

        .card-body-custom {
            padding: 16px 18px 20px 18px;
        }

        .product-name {
            font-size: 15px;
            font-weight: 700;
            color: #FFFFFF;
            margin-bottom: 6px;
        }

        .product-subtext {
            font-size: 11px;
            color: #8C9BA5;
            line-height: 1.4;
            min-height: 32px;
            margin-bottom: 14px;
        }

        .price-cart-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .product-price {
            font-size: 15px;
            font-weight: 700;
            color: #F4A261;
        }

        .btn-cart {
            width: 32px;
            height: 32px;
            background-color: #2C3844;
            border: 1px solid #3E4C59;
            color: #C8D1D5;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none;
            font-size: 12px;
            transition: all 0.2s ease;
        }

        .btn-cart:hover {
            background-color: #E5A824;
            color: #1F2833;
            border-color: #E5A824;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero Cards Section -->
    <div class="container my-5">
        <div class="row g-4">

            <!-- Tea Card -->
            <div class="col-md-6">
                <div class="hero-banner-card">
                    <div class="hero-img-wrapper">
                        <img src="/images/T1.jpg" alt="Artisan Black Tea" />
                    </div>
                    <div class="hero-body-custom">
                        <h1 class="hero-title">Tea</h1>
                        <p class="hero-desc">Explore our selection of premium organic teas, hand-picked for vitality.</p>
                        <a href="Tea.aspx" class="btn-tea">Shop Tea</a>
                    </div>
                </div>
            </div>

            <!-- Coffee Card -->
            <div class="col-md-6">
                <div class="hero-banner-card">
                    <div class="hero-img-wrapper">
                        <img src="/images/C1.jpg" alt="Artisan Coffee" />
                    </div>
                    <div class="hero-body-custom">
                        <h1 class="hero-title">Coffee</h1>
                        <p class="hero-desc">Artisanal blends crafted for the perfect morning ritual.</p>
                        <a href="Coffee.aspx" class="btn-coffee">Shop Coffee</a>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- Section Header -->
    <div class="container mt-5 mb-4 text-center section-header">
        <h2>Featured Products</h2>
        <p>Hand-selected for premium quality and taste.</p>
    </div>

    <!-- Featured Products Grid -->
    <div class="container mb-5 pb-4">
        <div class="row g-4">

            <div class="col-lg-3 col-md-6">
                <div class="figma-card">
                    <div class="card-img-wrapper">
                        <img src="/images/T1.jpg" alt="Artisan Black Tea" />
                        <span class="product-badge badge-organic">Organic</span>
                    </div>
                    <div class="card-body-custom">
                        <div class="product-name">Artisan Black Tea</div>
                        <div class="product-subtext">Robust and full-bodied classic.</div>
                        <div class="price-cart-row">
                            <span class="product-price">₹ 18.00</span>
                            <a href="#" class="btn-cart" title="Add to Cart"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="figma-card">
                    <div class="card-img-wrapper">
                        <img src="/images/T2.jpg" alt="Fresh Green Tea" />
                        <span class="product-badge badge-organic">Organic</span>
                    </div>
                    <div class="card-body-custom">
                        <div class="product-name">Fresh Green Tea</div>
                        <div class="product-subtext">Light, refreshing, and rich in antioxidants.</div>
                        <div class="price-cart-row">
                            <span class="product-price">₹ 22.00</span>
                            <a href="#" class="btn-cart" title="Add to Cart"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="figma-card">
                    <div class="card-img-wrapper">
                        <img src="/images/T3.jpg" alt="Hibiscus Herbal Tea" />
                        <span class="product-badge badge-caffeine-free">Caffeine Free</span>
                    </div>
                    <div class="card-body-custom">
                        <div class="product-name">Hibiscus Herbal Tea</div>
                        <div class="product-subtext">Tart, floral, and deeply colored.</div>
                        <div class="price-cart-row">
                            <span class="product-price">₹ 16.50</span>
                            <a href="#" class="btn-cart" title="Add to Cart"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="figma-card">
                    <div class="card-img-wrapper">
                        <img src="/images/C2.jpg" alt="Premium Latte" />
                    </div>
                    <div class="card-body-custom">
                        <div class="product-name">Premium Latte</div>
                        <div class="product-subtext">Smooth espresso with steamed milk.</div>
                        <div class="price-cart-row">
                            <span class="product-price">₹ 16.50</span>
                            <a href="#" class="btn-cart" title="Add to Cart"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>