<%@ Page Title="Contacts" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Contacte.aspx.cs" Inherits="TeaMart.Admin.Contacte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact-card {
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.08);
            padding: 28px 32px;
            margin: 20px 0;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        }

        .contact-title {
            font-size: 20px;
            font-weight: 600;
            color: #2b354f;
            margin-bottom: 6px;
        }

        .contact-subtitle {
            font-size: 13px;
            color: #7d879c;
            margin-bottom: 25px;
        }

        .contact-table {
            width: 100%;
            border-collapse: collapse;
        }

        .contact-table th {
            font-size: 13px;
            font-weight: 700;
            color: #2b354f;
            padding: 12px 16px;
            border-bottom: 1px solid #eef1f6;
            text-align: left;
        }

        .contact-table td {
            font-size: 13px;
            color: #4b566b;
            padding: 16px 16px;
            border-bottom: 1px solid #f0f3f7;
            vertical-align: middle;
        }

        .contact-table tr:last-child td {
            border-bottom: none;
        }

        .col-id {
            font-weight: 700;
            color: #2b354f;
            width: 6%;
        }

        .col-name {
            width: 25%;
            line-height: 1.4;
        }

        .col-email {
            width: 32%;
        }

        .col-msg {
            width: 25%;
        }

        .col-action {
            width: 12%;
            text-align: right;
        }

        .btn-reply {
            background-color: #00b67a;
            color: #ffffff !important;
            border: none;
            padding: 6px 18px;
            font-size: 12px;
            font-weight: 500;
            border-radius: 4px;
            text-decoration: none;
            display: inline-block;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        .btn-reply:hover {
            background-color: #009966;
            text-decoration: none;
        }

        .table-responsive-wrapper {
            width: 100%;
            overflow-x: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid px-3">
        <div class="contact-card">
            
            <div class="contact-title">Contacts</div>
            <div class="contact-subtitle">Here is all problem of customers are shown below!!</div>

            <div class="table-responsive-wrapper">
                <table class="contact-table">
                    <thead>
                        <tr>
                            <th class="col-id">#</th>
                            <th class="col-name">Name</th>
                            <th class="col-email">Email</th>
                            <th class="col-msg">Message</th>
                            <th class="col-action">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- રો ૧ (ID: 16) -->
                        <tr>
                            <td class="col-id">16</td>
                            <td class="col-name">Vasu Bhaveshbhai<br />Ghetiya</td>
                            <td class="col-email">shreyughodasara76@gmail.com</td>
                            <td class="col-msg">qwertyuiop['</td>
                            <td class="col-action">
                                <a href="Contact_reply.aspx?id=16" class="btn-reply">Reply</a>
                            </td>
                        </tr>

                        <!-- રો ૨ (ID: 17) -->
                        <tr>
                            <td class="col-id">17</td>
                            <td class="col-name">Vasu Bhaveshbhai<br />Ghetiya</td>
                            <td class="col-email">vasughetia995@gmail.com</td>
                            <td class="col-msg">qwertyuiol;</td>
                            <td class="col-action">
                                <a href="Contact_reply.aspx?id=17" class="btn-reply">Reply</a>
                            </td>
                        </tr>

                        <!-- રો ૩ (ID: 18) -->
                        <tr>
                            <td class="col-id">18</td>
                            <td class="col-name">Vasu Bhaveshbhai<br />Ghetiya</td>
                            <td class="col-email">vasughetia995@gmail.com</td>
                            <td class="col-msg">qwertyu</td>
                            <td class="col-action">
                                <a href="Contact_reply.aspx?id=18" class="btn-reply">Reply</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</asp:Content>