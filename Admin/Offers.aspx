<%@ Page Title="Offers" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Assets/admin_css/dashboard.css" />

    <style>
        .offer-img {
            width: 90px;
            height: 60px;
            object-fit: cover;
            border-radius: 6px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }

        .table > :not(caption) > * > * {
            vertical-align: middle;
            border-bottom-width: 1px;
        }

        .table th {
            font-weight: 600;
            color: #212529;
            border-top: none;
        }

        .top-btn {
            border-radius: 6px;
            padding: 8px 18px;
            font-weight: 500;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main class="content px-3 py-3">
        <div class="container-fluid">

            <!-- Add New Offer Button -->
            <a href="Add_offers.aspx" class="btn btn-primary mb-4 top-btn">Add new offer</a>

            <!-- Offers List Card -->
            <div class="card border-0 shadow-sm rounded-3">
                <div class="card-header bg-white pt-4 pb-3 border-0">
                    <h4 class="card-title fw-bold mb-1">Offers</h4>
                    <p class="text-muted mb-0">Here is all available special offers and discounts!</p>
                </div>

                <div class="card-body pt-0">
                    <div class="table-responsive">
                        
                        <table class="table align-middle mb-0">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Discount</th>
                                    <th scope="col">Valid From</th>
                                    <th scope="col">Valid To</th>
                                    <th scope="col">Update</th>
                                    <th scope="col">Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Sample Manual Row 1 -->
                                <tr>
                                    <th scope="row">1</th>
                                    <td>
                                        <img src="Assets/admin_css/images/default-offer.jpg" 
                                             class="offer-img" 
                                             alt="Offer Image" 
                                             onerror="this.onerror=null;this.src='https://via.placeholder.com/90x60?text=Tea+Offer';" />
                                    </td>
                                    <td>Monsoon Special Blend</td>
                                    <td>Get flat 20% off on all organic green & herbal tea packs.</td>
                                    <td><span class="badge bg-warning text-dark">20% OFF</span></td>
                                    <td>01/10/2026</td>
                                    <td>31/10/2026</td>
                                    <td>
                                        <a href="Update_offers.aspx?id=1" class="btn btn-success btn-sm px-3">Update</a>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-danger btn-sm px-3" onclick="return confirm('Are you sure you want to delete this offer?');">Delete</button>
                                    </td>
                                </tr>

                                <!-- Sample Manual Row 2 -->
                                <tr>
                                    <th scope="row">2</th>
                                    <td>
                                        <img src="Assets/admin_css/images/default-offer.jpg" 
                                             class="offer-img" 
                                             alt="Offer Image" 
                                             onerror="this.onerror=null;this.src='https://via.placeholder.com/90x60?text=Coffee+Offer';" />
                                    </td>
                                    <td>Festive Combo Deal</td>
                                    <td>Buy 2 packs of premium roast coffee and get 1 tea pack free.</td>
                                    <td><span class="badge bg-warning text-dark">Buy 2 Get 1</span></td>
                                    <td>15/10/2026</td>
                                    <td>05/11/2026</td>
                                    <td>
                                        <a href="Update_offers.aspx?id=2" class="btn btn-success btn-sm px-3">Update</a>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-danger btn-sm px-3" onclick="return confirm('Are you sure you want to delete this offer?');">Delete</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>

        </div>
    </main>
</asp:Content>