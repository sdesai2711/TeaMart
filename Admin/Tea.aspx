<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Tea.aspx.cs" Inherits="TeaMart.Admin.Tea" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <style>
        .tea-page {
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
        }

            .tea-page .add-tea-btn {
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

                .tea-page .add-tea-btn:hover {
                    background: #0b5ed7;
                    color: #fff;
                }

            .tea-page .tea-card {
                background: #fff;
                border: 0;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
                overflow: hidden;
            }

            .tea-page .card-header {
                padding: 18px 20px;
                background: #fff;
                border-bottom: 1px solid #dee2e6;
            }

            .tea-page .card-title {
                margin: 0 0 5px;
                color: #212529;
                font-size: 20px;
                font-weight: 600;
            }

            .tea-page .card-subtitle {
                color: #6c757d;
                font-size: 13px;
            }

            .tea-page .card-body {
                padding: 20px;
            }

            .tea-page .table-responsive {
                width: 100%;
                overflow-x: auto;
            }

            .tea-page .tea-table {
                width: 100%;
                margin-bottom: 0;
                border-collapse: collapse;
                vertical-align: middle;
            }

                .tea-page .tea-table th {
                    padding: 13px 12px;
                    background: #f8f9fa;
                    color: #343a40;
                    border-bottom: 2px solid #dee2e6;
                    text-align: left;
                    white-space: nowrap;
                    font-size: 14px;
                    font-weight: 600;
                }

                .tea-page .tea-table td {
                    padding: 12px;
                    border-bottom: 1px solid #dee2e6;
                    color: #495057;
                    font-size: 14px;
                }

                .tea-page .tea-table tbody tr:hover {
                    background: #f8faff;
                }

                .tea-page .tea-table tbody tr:last-child td {
                    border-bottom: none;
                }

            .tea-page .tea-image {
                width: 75px;
                height: 65px;
                object-fit: cover;
                border-radius: 6px;
                border: 1px solid #e9ecef;
            }

            .tea-page .btn-action {
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

            .tea-page .btn-update {
                background: #198754;
                border-color: #198754;
            }

                .tea-page .btn-update:hover {
                    background: #157347;
                    color: #fff;
                }

            .tea-page .btn-delete {
                background: #dc3545;
                border-color: #dc3545;
            }

                .tea-page .btn-delete:hover {
                    background: #bb2d3b;
                    color: #fff;
                }

        @media (max-width: 768px) {
            .tea-page {
                padding: 12px;
            }

                .tea-page .card-body {
                    padding: 10px;
                }

                .tea-page .tea-table th,
                .tea-page .tea-table td {
                    padding: 9px;
                    font-size: 12px;
                }

                .tea-page .tea-image {
                    width: 60px;
                    height: 55px;
                }
        }

        @media (max-width: 576px) {
            .tea-page .add-tea-btn {
                width: 100%;
                text-align: center;
                box-sizing: border-box;
            }
        }
    </style>

    <script type="text/javascript">
        function confirmTeaDelete() {
            return confirm('Are you sure you want to delete this tea item?');
        }
    </script>
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">

    <main class="tea-page">

        <a href="<%= ResolveUrl("~/Admin/AddTea.aspx") %>"
            class="add-tea-btn">+ Add New Tea
        </a>

        <div class="tea-card">

            <div class="card-header">
                <h5 class="card-title">Tea</h5>
                <div class="card-subtitle">
                    Here are all available tea products!
                </div>
            </div>

            <div class="card-body">

                <div class="table-responsive">

                    <table class="tea-table">

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

                            <!-- Row 1: Green Tea -->
                            <tr>
                                <td>1</td>
                                <td>
                                    <img src="https://placehold.co/100x80/e8f5e9/285943?text=Green+Tea"
                                        alt="Green Tea" class="tea-image" />
                                </td>
                                <td>Green Tea</td>
                                <td>Fresh and refreshing green tea.</td>
                                <td>₹120</td>
                                <td>50</td>
                                <td>
                                    <a href="<%= ResolveUrl("~/Admin/UpdateTea.aspx?id=1") %>"
                                        class="btn-action btn-update">Update</a>
                                </td>
                                <td>
                                    <a href="#"
                                        class="btn-action btn-delete"
                                        onclick="return confirmTeaDelete();">Delete</a>
                                </td>
                            </tr>

                            <!-- Row 2: Masala Tea (અહીં લિંક સુધારીને UpdateTea.aspx કરેલ છે) -->
                            <tr>
                                <td>2</td>
                                <td>
                                    <img src="https://placehold.co/100x80/f5e6ca/704214?text=Masala+Tea"
                                        alt="Masala Tea" class="tea-image" />
                                </td>
                                <td>Masala Tea</td>
                                <td>Traditional tea blended with aromatic spices.</td>
                                <td>₹150</td>
                                <td>35</td>
                                <td>
                                    <a href="<%= ResolveUrl("~/Admin/UpdateTea.aspx?id=2") %>"
                                        class="btn-action btn-update">Update</a>
                                </td>
                                <td>
                                    <a href="#"
                                        class="btn-action btn-delete"
                                        onclick="return confirmTeaDelete();">Delete</a>
                                </td>
                            </tr>

                        </tbody>

                    </table>

                </div>

            </div>

        </div>

    </main>
</asp:Content>
