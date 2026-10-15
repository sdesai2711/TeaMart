<%@ Page Title="Payment - TeaMart" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .payment-page-bg {
            background-color: #F4F7FB;
            min-height: 90vh;
            padding: 50px 15px 70px 15px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Center White Card */
        .payment-card-custom {
            background-color: #FFFFFF;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            border: 1px solid #ECEFF2;
            width: 100%;
            max-width: 520px;
            padding: 40px 45px;
            margin: 0 auto;
        }

        .section-main-title {
            font-size: 19px;
            font-weight: 800;
            color: #1A202C;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Cash On Delivery Box */
        .cod-payment-method {
            border: 2px solid #F5B01E;
            background-color: #FFFCF5;
            border-radius: 10px;
            width: 130px;
            padding: 12px 10px;
            margin: 0 auto 32px auto;
            text-align: center;
            cursor: pointer;
            box-shadow: 0 4px 12px rgba(245, 176, 30, 0.15);
        }

            .cod-payment-method i {
                font-size: 22px;
                color: #8D7B48;
                margin-bottom: 4px;
                display: block;
            }

            .cod-payment-method span {
                font-size: 11px;
                font-weight: 700;
                color: #2D3748;
                display: block;
            }

        .section-sub-title {
            font-size: 15px;
            font-weight: 800;
            color: #1A202C;
            margin-bottom: 16px;
        }

        /* Form Labels & Inputs */
        .field-label-sm {
            font-size: 11px;
            font-weight: 700;
            color: #718096;
            margin-bottom: 5px;
            display: block;
        }

        .payment-input {
            width: 100%;
            border: 1.5px solid #E2E8F0;
            border-radius: 6px;
            padding: 9px 12px;
            font-size: 12.5px;
            color: #2D3748;
            outline: none;
            margin-bottom: 14px;
            background-color: #FFFFFF;
            transition: border-color 0.2s;
        }

            .payment-input:focus {
                border-color: #F5B01E;
            }

            .payment-input[readonly] {
                background-color: #F1F4F8;
                color: #4A5568;
                cursor: not-allowed;
            }

        /* Star Rating */
        .star-rating-box {
            display: flex;
            gap: 6px;
            margin-bottom: 14px;
        }

            .star-rating-box i {
                font-size: 16px;
                color: #CBD5E1;
                cursor: pointer;
                transition: color 0.2s;
            }

                .star-rating-box i.selected,
                .star-rating-box i:hover,
                .star-rating-box i:hover ~ i {
                    color: #F5B01E;
                }

        .review-textarea {
            width: 100%;
            border: 1.5px solid #E2E8F0;
            border-radius: 6px;
            padding: 10px 12px;
            font-size: 12px;
            color: #2D3748;
            outline: none;
            resize: none;
            min-height: 80px;
            margin-bottom: 24px;
        }

            .review-textarea:focus {
                border-color: #F5B01E;
            }

        /* Yellow Order Button */
        .btn-place-order {
            background-color: #F5B01E;
            color: #1A202C;
            font-size: 13.5px;
            font-weight: 700;
            padding: 12px 0;
            width: 100%;
            border-radius: 6px;
            border: none;
            cursor: pointer;
            transition: background-color 0.2s;
        }

            .btn-place-order:hover {
                background-color: #E29E10;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="payment-page-bg">
        <div class="payment-card-custom">

            <!-- 1. Choose Your Payment Method -->
            <div class="section-main-title">Choose Your Payment Method</div>
            <div class="cod-payment-method">
                <i class="fa-solid fa-money-bill-1-wave"></i>
                <span>Cash on Delivery</span>
            </div>

            <!-- 2. Confirm Your Details -->
            <div class="section-sub-title">Confirm Your Details</div>

            <label class="field-label-sm">Email:</label>
            <input type="email" class="payment-input" value="shreyughodasara76@gmail.com" />

            <label class="field-label-sm">Address:</label>
            <input type="text" class="payment-input" value="hello" />

            <label class="field-label-sm">Pincode:</label>
            <input type="text" class="payment-input" value="360024" />

            <label class="field-label-sm">Total Payment (₹):</label>
            <input type="text" class="payment-input" value="300.00" readonly />

            <!-- 3. Rate Your Experience -->
            <div class="section-sub-title text-center mt-3">Rate Your Experience</div>
            <label class="field-label-sm">Rating (1 to 5 stars):</label>
            <div class="star-rating-box" id="starContainer">
                <i class="fa-solid fa-star" onclick="setRating(1)"></i>
                <i class="fa-solid fa-star" onclick="setRating(2)"></i>
                <i class="fa-solid fa-star" onclick="setRating(3)"></i>
                <i class="fa-solid fa-star" onclick="setRating(4)"></i>
                <i class="fa-solid fa-star" onclick="setRating(5)"></i>
            </div>

            <label class="field-label-sm">Review:</label>
            <textarea class="review-textarea" placeholder="Write your feedback here..."></textarea>

            <!-- 4. Submit Button -->
            <button type="button" class="btn-place-order" onclick="submitOrder()">
                Place Order &amp; Submit Review
            </button>

        </div>
    </div>

    <!-- Star Rating & Submit Script -->
    <script>
        function setRating(rating) {
            var stars = document.querySelectorAll("#starContainer i");
            stars.forEach(function (star, index) {
                if (index < rating) {
                    star.style.color = "#F5B01E";
                } else {
                    star.style.color = "#CBD5E1";
                }
            });
        }

        function submitOrder() {
            alert("Order placed successfully with Cash on Delivery! Thank you for your review.");
            window.location.href = "Home.aspx";
        }
    </script>
</asp:Content>
