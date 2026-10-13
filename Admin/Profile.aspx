<%@ Page Title="Admin Profile" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">

    <style>
        .admin-profile-page {
            width: 100%;
            min-height: 80vh;
            padding: 25px 15px;
            background: #f2f2f2;
            box-sizing: border-box;
        }

        .profile-wrapper {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            width: 100%;
        }

        .profile-container {
            width: 430px;
            max-width: 100%;
            padding: 25px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        .profile-container h2 {
            margin: 0 0 20px;
            color: #333;
            text-align: center;
            font-size: 26px;
            font-weight: 600;
        }

        .profile-picture-wrapper {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-picture {
            width: 90px;
            height: 90px;
            display: block;
            margin: 0 auto 12px;
            object-fit: cover;
            border-radius: 50%;
            border: 3px solid #3B82F6;
            background: #f8f9fa;
        }

        .profile-name {
            font-size: 17px;
            font-weight: 600;
            color: #333;
            margin-bottom: 4px;
        }

        .profile-email {
            font-size: 13px;
            color: #6c757d;
            overflow-wrap: anywhere;
        }

        .field-label {
            display: block;
            margin-bottom: 6px;
            color: #333;
            font-size: 14px;
            font-weight: 600;
        }

        .profile-container .form-control {
            display: block;
            width: 100%;
            margin-bottom: 15px;
            padding: 10px 12px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            background: #fff;
            box-sizing: border-box;
            font-size: 14px;
        }

        .profile-container .form-control:focus {
            border-color: #86b7fe;
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.20);
        }

        .profile-container .btn-update {
            display: block;
            width: 100%;
            padding: 11px;
            background: #0d6efd;
            border: 1px solid #0d6efd;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        .profile-container .btn-update:hover {
            background: #0b5ed7;
            border-color: #0a58ca;
        }

        .profile-container .btn-update:focus {
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(49, 132, 253, 0.5);
        }

        .password-note {
            display: block;
            margin-top: -8px;
            margin-bottom: 15px;
            color: #6c757d;
            font-size: 12px;
        }

        @media (max-width: 576px) {
            .admin-profile-page {
                padding: 15px 10px;
            }

            .profile-container {
                padding: 20px;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">

    <div class="admin-profile-page">

        <div class="profile-wrapper">

            <div class="profile-container">

                <h2>Admin Profile</h2>

                <div class="profile-picture-wrapper">

                    <asp:Image ID="imgAdminProfile" runat="server"
                        CssClass="profile-picture"
                        AlternateText="Admin Profile Picture"
                        ImageUrl="~/images/Shreyu.png" />

                    <div class="profile-name">Administrator</div>

                    <div class="profile-email">
                        Manage your account details
                    </div>

                </div>

                <div>
                    <label class="field-label">Username</label>

                    <asp:TextBox ID="txtUsername" runat="server"
                        CssClass="form-control"
                        placeholder="Enter username"
                        MaxLength="100" />
                </div>

                <div>
                    <label class="field-label">Email</label>

                    <asp:TextBox ID="txtEmail" runat="server"
                        CssClass="form-control"
                        TextMode="Email"
                        placeholder="Enter email address"
                        MaxLength="150" />
                </div>

                <div>
                    <label class="field-label">New Password</label>

                    <asp:TextBox ID="txtPassword" runat="server"
                        CssClass="form-control"
                        TextMode="Password"
                        placeholder="Leave blank to keep old password"
                        MaxLength="100" />

                    <span class="password-note">
                        Leave blank if you do not want to change your password.
                    </span>
                </div>

                <div>
                    <label class="field-label">Confirm Password</label>

                    <asp:TextBox ID="txtConfirmPassword" runat="server"
                        CssClass="form-control"
                        TextMode="Password"
                        placeholder="Confirm new password"
                        MaxLength="100" />
                </div>

                <div>
                    <label class="field-label">Profile Picture</label>

                    <asp:FileUpload ID="fuProfilePicture" runat="server"
                        CssClass="form-control" />
                </div>

                <asp:Button ID="btnUpdateProfile" runat="server"
                    Text="Update Admin Profile"
                    CssClass="btn-update"
                    CausesValidation="false" />

            </div>

        </div>

    </div>

</asp:Content>
