<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="AddCoffee.aspx.cs" Inherits="TeaMart.Admin.AddCoffee" %>


<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <style>
        .add-coffee-page {
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
            .add-coffee-page {
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

    <script type="text/javascript">
        function validateAddCoffeeForm() {
            var name = document.getElementById('<%= txtName.ClientID %>').value.trim();
            var price = document.getElementById('<%= txtPrice.ClientID %>').value.trim();
            var qty = document.getElementById('<%= txtQty.ClientID %>').value.trim();
    var fileInput = document.getElementById('<%= fuImage.ClientID %>');

    if (name === "") {
        alert("Please enter coffee name.");
        return false;
    }
    if (price === "" || isNaN(price)) {
        alert("Please enter a valid price.");
        return false;
    }
    if (qty === "" || isNaN(qty)) {
        alert("Please enter a valid quantity.");
        return false;
    }

    if (fileInput.value !== '') {
        var extension = fileInput.value.split('.').pop().toLowerCase();
        var allowedExtensions = ['jpg', 'jpeg', 'png', 'webp'];

        if (allowedExtensions.indexOf(extension) === -1) {
            alert('Only JPG, JPEG, PNG and WEBP images are allowed.');
            return false;
        }
    }

    return true;
}
</script>
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">
    <div class="add-coffee-page">

        <div class="back-btn-wrapper">
            <a href="<%= ResolveUrl("~/Admin/Coffee.aspx") %>" class="back-coffee-btn">&larr; Back to Coffee</a>
        </div>

        <div class="form-wrapper">
            <div class="container1">
                <h2>Add Coffee</h2>

                <asp:Label ID="lblMsg" runat="server" CssClass="form-message" Visible="false" />

                <div>
                    <label class="field-label">Coffee Image</label>
                    <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control" />
                </div>

                <div>
                    <label class="field-label">Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter coffee name" MaxLength="150" />
                </div>

                <div>
                    <label class="field-label">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Enter coffee description" MaxLength="500" />
                </div>

                <div>
                    <label class="field-label">Price (₹)</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" placeholder="Enter price" />
                </div>

                <div>
                    <label class="field-label">Quantity</label>
                    <asp:TextBox ID="txtQty" runat="server" CssClass="form-control" placeholder="Enter quantity" />
                </div>

                <asp:Button ID="btnAddCoffee" runat="server"
                    Text="Add Coffee"
                    CssClass="btn-submit"
                    CausesValidation="false"
                    OnClientClick="return validateAddCoffeeForm();"
                    OnClick="btnAddCoffee_Click" />
            </div>
        </div>

    </div>
</asp:Content>