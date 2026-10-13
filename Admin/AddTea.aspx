<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="AddTea.aspx.cs" Inherits="TeaMart.Admin.AddTea" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Add Tea - TeaMart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <style>
        .add-tea-page,
        .add-tea-page * {
            box-sizing: border-box;
        }

        .add-tea-page {
            width: 100%;
            min-height: 100%;
            padding: 25px 15px;
            background: #f2f4f8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .add-tea-page .back-btn-wrapper {
            width: 100%;
            max-width: 500px;
            margin: 0 auto 15px auto;
        }

        .add-tea-page .form-wrapper {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: flex-start;
        }

        .add-tea-page .container1 {
            width: 100%;
            max-width: 500px;
            background: #ffffff;
            padding: 28px;
            border-radius: 14px;
            box-shadow: 0 5px 22px rgba(0, 0, 0, 0.08);
        }

        .add-tea-page .heading {
            text-align: center;
            color: #0d6efd;
            margin: 0 0 25px 0;
            font-size: 26px;
        }

        .add-tea-page .field-label {
            display: block;
            margin: 15px 0 7px;
            font-size: 14px;
            font-weight: 600;
            color: #333;
        }

        .add-tea-page .form-control {
            display: block;
            width: 100%;
            padding: 11px 12px;
            border: 1px solid #ced4da;
            border-radius: 6px;
            font-size: 14px;
            background: #fff;
            outline: none;
        }

        .add-tea-page .form-control:focus {
            border-color: #86b7fe;
            box-shadow: 0 0 0 3px rgba(13, 110, 253, 0.15);
        }

        .add-tea-page textarea.form-control {
            min-height: 100px;
            resize: vertical;
        }

        .add-tea-page .validation-error {
            display: block;
            color: #dc3545;
            font-size: 12px;
            margin-top: 5px;
        }

        .add-tea-page .btn {
            display: inline-block;
            padding: 10px 18px;
            border: none;
            border-radius: 6px;
            font-size: 14px;
            font-weight: 600;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
        }

        .add-tea-page .btn-primary {
            background: #0d6efd;
            color: white;
        }

        .add-tea-page .btn-primary:hover {
            background: #0b5ed7;
        }

        .add-tea-page .btn-insert {
            width: 100%;
            margin-top: 22px;
            padding: 12px;
        }

        .add-tea-page .required-note {
            color: #777;
            font-size: 12px;
            margin-top: 15px;
        }

        @media (max-width: 480px) {
            .add-tea-page {
                padding: 15px 10px;
            }

            .add-tea-page .container1 {
                padding: 20px 16px;
            }

            .add-tea-page .heading {
                font-size: 23px;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="add-tea-page">

        <div class="back-btn-wrapper">
            <asp:HyperLink
                ID="lnkBack"
                runat="server"
                NavigateUrl="~/Admin/Tea.aspx"
                CssClass="btn btn-primary"
                Text="&#8592; Back to Tea" />
        </div>

        <div class="form-wrapper">
            <div class="container1">

                <h2 class="heading">Add New Tea</h2>

                <asp:ValidationSummary
                    ID="ValidationSummary1"
                    runat="server"
                    ValidationGroup="AddTea"
                    HeaderText="Please fix the following errors:"
                    CssClass="validation-error"
                    DisplayMode="BulletList" />

                <asp:Label
                    ID="lblImage"
                    runat="server"
                    Text="Tea Image:"
                    AssociatedControlID="fuImage"
                    CssClass="field-label" />

                <asp:FileUpload
                    ID="fuImage"
                    runat="server"
                    CssClass="form-control" />


                <asp:Label
                    ID="lblName"
                    runat="server"
                    Text="Tea Name:"
                    AssociatedControlID="txtName"
                    CssClass="field-label" />

                <asp:TextBox
                    ID="txtName"
                    runat="server"
                    CssClass="form-control"
                    MaxLength="100"
                    placeholder="Enter tea name" />

                <asp:RequiredFieldValidator
                    ID="rfvName"
                    runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Tea name is required."
                    Text="Tea name is required."
                    CssClass="validation-error"
                    ValidationGroup="AddTea"
                    Display="Dynamic" />


                <asp:Label
                    ID="lblDescription"
                    runat="server"
                    Text="Description:"
                    AssociatedControlID="txtDescription"
                    CssClass="field-label" />

                <asp:TextBox
                    ID="txtDescription"
                    runat="server"
                    TextMode="MultiLine"
                    Rows="4"
                    MaxLength="1000"
                    CssClass="form-control"
                    placeholder="Enter tea description" />

                <asp:RequiredFieldValidator
                    ID="rfvDescription"
                    runat="server"
                    ControlToValidate="txtDescription"
                    ErrorMessage="Description is required."
                    Text="Description is required."
                    CssClass="validation-error"
                    ValidationGroup="AddTea"
                    Display="Dynamic" />


                <asp:Label
                    ID="lblPrice"
                    runat="server"
                    Text="Price (₹):"
                    AssociatedControlID="txtPrice"
                    CssClass="field-label" />

                <asp:TextBox
                    ID="txtPrice"
                    runat="server"
                    CssClass="form-control"
                    TextMode="Number"
                    min="0.01"
                    step="0.01"
                    placeholder="Enter price" />

                <asp:RequiredFieldValidator
                    ID="rfvPrice"
                    runat="server"
                    ControlToValidate="txtPrice"
                    ErrorMessage="Price is required."
                    Text="Price is required."
                    CssClass="validation-error"
                    ValidationGroup="AddTea"
                    Display="Dynamic" />

                <asp:RangeValidator
                    ID="rvPrice"
                    runat="server"
                    ControlToValidate="txtPrice"
                    MinimumValue="0.01"
                    MaximumValue="1000000"
                    Type="Double"
                    ErrorMessage="Price must be greater than 0."
                    Text="Enter a valid price greater than 0."
                    CssClass="validation-error"
                    ValidationGroup="AddTea"
                    Display="Dynamic" />


                <asp:Label
                    ID="lblQty"
                    runat="server"
                    Text="Quantity:"
                    AssociatedControlID="txtQty"
                    CssClass="field-label" />

                <asp:TextBox
                    ID="txtQty"
                    runat="server"
                    CssClass="form-control"
                    TextMode="Number"
                    min="0"
                    step="1"
                    placeholder="Enter available quantity" />

                <asp:RequiredFieldValidator
                    ID="rfvQty"
                    runat="server"
                    ControlToValidate="txtQty"
                    ErrorMessage="Quantity is required."
                    Text="Quantity is required."
                    CssClass="validation-error"
                    ValidationGroup="AddTea"
                    Display="Dynamic" />

                <asp:RangeValidator
                    ID="rvQty"
                    runat="server"
                    ControlToValidate="txtQty"
                    MinimumValue="0"
                    MaximumValue="1000000"
                    Type="Integer"
                    ErrorMessage="Quantity must be a non-negative whole number."
                    Text="Enter a valid whole-number quantity."
                    CssClass="validation-error"
                    ValidationGroup="AddTea"
                    Display="Dynamic" />


                <asp:Button
                    ID="btnInsert"
                    runat="server"
                    Text="Add Tea"
                    CssClass="btn btn-primary btn-insert"
                    ValidationGroup="AddTea"
                    CausesValidation="true" />

            </div>
        </div>

    </div>

</asp:Content>
