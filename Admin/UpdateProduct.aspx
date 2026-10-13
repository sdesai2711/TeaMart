<%@ Page Title="Update Product" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card border-0 shadow-sm rounded-3 p-4 bg-white" style="max-width: 600px; margin: 0 auto;">
        <h5 class="fw-bold mb-3 text-dark text-center">Update Product</h5>
        <div class="mb-3">
            <label class="form-label small fw-bold">Product Title</label><input type="text" class="form-control" value="Assam CTC Black Tea" />
        </div>
        <div class="row">
            <div class="col-6 mb-3">
                <label class="form-label small fw-bold">Category</label><select class="form-select"><option selected>Tea</option>
                    <option>Coffee</option>
                </select>
            </div>
            <div class="col-6 mb-3">
                <label class="form-label small fw-bold">Price (₹)</label><input type="number" class="form-control" value="24.00" />
            </div>
        </div>
        <div class="mb-3">
            <label class="form-label small fw-bold">Image URL</label><input type="text" class="form-control" value="https://images.unsplash.com/photo-1597481499750-3e6b22637e12" />
        </div>
        <div class="mb-3">
            <label class="form-label small fw-bold">Description</label><textarea rows="3" class="form-control">A strong, full-bodied black tea from Assam.</textarea>
        </div>
        <button type="button" class="btn btn-success w-100 fw-bold" onclick="alert('Product Updated!')">Save Changes</button>
    </div>
</asp:Content>
