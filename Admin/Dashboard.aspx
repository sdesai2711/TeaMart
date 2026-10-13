<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <style>
        .content {
            flex: 1;
            max-width: 100vw;
            width: 100vw;
        }

        @media (min-width: 768px) {
            .content {
                max-width: auto;
                width: auto;
            }
        }

        .card {
            box-shadow: 0 0 .875rem 0 rgba(34, 46, 60, .05);
            margin-bottom: 24px;
        }

        .illustration {
            background-color: var(--bs-primary-bg-subtle);
            color: var(--bs-emphasis-color);
        }

        .illustration-img {
            max-width: 150px;
            width: 100%;
        }

        .avatar2 {
            height: 50px;
            width: 50px;
            object-fit: cover;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <main class="content px-3 py-2">
        <div class="container-fluid">

            <div class="mb-3">
                <h4>Admin Dashboard</h4>
            </div>

            <div class="row">

                <!-- Welcome Card -->
                <div class="col-12 col-md-6 d-flex">
                    <div class="card flex-fill border-0 illustration">
                        <div class="card-body p-0 d-flex flex-fill">
                            <div class="row g-0 w-100">
                                <div class="col-6">
                                    <div class="p-3 m-1">
                                        <h4>Welcome To FreshBasket, Admin</h4>
                                        <p class="mb-0">Admin Dashboard</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Total Earnings Card -->
                <div class="col-12 col-md-6 d-flex">
                    <div class="card flex-fill border-0">
                        <div class="card-body py-4">
                            <h4 class="mb-2">₹ 1278.00</h4>
                            <p class="mb-2">Total Earnings</p>

                            <div>
                                <span class="badge text-success me-2">+9.0%</span>
                                <span class="text-muted">Since Last Month</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Admin Users Table -->
            <div class="card border-0 mt-4">

                <div class="card-header">
                    <h5 class="card-title">Admin Users</h5>
                    <h6 class="card-subtitle text-muted">
                        This all are our Admin Users
                    </h6>
                </div>

                <div class="card-body">
                    <div class="table-responsive">

                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Profile Picture</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Admin</td>
                                    <td>admin@example.com</td>
                                    <td>
                                        <img src="~/Assets/admin_css/images/profile.jpg"
                                             runat="server"
                                             class="avatar2 img-fluid rounded"
                                             alt="Admin Profile" />
                                    </td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>Manager</td>
                                    <td>manager@example.com</td>
                                    <td>No Image</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>

            </div>

        </div>
    </main>

</asp:Content>
