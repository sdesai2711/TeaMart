<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Coffee.aspx.cs" Inherits="TeaMart.Admin.Coffee" %>


<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <style>
        .coffee-page {
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
        }

        .coffee-page .add-coffee-btn {
            display: inline-block;
            padding: 9px 16px;
            margin-bottom: 15px;
            color: #fff;
            background: #0d6efd;
            border: 1px solid #0d6efd;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
        }

        .coffee-page .add-coffee-btn:hover {
            background: #0b5ed7;
            color: #fff;
        }

        .coffee-page .coffee-card {
            background: #fff;
            border: 0;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
            overflow: hidden;
        }

        .coffee-page .card-header {
            padding: 18px 20px;
            background: #fff;
            border-bottom: 1px solid #dee2e6;
        }

        .coffee-page .card-title {
            margin: 0 0 5px;
            color: #212529;
            font-size: 20px;
            font-weight: 600;
        }

        .coffee-page .card-subtitle {
            color: #6c757d;
            font-size: 13px;
        }

        .coffee-page .card-body {
            padding: 20px;
        }

        .coffee-page .table-responsive {
            width: 100%;
            overflow-x: auto;
        }

        .coffee-page .coffee-table {
            width: 100%;
            margin-bottom: 0;
            border-collapse: collapse;
            vertical-align: middle;
        }

        .coffee-page .coffee-table th {
            padding: 13px 12px;
            background: #f8f9fa;
            color: #343a40;
            border-bottom: 2px solid #dee2e6;
            text-align: left;
            white-space: nowrap;
            font-size: 14px;
            font-weight: 600;
        }

        .coffee-page .coffee-table td {
            padding: 12px;
            border-bottom: 1px solid #dee2e6;
            color: #495057;
            font-size: 14px;
        }

        .coffee-page .coffee-table tbody tr:hover {
            background: #f8faff;
        }

        .coffee-page .coffee-image {
            width: 75px;
            height: 65px;
            object-fit: cover;
            border-radius: 6px;
            border: 1px solid #e9ecef;
        }

        .coffee-page .btn-action {
            display: inline-block;
            padding: 7px 12px;
            border-radius: 5px;
            text-decoration: none;
            color: #fff;
            border: 1px solid transparent;
            font-size: 13px;
            cursor: pointer;
            white-space: nowrap;
        }

        .coffee-page .btn-update {
            background: #198754;
            border-color: #198754;
        }

        .coffee-page .btn-update:hover {
            background: #157347;
            color: #fff;
        }

        .coffee-page .btn-delete {
            background: #dc3545;
            border-color: #dc3545;
        }

        .coffee-page .btn-delete:hover {
            background: #bb2d3b;
            color: #fff;
        }
    </style>

    <script type="text/javascript">
function confirmCoffeeDelete() {
    return confirm('Are you sure you want to delete this coffee item?');
}
</script>
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">
    <main class="coffee-page">

        <a href="<%= ResolveUrl("~/Admin/AddCoffee.aspx") %>" class="add-coffee-btn">+ Add New Coffee</a>

        <div class="coffee-card">
            <div class="card-header">
                <h5 class="card-title">Coffee</h5>
                <div class="card-subtitle">Here are all available coffee products!</div>
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="coffee-table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Image</th>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Price</th>
                                <th>Qty</th>
                                <th>Update</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>
                                    <img src="https://placehold.co/100x80/6f4e37/ffffff?text=Espresso" alt="Espresso" class="coffee-image" />
                                </td>
                                <td>Espresso</td>
                                <td>Strong, concentrated coffee served in shots.</td>
                                <td>₹140</td>
                                <td>40</td>
                                <td>
                                    <a href="<%= ResolveUrl("~/Admin/UpdateCoffee.aspx?id=1") %>" class="btn-action btn-update">Update</a>
                                </td>
                                <td>
                                    <a href="#" class="btn-action btn-delete" onclick="return confirmCoffeeDelete();">Delete</a>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>
                                    <img src="https://placehold.co/100x80/d2b48c/4a2c11?text=Cappuccino" alt="Cappuccino" class="coffee-image" />
                                </td>
                                <td>Cappuccino</td>
                                <td>Espresso topped with creamy foamed milk.</td>
                                <td>₹180</td>
                                <td>30</td>
                                <td>
                                    <a href="<%= ResolveUrl("~/Admin/UpdateCoffee.aspx?id=2") %>" class="btn-action btn-update">Update</a>
                                </td>
                                <td>
                                    <a href="#" class="btn-action btn-delete" onclick="return confirmCoffeeDelete();">Delete</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </main>
</asp:Content>