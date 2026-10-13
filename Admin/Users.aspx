<%@ Page Title="Registered Users" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>

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
                max-width: none;
                width: auto;
            }
        }

        .card {
            box-shadow: 0 0 .875rem 0 rgba(34, 46, 60, .05);
            margin-bottom: 24px;
        }

        .profile-picture {
            width: 50px;
            height: 50px;
            object-fit: cover;
            border-radius: 50%;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <main class="content px-3 py-2">
        <div class="container-fluid">

            <div class="d-flex justify-content-start mb-3">
                <asp:HyperLink
                    ID="lnkAddUser"
                    runat="server"
                    NavigateUrl="~/Admin/AddUser.aspx"
                    CssClass="btn btn-primary">
                    Add User
                </asp:HyperLink>
            </div>

            <div class="card border-0">

                <div class="card-header">
                    <h5 class="card-title">Users</h5>
                    <h6 class="card-subtitle text-muted">
                        Below mentioned users are our customers
                    </h6>
                </div>

                <div class="card-body">
                    <div class="table-responsive">

                        <table class="table table-hover align-middle" cellpadding="10">

                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Profile Picture</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Phone Number</th>
                                    <th>Address</th>
                                    <th>Status</th>
                                    <th>Update</th>
                                    <th>Delete</th>
                                    <th>Cart</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>
                                        <img src="<%= ResolveUrl("~/Assets/admin_css/images/profile.jpg") %>"
                                             class="profile-picture"
                                             alt="User Profile" />
                                    </td>
                                    <td>Rahul</td>
                                    <td>Patel</td>
                                    <td>rahul@example.com</td>
                                    <td>9876543210</td>
                                    <td>Ahmedabad</td>
                                    <td><span class="badge bg-success">Active</span></td>
                                    <td>
                                        <a href="<%= ResolveUrl("~/Admin/UpdateUser.aspx?id=1") %>"
                                           class="btn btn-success btn-sm">Update</a>
                                    </td>
                                    <td>
                                        <button type="button"
                                                class="btn btn-danger btn-sm"
                                                onclick="confirmDelete(1)">
                                            Delete
                                        </button>
                                    </td>
                                    <td>
                                        <a href="<%= ResolveUrl("~/Admin/Cart.aspx?id=1") %>"
                                           class="btn btn-primary btn-sm">Cart</a>
                                    </td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>
                                        <img src="<%= ResolveUrl("~/Assets/admin_css/images/profile.jpg") %>"
                                             class="profile-picture"
                                             alt="User Profile" />
                                    </td>
                                    <td>Jane</td>
                                    <td>Doe</td>
                                    <td>jane@example.com</td>
                                    <td>9876543211</td>
                                    <td>Rajkot</td>
                                    <td><span class="badge bg-success">Active</span></td>
                                    <td>
                                        <a href="<%= ResolveUrl("~/Admin/UpdateUser.aspx?id=2") %>"
                                           class="btn btn-success btn-sm">Update</a>
                                    </td>
                                    <td>
                                        <button type="button"
                                                class="btn btn-danger btn-sm"
                                                onclick="confirmDelete(2)">
                                            Delete
                                        </button>
                                    </td>
                                    <td>
                                        <a href="<%= ResolveUrl("~/Admin/Cart.aspx?id=2") %>"
                                           class="btn btn-primary btn-sm">Cart</a>
                                    </td>
                                </tr>
                            </tbody>

                        </table>

                    </div>
                </div>

            </div>

        </div>
    </main>

    <script type="text/javascript">
        function confirmDelete(id) {
            if (confirm('Are you sure you want to delete this user?')) {
                window.location.href =
            '<%= ResolveUrl("~/Admin/DeleteUser.aspx") %>?id='
            + encodeURIComponent(id);
    }
}
</script>

</asp:Content>
