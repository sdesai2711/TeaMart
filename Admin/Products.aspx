<%@ Page Title="Product Management" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h4 class="fw-bold mb-0 text-dark">Product Management</h4>
        <a href="AddProduct.aspx" class="btn btn-primary"><i class="fa-solid fa-plus me-1"></i>Add New Product</a>
    </div>

    <div class="card border-0 shadow-sm rounded-3 p-4 bg-white">
        <div class="table-responsive">
            <table class="table table-hover align-middle mb-0">
                <thead class="table-light">
                    <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Stock</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <img src="https://images.unsplash.com/photo-1597481499750-3e6b22637e12?w=80" style="width: 45px; height: 45px; border-radius: 6px; object-fit: cover;" /></td>
                        <td class="fw-bold">Assam CTC Black Tea</td>
                        <td>Tea</td>
                        <td>₹ 24.00</td>
                        <td><span class="badge bg-success">In Stock</span></td>
                        <td>
                            <a href="UpdateProduct.aspx" class="btn btn-sm btn-outline-primary"><i class="fa-solid fa-pen"></i></a>
                            <button type="button" class="btn btn-sm btn-outline-danger" onclick="confirm('Delete this item?')"><i class="fa-solid fa-trash"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=80" style="width: 45px; height: 45px; border-radius: 6px; object-fit: cover;" /></td>
                        <td class="fw-bold">Dark Roast Whole Bean</td>
                        <td>Coffee</td>
                        <td>₹ 18.00</td>
                        <td><span class="badge bg-success">In Stock</span></td>
                        <td>
                            <a href="UpdateProduct.aspx" class="btn btn-sm btn-outline-primary"><i class="fa-solid fa-pen"></i></a>
                            <button type="button" class="btn btn-sm btn-outline-danger"><i class="fa-solid fa-trash"></i></button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
