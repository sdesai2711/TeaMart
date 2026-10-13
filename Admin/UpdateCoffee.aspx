<%@ Page Title="Update Coffee" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" Inherits="TeaMart.Admin.UpdateCoffee" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <style>
        .update-coffee-page {
            padding: 20px;
            min-height: 80vh;
            background: #f2f2f2;
        }

        .back-btn-wrapper {
            width: 90%;
            margin: 10px auto 20px auto;
        }

        .back-coffee-btn {
            display: inline-block;
            padding: 9px 16px;
            background-color: #0d6efd;
            color: #fff !important;
            border: 1px solid #0d6efd;
            border-radius: 5px;
            text-decoration: none !important;
            font-size: 14px;
            transition: background-color 0.2s ease;
        }

        .back-coffee-btn:hover {
            background-color: #0b5ed7;
            border-color: #0a58ca;
        }

        .form-wrapper {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            width: 100%;
        }

        .container1 {
            width: 430px;
            max-width: 100%;
            background: #fff;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        .container1 h2 {
            text-align: center;
            margin: 0 0 20px;
            color: #333;
            font-size: 26px;
            font-weight: 600;
        }

        .field-label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
            color: #333;
            font-size: 14px;
        }

        .container1 .form-control {
            display: block;
            width: 100%;
            margin-bottom: 14px;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
            background: #fff;
        }

        .container1 .form-control:focus {
            border-color: #86b7fe;
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.20);
        }

        .container1 textarea.form-control {
            min-height: 80px;
            resize: vertical;
        }

        .current-image {
            display: block;
            max-width: 90px;
            max-height: 90px;
            object-fit: cover;
            margin: 6px 0 10px;
            border-radius: 6px;
            border: 1px solid #ddd;
        }

        .container1 .btn-submit {
            display: block;
            width: 100%;
            padding: 11px;
            background-color: #0d6efd;
            color: #fff;
            border: 1px solid #0d6efd;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: background-color 0.2s ease;
            margin-top: 5px;
        }

        .container1 .btn-submit:hover {
            background-color: #0b5ed7;
            border-color: #0a58ca;
        }

        .form-message {
            display: block;
            margin-bottom: 12px;
            color: #dc3545;
            text-align: center;
            font-weight: 600;
        }

        @media (max-width: 576px) {
            .update-coffee-page {
                padding: 10px;
            }

            .container1 {
                padding: 18px;
            }

            .back-btn-wrapper {
                width: 100%;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">
    <div class="update-coffee-page">

        <div class="back-btn-wrapper">
            <a href="<%= ResolveUrl("~/Admin/Coffee.aspx") %>" class="back-coffee-btn">
                &larr; Back to Coffee
            </a>
        </div>

        <div class="form-wrapper">

            <div class="container1">

                <h2>Update Coffee</h2>

                <asp:Label ID="lblMsg" runat="server" CssClass="form-message" Visible="false" />
                <asp:HiddenField ID="hfCoffeeID" runat="server" Value="201" />

                <div>
                    <label class="field-label">Coffee Image</label>
                    <asp:Image ID="imgCurrent" runat="server" CssClass="current-image" Visible="true" ImageUrl="~/Images/default-coffee.png" />
                    <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control" />
                </div>

                <div>
                    <label class="field-label">Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Text="Espresso Roast" placeholder="Enter coffee name" />
                </div>

                <div>
                    <label class="field-label">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" Text="Rich, dark roast with notes of caramel and chocolate." placeholder="Enter coffee description" />
                </div>

                <div>
                    <label class="field-label">Price (₹)</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" Text="350.00" placeholder="Enter price" />
                </div>

                <div>
                    <label class="field-label">Quantity</label>
                    <asp:TextBox ID="txtQty" runat="server" CssClass="form-control" Text="40" placeholder="Enter quantity" />
                </div>

                <asp:Button ID="btnUpdateCoffee" runat="server"
                    Text="Update Coffee"
                    CssClass="btn-submit"
                    CausesValidation="false" />

            </div>

        </div>

    </div>
</asp:Content>