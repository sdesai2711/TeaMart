<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card border-0 shadow-sm rounded-3 p-4 bg-white" style="max-width: 600px; margin: 0 auto;">
        <h5 class="fw-bold mb-3 text-dark text-center">Add New Product</h5>
        <div class="mb-3">
            <label class="form-label small fw-bold">Product Title</label><input type="text" class="form-control" placeholder="e.g. Masala Chai" />
        </div>
        <div class="row">
            <div class="col-6 mb-3">
                <label class="form-label small fw-bold">Category</label><select class="form-select"><option>Tea</option>
                    <option>Coffee</option>
                </select>
            </div>
            <div class="col-6 mb-3">
                <label class="form-label small fw-bold">Price (₹)</label><input type="number" class="form-control" placeholder="250.00" />
            </div>
        </div>
        <div class="mb-3">
            <label class="form-label small fw-bold">Product Image URL</label><input type="text" class="form-control" placeholder="https://image-link.com" />
        </div>
        <div class="mb-3">
            <label class="form-label small fw-bold">Description</label><textarea rows="3" class="form-control" placeholder="Add short details..."></textarea>
        </div>
        <button type="button" class="btn btn-primary w-100 fw-bold" onclick="alert('Product Added!')">Add Product</button>
    </div>
</asp:Content>
