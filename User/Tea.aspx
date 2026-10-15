<%@ Page Title="Tea Collection - TeaMart" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .tea-page-bg {
            background-color: #FBFBF9;
            min-height: 100vh;
            padding-bottom: 60px;
        }

        .collection-header {
            text-align: center;
            margin-bottom: 45px;
        }

            .collection-header h2 {
                font-size: 32px;
                font-weight: 800;
                color: #1E4D2B;
                margin-bottom: 6px;
            }

            .collection-header p {
                font-size: 13.5px;
                color: #718096;
                margin: 0;
            }

        .tea-card {
            background-color: #FFFFFF;
            border-radius: 12px;
            overflow: hidden;
            border: 1px solid #EAEAEA;
            transition: all 0.3s ease;
            box-shadow: 0 4px 14px rgba(0,0,0,0.03);
            display: flex;
            flex-direction: column;
            height: 100%;
        }

            .tea-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 24px rgba(0,0,0,0.08);
            }

        .tea-img-box {
            position: relative;
            height: 220px;
            width: 100%;
            background-color: #F5F5F3;
            overflow: hidden;
        }

            .tea-img-box img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

        .corner-badge {
            position: absolute;
            top: 12px;
            right: 12px;
            background-color: #27AE60;
            color: #FFFFFF;
            font-size: 10px;
            font-weight: 700;
            padding: 3px 10px;
            border-radius: 4px;
        }

        .tea-card-body {
            padding: 18px 20px 20px 20px;
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }

        .tags-row {
            display: flex;
            gap: 6px;
            margin-bottom: 10px;
        }

        .tea-tag {
            background-color: #E8F5E9;
            color: #2E7D32;
            font-size: 10px;
            font-weight: 600;
            padding: 2px 8px;
            border-radius: 4px;
        }

        .tea-title {
            font-size: 16px;
            font-weight: 700;
            color: #2D3748;
            margin-bottom: 6px;
        }

        .tea-desc {
            font-size: 11.5px;
            color: #718096;
            line-height: 1.5;
            min-height: 36px;
            margin-bottom: 18px;
        }

        .tea-action-row {
            margin-top: auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .tea-price {
            font-size: 16px;
            font-weight: 700;
            color: #1A202C;
        }

        .action-controls {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .qty-box {
            display: flex;
            align-items: center;
            border: 1px solid #CBD5E0;
            border-radius: 6px;
            overflow: hidden;
            background-color: #FFFFFF;
        }

        .qty-btn {
            background: none;
            border: none;
            color: #718096;
            font-size: 12px;
            padding: 3px 8px;
            cursor: pointer;
        }

        .qty-input {
            width: 24px;
            text-align: center;
            border: none;
            font-size: 11.5px;
            font-weight: 600;
            color: #2D3748;
            padding: 0;
            outline: none;
        }

        .btn-add-tea {
            background-color: #1E4D2B;
            color: #FFFFFF !important;
            font-size: 11.5px;
            font-weight: 600;
            padding: 6px 14px;
            border-radius: 6px;
            border: none;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 6px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tea-page-bg">
        <div class="container pt-5">
            <div class="collection-header">
                <h2>Premium Collection</h2>
                <p>Curated selections for the discerning palate.</p>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6">
                    <div class="tea-card">
                        <div class="tea-img-box">
                            <img src="https://images.unsplash.com/photo-1597481499750-3e6b22637e12?w=500" alt="Assam" /><span class="corner-badge">Organic</span></div>
                        <div class="tea-card-body">
                            <div class="tags-row"><span class="tea-tag">Robust</span><span class="tea-tag">Malty</span></div>
                            <div class="tea-title">Assam CTC Black Tea</div>
                            <div class="tea-desc">A strong, full-bodied black tea from the Brahmaputra Valley, known for its rich color and aroma.</div>
                            <div class="tea-action-row">
                                <div class="tea-price">₹24.00</div>
                                <div class="action-controls">
                                    <div class="qty-box">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-input" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-tea"><i class="fa-solid fa-basket-shopping"></i>Add</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="tea-card">
                        <div class="tea-img-box">
                            <img src="https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=500" alt="Darjeeling" /><span class="corner-badge">Fresh</span></div>
                        <div class="tea-card-body">
                            <div class="tags-row"><span class="tea-tag">Floral</span><span class="tea-tag">Delicate</span></div>
                            <div class="tea-title">Darjeeling First Flush</div>
                            <div class="tea-desc">The 'Champagne of Teas'. This early spring harvest offers delicate floral notes and a light amber liquor.</div>
                            <div class="tea-action-row">
                                <div class="tea-price">₹28.00</div>
                                <div class="action-controls">
                                    <div class="qty-box">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-input" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-tea"><i class="fa-solid fa-basket-shopping"></i>Add</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="tea-card">
                        <div class="tea-img-box">
                            <img src="https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=500" alt="Masala Chai" /><span class="corner-badge">Spiced</span></div>
                        <div class="tea-card-body">
                            <div class="tags-row"><span class="tea-tag">Spicy</span><span class="tea-tag">Aromatic</span></div>
                            <div class="tea-title">Authentic Masala Chai</div>
                            <div class="tea-desc">A fragrant blend of premium Assam black tea infused with hand-crushed green cardamom and spices.</div>
                            <div class="tea-action-row">
                                <div class="tea-price">₹18.00</div>
                                <div class="action-controls">
                                    <div class="qty-box">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-input" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-tea"><i class="fa-solid fa-basket-shopping"></i>Add</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="tea-card">
                        <div class="tea-img-box">
                            <img src="https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=500" alt="Kashmiri Kahwa" /><span class="corner-badge">Premium</span></div>
                        <div class="tea-card-body">
                            <div class="tags-row"><span class="tea-tag">Fragrant</span><span class="tea-tag">Green</span></div>
                            <div class="tea-title">Kashmiri Kahwa</div>
                            <div class="tea-desc">A fragrant Himalayan green tea blend with saffron, almonds, cinnamon, and whole cardamom.</div>
                            <div class="tea-action-row">
                                <div class="tea-price">₹32.00</div>
                                <div class="action-controls">
                                    <div class="qty-box">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-input" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-tea"><i class="fa-solid fa-basket-shopping"></i>Add</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="tea-card">
                        <div class="tea-img-box">
                            <img src="https://images.unsplash.com/photo-1597481499750-3e6b22637e12?w=500" alt="Nilgiri" /><span class="corner-badge">Brisk</span></div>
                        <div class="tea-card-body">
                            <div class="tags-row"><span class="tea-tag">Classic</span><span class="tea-tag">Black</span></div>
                            <div class="tea-title">Nilgiri Black Tea</div>
                            <div class="tea-desc">Exquisite, brisk black tea from the Blue Mountains of South India with citrus undertones.</div>
                            <div class="tea-action-row">
                                <div class="tea-price">₹26.00</div>
                                <div class="action-controls">
                                    <div class="qty-box">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-input" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-tea"><i class="fa-solid fa-basket-shopping"></i>Add</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="tea-card">
                        <div class="tea-img-box">
                            <img src="https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=500" alt="Earl Grey" /><span class="corner-badge">Citrus</span></div>
                        <div class="tea-card-body">
                            <div class="tags-row"><span class="tea-tag">Bergamot</span><span class="tea-tag">Aromatic</span></div>
                            <div class="tea-title">Earl Grey</div>
                            <div class="tea-desc">Classic black tea infused with the refreshing and distinct citrusy aroma of pure cold-pressed bergamot.</div>
                            <div class="tea-action-row">
                                <div class="tea-price">₹22.00</div>
                                <div class="action-controls">
                                    <div class="qty-box">
                                        <button type="button" class="qty-btn" onclick="this.nextElementSibling.stepDown()">-</button><input type="number" class="qty-input" value="1" min="1" />
                                        <button type="button" class="qty-btn" onclick="this.previousElementSibling.stepUp()">+</button></div>
                                    <a href="Cart.aspx" class="btn-add-tea"><i class="fa-solid fa-basket-shopping"></i>Add</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
