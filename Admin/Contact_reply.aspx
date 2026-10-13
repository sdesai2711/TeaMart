<%@ Page Title="Reply to User" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" Inherits="TeaMart.Admin.Contact_reply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .back-btn-wrapper {
            max-width: 600px;
            margin: 15px auto 0 auto;
            text-align: left;
        }

        .btn-back {
            background-color: #0d6efd;
            color: #ffffff !important;
            border: none;
            border-radius: 6px;
            padding: 7px 22px;
            font-size: 14px;
            font-weight: 500;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.2s;
        }

        .btn-back:hover {
            background-color: #0b5ed7;
            text-decoration: none;
        }

        .reply-card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.06);
            padding: 36px 40px;
            max-width: 600px;
            margin: 15px auto 30px auto;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
        }

        .reply-header {
            font-size: 22px;
            font-weight: 600;
            color: #2b354f;
            text-align: center;
            margin-bottom: 24px;
        }

        .contact-details {
            margin-bottom: 24px;
            font-size: 14px;
            color: #33383f;
            line-height: 1.8;
        }

        .contact-details strong {
            color: #1a202c;
            font-weight: 700;
        }

        .form-label-custom {
            font-size: 13px;
            color: #4a5568;
            margin-bottom: 8px;
            display: block;
        }

        .reply-textarea {
            width: 100%;
            border: 1px solid #d2d6dc;
            border-radius: 6px;
            padding: 12px;
            font-size: 14px;
            color: #495057;
            resize: vertical;
            outline: none;
            box-sizing: border-box;
        }

        .reply-textarea:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 0 2px rgba(59, 130, 246, 0.2);
        }

        .btn-send {
            background-color: #1a73e8;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            padding: 10px;
            width: 100%;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            margin-top: 18px;
            transition: background-color 0.2s;
        }

        .btn-send:hover {
            background-color: #1557b0;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        
        <!-- Back Button -->
        <div class="back-btn-wrapper">
            <a href="Contacte.aspx" class="btn-back">&larr; Back</a>
        </div>

        <div class="reply-card">
            
            <!-- Header Title -->
            <div class="reply-header">
                Reply to <asp:Literal ID="litTitleName" runat="server" Text="Rahul Sharma"></asp:Literal>
            </div>

            <!-- Contact Details -->
            <div class="contact-details">
                <div><strong>Name:</strong> <asp:Label ID="lblName" runat="server" Text="Rahul Sharma"></asp:Label></div>
                <div><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" Text="rahul@example.com"></asp:Label></div>
                <div><strong>Message:</strong> <asp:Label ID="lblMessage" runat="server" Text="I would like to know more about wholesale tea prices and delivery times."></asp:Label></div>
            </div>

            <!-- Response Alert Message -->
            <asp:Label ID="lblAlert" runat="server" Visible="false"></asp:Label>

            <!-- Reply Form Elements -->
            <div>
                <label class="form-label-custom">Reply Message</label>
                <asp:TextBox ID="txtReply" runat="server" TextMode="MultiLine" Rows="5" CssClass="reply-textarea" placeholder="Type your reply here..." Text="Hello Rahul, thank you for reaching out. Here are the details regarding wholesale pricing..."></asp:TextBox>
                
                <asp:Button ID="btnSendReply" runat="server" Text="Send Reply" CssClass="btn-send" CausesValidation="false" />
            </div>

        </div>
    </div>
</asp:Content>