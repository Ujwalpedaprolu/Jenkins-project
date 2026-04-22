<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Emporium | Holiday Edit • Red & Green Collection</title>
    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #fefaf5;
            font-family: 'Inter', sans-serif;
            color: #1e2a1a;
            scroll-behavior: smooth;
        }

        /* RED & GREEN THEME — Festive, bold, elegant */
        :root {
            --holiday-red: #b63a2c;
            --deep-red: #8b2c1e;
            --soft-red-glow: #fbe9e6;
            --evergreen: #1e4620;
            --forest-green: #2f5e2c;
            --sage-light: #e2f0df;
            --gold-accent: #d4af37;
            --cream-paper: #fff9ef;
            --charcoal-soft: #2c2a24;
            --border-light: #e2dcd0;
            --shadow-sm: 0 12px 28px -8px rgba(0, 0, 0, 0.06), 0 4px 12px rgba(0, 0, 0, 0.02);
            --shadow-hover: 0 24px 40px -12px rgba(0, 0, 0, 0.15);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        h1, h2, h3, .logo, .serif {
            font-family: 'Playfair Display', serif;
        }

        h2 {
            font-size: 2.2rem;
            font-weight: 600;
            letter-spacing: -0.01em;
            position: relative;
            display: inline-block;
            color: var(--evergreen);
        }

        .section-head {
            text-align: center;
            margin-bottom: 2.8rem;
        }

        .section-head p {
            color: #5f5b4b;
            font-size: 1rem;
            margin-top: 0.5rem;
        }

        .divider {
            width: 70px;
            height: 2px;
            background: var(--holiday-red);
            margin: 0.8rem auto 0;
        }

        /* Top bar & header */
        .top-bar {
            background: var(--evergreen);
            color: #fdf7e0;
            font-size: 0.8rem;
            padding: 8px 0;
            text-align: center;
            letter-spacing: 0.5px;
            font-weight: 500;
        }

        header {
            background: #ffffffea;
            backdrop-filter: blur(10px);
            position: sticky;
            top: 0;
            z-index: 100;
            border-bottom: 1px solid #e9ded2;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.02);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0.9rem 0;
            gap: 24px;
            flex-wrap: wrap;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--evergreen);
            letter-spacing: -0.3px;
        }

        .logo span {
            color: var(--holiday-red);
            font-weight: 600;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            color: #2a3a1f;
            transition: 0.2s;
            font-size: 0.95rem;
        }

        .nav-links a:hover {
            color: var(--holiday-red);
        }

        .header-actions {
            display: flex;
            gap: 18px;
            align-items: center;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            cursor: pointer;
            color: var(--evergreen);
            transition: 0.2s;
        }

        .icon-btn:hover {
            color: var(--holiday-red);
        }

        .cart-icon {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: var(--holiday-red);
            color: white;
            font-size: 0.7rem;
            font-weight: bold;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
            color: var(--evergreen);
        }

        /* Hero — red & green blend */
        .hero {
            background: linear-gradient(115deg, #f4ede1 0%, #e8f0e3 100%);
            border-radius: 0 0 48px 48px;
            margin-bottom: 2rem;
            overflow: hidden;
            position: relative;
        }

        .hero-grid {
            display: flex;
            align-items: center;
            gap: 48px;
            padding: 48px 0 56px;
            flex-wrap: wrap;
        }

        .hero-content {
            flex: 1;
        }

        .hero-badge {
            display: inline-block;
            background: var(--holiday-red);
            color: white;
            padding: 4px 14px;
            border-radius: 60px;
            font-size: 0.75rem;
            font-weight: 700;
            letter-spacing: 0.5px;
            margin-bottom: 20px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
        }

        .hero-content h1 {
            font-size: 3.3rem;
            line-height: 1.2;
            margin-bottom: 20px;
            color: var(--evergreen);
        }

        .hero-content p {
            font-size: 1rem;
            color: #4a5a3a;
            max-width: 480px;
            margin-bottom: 32px;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        .btn-primary {
            background: var(--evergreen);
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.9rem;
            cursor: pointer;
            transition: 0.2s;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
        }

        .btn-primary:hover {
            background: var(--forest-green);
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            border: 1px solid var(--holiday-red);
            color: var(--holiday-red);
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .btn-outline:hover {
            background: rgba(182, 58, 44, 0.08);
            border-color: var(--deep-red);
        }

        .hero-image img {
            max-width: 100%;
            border-radius: 32px;
            box-shadow: 0 20px 35px -10px rgba(0,0,0,0.15);
            border: 2px solid rgba(212, 175, 55, 0.3);
        }

        /* categories cards */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
            gap: 24px;
            margin: 32px 0 16px;
        }

        .cat-card {
            background: white;
            padding: 1.6rem 0.8rem;
            text-align: center;
            border-radius: 28px;
            box-shadow: var(--shadow-sm);
            transition: all 0.25s ease;
            border: 1px solid #ecdfcf;
            cursor: pointer;
        }

        .cat-card i {
            font-size: 2.2rem;
            color: var(--holiday-red);
            margin-bottom: 12px;
        }

        .cat-card h4 {
            font-weight: 700;
            margin-bottom: 5px;
            color: var(--evergreen);
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--gold-accent);
        }

        /* product cards */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 32px;
            margin: 24px 0;
        }

        .product-card {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            transition: all 0.25s;
            box-shadow: var(--shadow-sm);
            border: 1px solid #eddfd2;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }

        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            display: block;
        }

        .product-info {
            padding: 18px 16px 16px;
        }

        .product-title {
            font-weight: 700;
            font-size: 1.05rem;
            margin-bottom: 8px;
            color: #1f2e18;
        }

        .product-category {
            font-size: 0.75rem;
            color: var(--holiday-red);
            text-transform: uppercase;
            letter-spacing: 0.4px;
            font-weight: 600;
        }

        .price-row {
            display: flex;
            align-items: baseline;
            gap: 12px;
            margin: 12px 0;
        }

        .current-price {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--evergreen);
        }

        .old-price {
            text-decoration: line-through;
            color: #a58e72;
            font-size: 0.85rem;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 0.8rem;
            color: var(--gold-accent);
        }

        .product-footer {
            display: flex;
            gap: 12px;
            padding: 0 16px 18px;
        }

        .add-cart {
            background: var(--evergreen);
            border: none;
            color: white;
            flex: 1;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .add-cart:hover {
            background: var(--forest-green);
        }

        .wishlist {
            background: #fef1ea;
            border: 1px solid #f0dbcf;
            width: 40px;
            border-radius: 40px;
            cursor: pointer;
            transition: 0.2s;
            color: var(--holiday-red);
        }

        .wishlist:hover {
            background: #ffe3db;
            color: var(--deep-red);
        }

        /* flash sale - festive red green */
        .flash-sale {
            background: linear-gradient(135deg, #2b4827 0%, #1d381a 100%);
            border-radius: 44px;
            padding: 32px;
            margin: 48px 0;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 32px;
            color: #fff6e8;
            border: 1px solid #dbb042;
        }

        .sale-img img {
            width: 100%;
            height: 280px;
            object-fit: cover;
            border-radius: 32px;
            display: block;
            border: 2px solid var(--gold-accent);
        }

        .sale-content {
            flex: 1.2;
        }

        .sale-tag {
            background: var(--holiday-red);
            display: inline-block;
            padding: 4px 14px;
            border-radius: 40px;
            font-size: 0.75rem;
            font-weight: bold;
            color: white;
            letter-spacing: 0.5px;
        }

        .timer {
            display: flex;
            gap: 18px;
            margin: 24px 0;
        }

        .time-block {
            background: #fef7e8;
            color: var(--evergreen);
            padding: 10px 16px;
            border-radius: 20px;
            text-align: center;
            min-width: 70px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .time-number {
            font-size: 1.7rem;
            font-weight: 800;
            color: var(--holiday-red);
        }

        /* testimonial section red-green accents */
        .testimonial-section {
            background: #f9f4ea;
            border-radius: 48px;
            padding: 40px 20px;
            margin: 32px 0;
            border: 1px solid #e5d9ca;
        }

        .test-card {
            background: white;
            border-radius: 28px;
            padding: 24px;
            min-width: 300px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.02);
            border-left: 6px solid var(--holiday-red);
            border-right: 1px solid #e4d5c4;
        }

        /* newsletter */
        .newsletter-card {
            background: linear-gradient(115deg, #fff1e0 0%, #eef4e6 100%);
            border-radius: 40px;
            padding: 48px 28px;
            text-align: center;
            border: 1px solid var(--gold-accent);
        }

        .newsletter-card input {
            padding: 14px 20px;
            border-radius: 60px;
            border: 1px solid #d1c0ab;
            width: 280px;
            max-width: 80%;
            margin-right: 10px;
            font-family: inherit;
        }

        .newsletter-card button {
            background: var(--holiday-red);
        }

        .newsletter-card button:hover {
            background: var(--deep-red);
        }

        /* footer with green */
        footer {
            background: #1f3a1c;
            margin-top: 48px;
            padding: 48px 0 32px;
            border-radius: 48px 48px 0 0;
            color: #fbf5e8;
        }

        footer .logo {
            color: #fceeca;
        }

        footer .logo span {
            color: var(--gold-accent);
        }

        footer h4 {
            color: var(--gold-accent);
            margin-bottom: 12px;
        }

        @media (max-width: 900px) {
            .nav-links, .search-desktop {
                display: none;
            }
            .mobile-toggle {
                display: block;
            }
            .hero-content h1 {
                font-size: 2.3rem;
            }
            .hero-grid {
                flex-direction: column;
                text-align: center;
            }
            .btn-group {
                justify-content: center;
            }
            .timer {
                justify-content: center;
            }
        }

        @media (max-width: 580px) {
            .container {
                padding: 0 20px;
            }
            .products-grid {
                grid-template-columns: 1fr;
            }
        }

        .mobile-nav-panel {
            display: none;
            background: white;
            border-top: 1px solid var(--border-light);
            padding: 16px 0;
        }
        .mobile-nav-panel ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 16px;
            padding: 0 20px;
        }
        .mobile-nav-panel a {
            text-decoration: none;
            font-weight: 500;
            color: var(--evergreen);
        }
        .red-dot {
            background: var(--holiday-red);
        }
    </style>
</head>
<body>
<div class="top-bar">
    🎄 HOLIDAY RED & GREEN EDIT | FREE GIFT WRAPPING + 25% OFF SITEWIDE 🎄
</div>
<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 15px;">
            <button class="mobile-toggle" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            <div class="logo">Emporium<span> • Rouge & Vert</span></div>
        </div>
        <ul class="nav-links">
            <li><a href="#">Home</a></li>
            <li><a href="#" id="catNavLink">Collections</a></li>
            <li><a href="#">Journal</a></li>
            <li><a href="#deals-section">Offers</a></li>
        </ul>
        <div class="header-actions">
            <button class="icon-btn" id="searchIconBtn"><i class="far fa-heart"></i></button>
            <div class="cart-icon">
                <button class="icon-btn" id="cartIconBtn"><i class="fas fa-shopping-bag"></i></button>
                <span class="cart-count" id="cartCounter">0</span>
            </div>
        </div>
    </div>
    <div class="mobile-nav-panel" id="mobileNavPanel">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Collections</a></li>
            <li><a href="#">Journal</a></li>
            <li><a href="#deals-section">Offers</a></li>
            <li><a href="#">Wishlist</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- Hero section -->
    <div class="hero">
        <div class="container hero-grid">
            <div class="hero-content">
                <span class="hero-badge"><i class="fas fa-leaf"></i>  Holiday Capsule</span>
                <h1>Scarlet & Evergreen,<br>Timeless Elegance</h1>
                <p>Embrace the season's finest — artisanal pieces in rich burgundy, forest hues, and gold accents. Heirloom quality with a festive heart.</p>
                <div class="btn-group">
                    <button class="btn-primary" id="shopHeroBtn">Shop Holiday Edit →</button>
                    <button class="btn-outline" id="storyBtn">Our Legacy</button>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1601924582970-9238bcb495d9?auto=format&fit=crop&w=800&q=80" alt="Red and green traditional decor">
            </div>
        </div>
    </div>

    <div class="container">
        <!-- Categories -->
        <div class="section-head">
            <h2>Gift in Colour</h2>
            <div class="divider"></div>
            <p>red & green inspiration across every tradition</p>
        </div>
        <div class="categories-grid" id="categoriesContainer"></div>

        <!-- Editor's pick -->
        <div class="section-head" style="margin-top: 48px;">
            <h2>Signature Selections</h2>
            <div class="divider"></div>
            <p>curated for the festive season</p>
        </div>
        <div class="products-grid" id="productsGrid"></div>

        <!-- Flash Sale red-green vibe -->
        <div id="deals-section">
            <div class="flash-sale">
                <div class="sale-img">
                    <img src="https://images.unsplash.com/photo-1598532163257-ae3c6b2524b6?auto=format&fit=crop&w=800&q=80" alt="Red leather accessory">
                </div>
                <div class="sale-content">
                    <span class="sale-tag"><i class="fas fa-gift"></i> CRIMSON & PINE DEAL</span>
                    <h2 style="color: #ffe3b2; margin-top: 12px;">Holiday Leather & Velvet</h2>
                    <p>Handcrafted burgundy satchels & forest-green accessories — up to 40% off. Limited festive stock.</p>
                    <div class="timer" id="dealTimer">
                        <div class="time-block"><div class="time-number" id="days">00</div><div>Days</div></div>
                        <div class="time-block"><div class="time-number" id="hours">00</div><div>Hours</div></div>
                        <div class="time-block"><div class="time-number" id="minutes">00</div><div>Mins</div></div>
                        <div class="time-block"><div class="time-number" id="seconds">00</div><div>Secs</div></div>
                    </div>
                    <div style="margin: 20px 0 0;"><span style="font-size: 1.9rem; font-weight: 800;">$169</span> <span style="text-decoration:line-through; opacity:0.7;">$279</span> <span style="background:var(--holiday-red); padding:4px 10px; border-radius:60px; margin-left:10px;">-40%</span></div>
                    <button class="btn-primary" id="flashDealBtn" style="margin-top: 24px; background: var(--holiday-red); color: white;">Grab Deal →</button>
                </div>
            </div>
        </div>

        <!-- Testimonials -->
        <div class="testimonial-section">
            <div class="section-head">
                <h2>Joyful Reviews</h2>
                <div class="divider"></div>
                <p>our community loves the festive spirit</p>
            </div>
            <div class="testimonial-grid" id="testimonialList"></div>
        </div>

        <!-- Newsletter -->
        <div class="newsletter-card">
            <i class="fas fa-envelope-open-text" style="font-size: 2.5rem; color: var(--holiday-red);"></i>
            <h3 style="margin: 12px 0; color: var(--evergreen);">Join the Holiday Circle</h3>
            <p>Get early access to red & green collections, exclusive offers, and style notes.</p>
            <form id="newsletterSubscribe" style="margin-top: 20px;">
                <input type="email" placeholder="Your email address" id="newsEmail" required>
                <button class="btn-primary" style="background: var(--holiday-red);">Subscribe</button>
            </form>
            <div id="newsMsg" style="margin-top: 12px; font-size: 0.85rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 32px;">
        <div><div class="logo" style="font-size:1.6rem;">Emporium<span> Rouge & Vert</span></div><p style="margin-top: 12px; max-width: 260px;">Festive heirlooms, modern spirit. Celebrating red & green traditions.</p></div>
        <div><h4>Explore</h4><p>Gift Guide<br>Holiday Edit<br>Journal</p></div>
        <div><h4>Support</h4><p>Contact Us<br>Returns<br>FAQ</p></div>
        <div><h4>Connect</h4><p><i class="fab fa-instagram"></i> Instagram<br><i class="fab fa-pinterest"></i> Pinterest</p></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; font-size: 0.75rem;">© 2025 Emporium & Co. — Crimson & Evergreen Collection</div>
</footer>

<script>
    // product & category data (red-green festive theme)
    const categoriesData = [
        { id: "leather", name: "Burgundy Leather", icon: "fas fa-briefcase" },
        { id: "ceramics", name: "Forest Ceramics", icon: "fas fa-mug-hot" },
        { id: "textiles", name: "Velvet & Linen", icon: "fas fa-tshirt" },
        { id: "jewelry", name: "Garnet Jewels", icon: "fas fa-gem" },
        { id: "furniture", name: "Walnut & Pine", icon: "fas fa-couch" },
        { id: "apothecary", name: "Pine & Cedar", icon: "fas fa-seedling" }
    ];

    const productsList = [
        { id: 101, title: "Crimson Leather Satchel", price: 229, oldPrice: 399, rating: 5, reviews: 98, img: "https://images.unsplash.com/photo-1590874103328-eac38a683ce7?auto=format&fit=crop&w=600&q=80", category: "leather", badge: "Holiday Hero" },
        { id: 102, title: "Evergreen Stoneware Mug", price: 42, oldPrice: 68, rating: 5, reviews: 112, img: "https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=600&q=80", category: "ceramics", badge: "Artisan" },
        { id: 103, title: "Forest Velvet Tunic", price: 99, rating: 4, reviews: 67, img: "https://images.unsplash.com/photo-1598550886630-8e863c0d8fce?auto=format&fit=crop&w=600&q=80", category: "textiles" },
        { id: 104, title: "Garnet & Pearl Necklace", price: 179, oldPrice: 249, rating: 5, reviews: 84, img: "https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?auto=format&fit=crop&w=600&q=80", category: "jewelry" },
        { id: 105, title: "Pine Wood Serving Board", price: 85, rating: 5, reviews: 43, img: "https://images.unsplash.com/photo-1603204034169-1b0b8a9ea2db?auto=format&fit=crop&w=600&q=80", category: "furniture" },
        { id: 106, title: "Cedar & Cinnamon Candle Set", price: 58, oldPrice: 89, rating: 5, reviews: 129, img: "https://images.unsplash.com/photo-1602143407151-7111542de6e8?auto=format&fit=crop&w=600&q=80", category: "apothecary" }
    ];

    let cartItemCount = 0;
    function updateCartUI() { document.getElementById('cartCounter').innerText = cartItemCount; }

    function addToCart(productId) {
        const product = productsList.find(p => p.id === productId);
        if(product) {
            cartItemCount++;
            updateCartUI();
            const btn = document.querySelector(`.add-cart[data-id='${productId}']`);
            if(btn) { let orig = btn.innerHTML; btn.innerHTML = "✓ Added!"; setTimeout(()=> btn.innerHTML = orig, 1000); }
            else alert(`🎁 Added ${product.title} to cart`);
        } else { cartItemCount++; updateCartUI(); }
    }

    function renderCategories() {
        const container = document.getElementById('categoriesContainer');
        container.innerHTML = categoriesData.map(cat => `
            <div class="cat-card" data-cat="${cat.name}">
                <i class="${cat.icon}"></i>
                <h4>${cat.name}</h4>
                <p style="font-size:0.7rem; margin-top:6px;">explore →</p>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card').forEach(card => {
            card.addEventListener('click', () => {
                const catName = card.getAttribute('data-cat');
                let filtered = productsList.filter(p => {
                    const mapCat = { "Burgundy Leather":"leather", "Forest Ceramics":"ceramics", "Velvet & Linen":"textiles", "Garnet Jewels":"jewelry", "Walnut & Pine":"furniture", "Pine & Cedar":"apothecary" };
                    const expected = mapCat[catName];
                    return p.category === expected;
                });
                renderProducts(filtered.length ? filtered : productsList);
                document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
            });
        });
    }

    function renderProducts(productsArray = productsList) {
        const grid = document.getElementById('productsGrid');
        if(!grid) return;
        grid.innerHTML = productsArray.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <div class="product-category">${p.category === 'leather' ? 'Burgundy Leather' : p.category}</div>
                    <div class="product-title">${p.title}</div>
                    <div class="price-row">
                        <span class="current-price">$${p.price}</span>
                        ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                    </div>
                    <div class="rating"><i class="fas fa-star"></i> ${p.rating}.0 (${p.reviews})</div>
                </div>
                <div class="product-footer">
                    <button class="add-cart" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to Bag</button>
                    <button class="wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-cart').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.getAttribute('data-id'));
                addToCart(id);
            });
        });
    }

    const testimonials = [
        { name: "Genevieve L.", text: "The crimson satchel is stunning! Perfect holiday red and impeccable leather.", stars: 5 },
        { name: "Oliver W.", text: "Forest ceramics bring so much warmth. Love the green glaze!", stars: 5 },
        { name: "Sophia R.", text: "Festive packaging & gorgeous quality. The red & green collection is chef's kiss.", stars: 5 }
    ];
    function renderTestimonials() {
        const tContainer = document.getElementById('testimonialList');
        tContainer.innerHTML = testimonials.map(t => `
            <div class="test-card">
                <div style="color:#c9a87b; margin-bottom: 8px;">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
                <p style="font-style: italic; margin-bottom: 16px;">“${t.text}”</p>
                <div style="font-weight: 700;">— ${t.name}</div>
            </div>
        `).join('');
    }

    function startDealCountdown() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 2);
        targetDate.setHours(23, 59, 59, 999);
        function update() {
            const now = new Date();
            const diff = targetDate - now;
            if(diff <= 0) {
                document.getElementById('days').innerText = '00'; document.getElementById('hours').innerText = '00';
                document.getElementById('minutes').innerText = '00'; document.getElementById('seconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff/(1000*60*60*24));
            const hours = Math.floor((diff%(1000*60*60*24))/(1000*60*60));
            const mins = Math.floor((diff%(1000*60*60))/(1000*60));
            const secs = Math.floor((diff%(1000*60))/1000);
            document.getElementById('days').innerText = days < 10 ? '0'+days : days;
            document.getElementById('hours').innerText = hours < 10 ? '0'+hours : hours;
            document.getElementById('minutes').innerText = mins < 10 ? '0'+mins : mins;
            document.getElementById('seconds').innerText = secs < 10 ? '0'+secs : secs;
        }
        update(); setInterval(update, 1000);
    }

    document.getElementById('shopHeroBtn').addEventListener('click', () => {
        document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('storyBtn').addEventListener('click', () => alert("Emporium & Co. — inspired by crimson poinsettias and ancient evergreen forests, celebrating festive artistry."));
    document.getElementById('flashDealBtn').addEventListener('click', () => {
        cartItemCount++;
        updateCartUI();
        alert("🔥 Holiday flash deal added! Limited stock in red & green collection.");
    });
    document.getElementById('cartIconBtn').addEventListener('click', () => alert(`🛍️ Your cart has ${cartItemCount} festive item(s). Checkout demo ready.`));
    document.getElementById('searchIconBtn').addEventListener('click', () => alert("❤️ Save your favorite red & green picks to wishlist."));
    const mobileBtn = document.getElementById('mobileMenuBtn');
    const mobilePanel = document.getElementById('mobileNavPanel');
    mobileBtn.addEventListener('click', () => {
        mobilePanel.style.display = mobilePanel.style.display === 'block' ? 'none' : 'block';
    });
    document.getElementById('newsletterSubscribe').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value;
        const msgDiv = document.getElementById('newsMsg');
        if(email && email.includes('@')) {
            msgDiv.innerHTML = "🎄 Welcome! You’ll receive our holiday red & green edit first 🎄";
            msgDiv.style.color = "#1e4620";
            document.getElementById('newsEmail').value = '';
        } else {
            msgDiv.innerHTML = "Please enter a valid email address.";
            msgDiv.style.color = "#b63a2c";
        }
        setTimeout(() => { msgDiv.innerHTML = ''; }, 3000);
    });
    document.getElementById('catNavLink').addEventListener('click', (e) => {
        e.preventDefault();
        document.querySelector('.categories-grid').scrollIntoView({ behavior: 'smooth' });
    });

    renderCategories();
    renderProducts();
    renderTestimonials();
    startDealCountdown();
    updateCartUI();
</script>
</body>
</html>
