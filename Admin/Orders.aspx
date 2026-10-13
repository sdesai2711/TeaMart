<%@ Page Title="Orders" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="fw-bold mb-4 text-dark">Customer Orders</h4>
    <div class="card border-0 shadow-sm rounded-3 p-4 bg-white">
        <table class="table table-hover align-middle mb-0">
            <thead class="table-light">
                <tr>
                    <th>Order #</th>
                    <th>Customer</th>
                    <th>Total</th>
                    <th>Payment</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>#ORD-501</td>
                    <td>Jane Doe</td>
                    <td>₹ 300.00</td>
                    <td>Cash on Delivery</td>
                    <td><span class="badge bg-success">Completed</span></td>
                </tr>
                <tr>
                    <td>#ORD-502</td>
                    <td>Rahul Patel</td>
                    <td>₹ 450.00</td>
                    <td>Cash on Delivery</td>
                    <td><span class="badge bg-warning">Processing</span></td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
