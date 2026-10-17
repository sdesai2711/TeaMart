<%@ Page Title="Cart - TeaMart" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .cart-page-bg {
            background-color: #FFFFFF;
            min-height: 85vh;
            padding: 60px 0;
        }

        .cart-box {
            border: 1px solid #E2E8F0;
            border-radius: 12px;
            padding: 25px;
            margin-bottom: 25px;
        }

        .cart-item-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid #F1F3F5;
            padding-bottom: 20px;
        }

        .cart-item-img {
            width: 90px;
            height: 90px;
            border-radius: 8px;
            object-fit: cover;
        }

        .cart-item-title {
            font-size: 16px;
            font-weight: 700;
            color: #2D3748;
            margin-bottom: 4px;
        }

        .cart-item-price {
            font-size: 15px;
            font-weight: 700;
            color: #F06543;
        }

        .btn-checkout {
            background-color: #D93829;
            color: #FFFFFF !important;
            font-size: 13px;
            font-weight: 700;
            padding: 12px 30px;
            border-radius: 6px;
            text-decoration: none;
            display: inline-block;
        }

            .btn-checkout:hover {
                background-color: #BF2618;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cart-page-bg">
        <div class="container" style="max-width: 800px;">
            <h2 class="fw-bold text-center mb-4" style="color: #1E4D2B;">Shopping Cart</h2>
            <div class="cart-box">
                <div class="cart-item-row">
                    <div class="d-flex align-items-center gap-3">
                        <img src="/images/T3.jpg" class="cart-item-img" alt="Assam Tea" />
                        <div>
                            <div class="cart-item-title">Assam CTC Black Tea</div>
                            <div class="cart-item-price">₹24.00</div>
                        </div>
                    </div>
                    <div class="d-flex align-items-center gap-3">
                        <input type="number" value="1" min="1" class="form-control" style="width: 70px;" />
                        <button type="button" class="btn btn-outline-danger btn-sm"><i class="fa-solid fa-trash"></i></button>
                    </div>
                </div>
                <div class="d-flex justify-content-between align-items-center mt-4 pt-2">
                    <span class="fs-5 fw-bold">Total: ₹24.00</span>
                    <a href="Payment.aspx" class="btn-checkout">Proceed to Checkout</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
