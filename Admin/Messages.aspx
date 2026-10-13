<%@ Page Title="Inquiries" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="fw-bold mb-4 text-dark">Contact Messages</h4>
    <div class="card border-0 shadow-sm rounded-3 p-4 bg-white">
        <table class="table table-hover align-middle mb-0">
            <thead class="table-light">
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Message</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Suresh Joshi</td>
                    <td>suresh@gmail.com</td>
                    <td>Need bulk coffee beans for a cafe.</td>
                    <td><a href="mailto:suresh@gmail.com" class="btn btn-sm btn-outline-primary">Reply</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
