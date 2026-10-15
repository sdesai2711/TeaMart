<%@ Page Title="Update Profile - TeaMart" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .profile-page-bg {
            background-color: #EEF4F8;
            min-height: 90vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px 20px;
        }

        .profile-wrapper {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 30px;
            width: 100%;
            max-width: 950px;
        }

        .side-deco-img {
            width: 130px;
            height: 130px;
            border-radius: 16px;
            object-fit: cover;
            border: 4px solid #FFFFFF;
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
        }

        .profile-card {
            background-color: #FFFFFF;
            border-radius: 20px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.08);
            width: 100%;
            max-width: 540px;
            padding: 40px;
        }

        .profile-title {
            font-size: 24px;
            font-weight: 800;
            color: #1E4D2B;
            text-align: center;
            margin-bottom: 25px;
        }

        .form-label-custom {
            font-size: 12px;
            font-weight: 700;
            color: #718096;
            margin-bottom: 5px;
            display: block;
        }

        .input-profile {
            width: 100%;
            border: 1.5px solid #CBD5E0;
            border-radius: 8px;
            padding: 10px 14px;
            font-size: 13px;
            outline: none;
            margin-bottom: 14px;
        }

            .input-profile:focus {
                border-color: #1E4D2B;
            }

        .btn-update-profile {
            background-color: #F5B01E;
            color: #1A202C;
            font-size: 14px;
            font-weight: 700;
            padding: 12px;
            border-radius: 8px;
            width: 100%;
            border: none;
            margin-top: 10px;
            cursor: pointer;
        }

            .btn-update-profile:hover {
                background-color: #E29E10;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="profile-page-bg">
        <div class="profile-wrapper">
            <img src="/images/T1.jpg" class="side-deco-img d-none d-md-block" alt="Tea" />
            <div class="profile-card">
                <div class="profile-title">Update Profile</div>
                <div class="row">
                    <div class="col-6">
                        <label class="form-label-custom">First Name</label><input type="text" class="input-profile" value="Jane" /></div>
                    <div class="col-6">
                        <label class="form-label-custom">Last Name</label><input type="text" class="input-profile" value="Doe" /></div>
                </div>
                <label class="form-label-custom">Email Address</label>
                <input type="email" class="input-profile" value="jane@example.com" />
                <label class="form-label-custom">Phone Number</label>
                <input type="text" class="input-profile" value="+91 9876543210" />
                <label class="form-label-custom">Delivery Address</label>
                <input type="text" class="input-profile" value="123 Green Valley, Ahmedabad" />
                <button type="button" class="btn-update-profile">Save Changes</button>
            </div>
            <img src="/images/T2.jpg" class="side-deco-img d-none d-md-block" alt="Matcha" />
        </div>
    </div>
</asp:Content>
