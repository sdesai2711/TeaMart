<%@ Page Title="Customer Reviews" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="TeaMart.Admin.Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="admin_css/dashboard.css" />

    <style>
        .star {
            font-size: 18px;
            color: #ddd;
        }
        .star.filled {
            color: #ffc107;
        }
        .illustration {
            background-color: #dbeafe;
            border-radius: 8px;
        }
        .table-responsive {
            margin-bottom: 15px;
            overflow-x: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main class="content px-3 py-2">
        <div class="container-fluid">
            
            <div class="mb-3">
                <h4 class="fw-bold text-dark">TeaMart's Ratings and Reviews</h4>
            </div>

            <!-- સ્ટેટસ કાર્ડ્સ -->
            <div class="row mb-3">
                <div class="col-12 col-md-6 d-flex mb-3 mb-md-0">
                    <div class="card flex-fill border-0 illustration shadow-sm">
                        <div class="card-body p-4">
                            <h5 class="fw-bold mb-1">This is our Ratings and Reviews.</h5>
                            <p class="mb-0 text-muted">Admin Panel</p>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 d-flex">
                    <div class="card flex-fill border-0 shadow-sm">
                        <div class="card-body py-4">
                            <h3 class="mb-1 fw-bold">
                                <asp:Label ID="lblAverageRating" runat="server" Text="0.0"></asp:Label> ⭐
                            </h3>
                            <p class="mb-0 text-muted">Average Rating</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- રેટિંગ્સ અને રિવ્યુઝ ટેબલ કાર્ડ (માત્ર View કરવા માટે) -->
            <div class="card border-0 shadow-sm rounded-3">
                <div class="card-header bg-white py-3 border-0">
                    <h5 class="card-title fw-bold mb-1">TeaMart's Ratings and Reviews</h5>
                    <h6 class="card-subtitle text-muted">This all are our Ratings and Reviews.</h6>
                </div>
                <div class="card-body pt-0">
                    <div class="table-responsive">
                        <table class="table table-hover align-middle mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Ratings</th>
                                    <th scope="col">Reviews</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptReviews" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <th scope="row"><%# Eval("Id") %></th>
                                            <td><%# Server.HtmlEncode(Eval("Email").ToString()) %></td>
                                            <td>
                                                <%# RenderStars(Convert.ToInt32(Eval("Rating"))) %>
                                            </td>
                                            <td><%# Server.HtmlEncode(Eval("Review").ToString()) %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>

                                <asp:PlaceHolder ID="phNoData" runat="server" Visible="false">
                                    <tr>
                                        <td colspan="4" class="text-center text-muted py-4">
                                            No reviews found
                                        </td>
                                    </tr>
                                </asp:PlaceHolder>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </main>
</asp:Content>