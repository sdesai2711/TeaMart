<%@ Page Title="Add Offer" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Assets/admin_css/dashboard.css" />

    <style>
        .page-container {
            padding: 25px;
        }

        .btn-back {
            background-color: #0d6efd;
            color: #ffffff !important;
            border: none;
            padding: 8px 18px;
            border-radius: 6px;
            font-size: 14px;
            font-weight: 500;
            text-decoration: none !important;
            display: inline-flex;
            align-items: center;
            transition: background-color 0.2s ease;
        }

        .btn-back:hover {
            background-color: #0b5ed7;
            color: #ffffff !important;
        }

        .form-card-container {
            max-width: 580px;
            margin: 20px auto 40px auto;
            background: #ffffff;
            border-radius: 16px;
            padding: 35px 40px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
        }

        .form-title {
            text-align: center;
            font-weight: 700;
            color: #212529;
            margin-bottom: 25px;
            font-size: 26px;
        }

        .form-label {
            font-weight: 600;
            color: #333333;
            font-size: 14px;
            margin-bottom: 6px;
        }

        .form-control {
            border-radius: 6px;
            padding: 10px 14px;
            font-size: 14px;
            border: 1px solid #ced4da;
        }

        .form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.15);
        }

        .btn-submit-main {
            background-color: #0d6efd;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            font-weight: 600;
            width: 100%;
            margin-top: 10px;
            cursor: pointer;
        }

        .btn-submit-main:hover {
            background-color: #0b5ed7;
            color: #ffffff;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main class="page-container">
        
        <div class="mb-3">
            <a href="Offers.aspx" class="btn-back">
                &larr;&nbsp; Back to Offers
            </a>
        </div>

        <div class="form-card-container">
            <h3 class="form-title">Add Offer</h3>

            <asp:Label ID="lblMessage" runat="server" CssClass="text-danger fw-bold d-block text-center mb-3" Visible="false"></asp:Label>

            <div class="row g-3">
                <!-- Offer Image -->
                <div class="col-12">
                    <label class="form-label">Offer Image</label>
                    <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control" />
                </div>

                <!-- Offer Title -->
                <div class="col-12">
                    <label class="form-label">Title</label>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" Text="Festival Green Tea Sale" placeholder="Enter offer title"></asp:TextBox>
                </div>

                <!-- Description -->
                <div class="col-12">
                    <label class="form-label">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" Text="Get flat 15% off on all organic green teas this week." placeholder="Enter description"></asp:TextBox>
                </div>

                <!-- Discount -->
                <div class="col-12">
                    <label class="form-label">Discount (%)</label>
                    <asp:TextBox ID="txtDiscount" runat="server" CssClass="form-control" Text="15" placeholder="Enter discount (e.g. 5)"></asp:TextBox>
                </div>

                <!-- Valid From -->
                <div class="col-12">
                    <label class="form-label">Valid From</label>
                    <asp:TextBox ID="txtValidFrom" runat="server" CssClass="form-control" Text="15/10/2026" placeholder="Enter valid from (e.g. 01/10/2026)"></asp:TextBox>
                </div>

                <!-- Valid To -->
                <div class="col-12">
                    <label class="form-label">Valid To</label>
                    <asp:TextBox ID="txtValidTo" runat="server" CssClass="form-control" Text="30/10/2026" placeholder="Enter valid to (e.g. 31/10/2026)"></asp:TextBox>
                </div>

                <!-- Submit Button -->
                <div class="col-12 pt-2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Add Offer" CssClass="btn-submit-main" CausesValidation="false" />
                </div>
            </div>
        </div>

    </main>
</asp:Content>