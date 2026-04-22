<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Emporium | Timeless Elegance & Modern Finds</title>
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
            color: #2c2418;
            scroll-behavior: smooth;
        }

        /* warm traditional palette */
        :root {
            --cream: #fef8ed;
            --deep-wood: #3e2c1f;
            --gold-accent: #c9a87b;
            --rose-dust: #e2cfb3;
            --charcoal: #2a241e;
            --border-light: #f0e4d4;
            --shadow-sm: 0 12px 28px -8px rgba(0, 0, 0, 0.06), 0 4px 12px rgba(0, 0, 0, 0.02);
            --shadow-hover: 0 24px 40px -12px rgba(0, 0, 0, 0.12);
        }

        /* container */
        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* typography */
        h1, h2, h3, .logo, .serif {
            font-family: 'Playfair Display', serif;
        }

        h2 {
            font-size: 2.2rem;
            font-weight: 600;
            letter-spacing: -0.01em;
            position: relative;
            display: inline-block;
        }

        .section-head {
            text-align: center;
            margin-bottom: 2.8rem;
        }

        .section-head p {
            color: #7f6b58;
            font-size: 1rem;
            margin-top: 0.5rem;
            letter-spacing: 0.3px;
        }

        .divider {
            width: 70px;
            height: 2px;
            background: var(--gold-accent);
            margin: 0.8rem auto 0;
        }

        /* header / navigation */
        .top-bar {
            background: var(--deep-wood);
            color: #f7ede3;
            font-size: 0.8rem;
            padding: 8px 0;
            text-align: center;
            letter-spacing: 0.4px;
        }

        header {
            background: #ffffffea;
            backdrop-filter: blur(10px);
            position: sticky;
            top: 0;
            z-index: 100;
            border-bottom: 1px solid var(--border-light);
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
            color: var(--deep-wood);
            letter-spacing: -0.3px;
        }

        .logo span {
            color: var(--gold-accent);
            font-weight: 500;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            color: #3a2a1f;
            transition: 0.2s;
            font-size: 0.95rem;
        }

        .nav-links a:hover {
            color: var(--gold-accent);
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
            color: #3e2c1f;
            transition: 0.2s;
        }

        .cart-icon {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: var(--gold-accent);
            color: #2c1c0e;
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
        }

        /* Hero with traditional atmosphere */
        .hero {
            background: linear-gradient(107deg, #f9efdf 0%, #f4e5d3 100%);
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
            background: #e9dccc;
            color: #7a5a3a;
            padding: 4px 14px;
            border-radius: 60px;
            font-size: 0.75rem;
            font-weight: 600;
            letter-spacing: 0.5px;
            margin-bottom: 20px;
        }

        .hero-content h1 {
            font-size: 3.3rem;
            line-height: 1.2;
            margin-bottom: 20px;
            color: #2c2418;
        }

        .hero-content p {
            font-size: 1rem;
            color: #5b4b38;
            max-width: 480px;
            margin-bottom: 32px;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        .btn-primary {
            background: var(--deep-wood);
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
            background: #5b3e2a;
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            border: 1px solid #cbb286;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 500;
            cursor: pointer;
            transition: 0.2s;
        }

        .btn-outline:hover {
            background: rgba(201, 168, 123, 0.1);
            border-color: #b38f60;
        }

        .hero-image {
            flex: 1;
            display: flex;
            justify-content: center;
        }

        .hero-image img {
            max-width: 100%;
            border-radius: 32px;
            box-shadow: 0 20px 35px -10px rgba(0,0,0,0.15);
        }

        /* categories masonry style */
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
            border: 1px solid #f3e9df;
            cursor: pointer;
        }

        .cat-card i {
            font-size: 2.2rem;
            color: var(--gold-accent);
            margin-bottom: 12px;
        }

        .cat-card h4 {
            font-weight: 600;
            margin-bottom: 5px;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: #e2cfb3;
        }

        /* product grid */
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
            border: 1px solid #f3e9df;
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
        }

        .product-category {
            font-size: 0.75rem;
            color: #b2916e;
            text-transform: uppercase;
            letter-spacing: 0.4px;
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
            color: #2c2418;
        }

        .old-price {
            text-decoration: line-through;
            color: #a6907a;
            font-size: 0.85rem;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 0.8rem;
            color: #f3b15a;
        }

        .product-footer {
            display: flex;
            gap: 12px;
            padding: 0 16px 18px;
        }

        .add-cart {
            background: var(--deep-wood);
            border: none;
            color: white;
            flex: 1;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .wishlist {
            background: #fef3ea;
            border: none;
            width: 40px;
            border-radius: 40px;
            cursor: pointer;
            transition: 0.2s;
        }

        /* flash sale (traditional feel) */
        .flash-sale {
            background: #2a241e;
            border-radius: 44px;
            padding: 32px;
            margin: 48px 0;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 32px;
            color: #fcf6ef;
        }

        .sale-img {
            flex: 1;
            border-radius: 32px;
            overflow: hidden;
        }

        .sale-img img {
            width: 100%;
            height: 280px;
            object-fit: cover;
            display: block;
        }

        .sale-content {
            flex: 1.2;
        }

        .sale-tag {
            background: #c9a87b;
            display: inline-block;
            padding: 4px 12px;
            border-radius: 40px;
            font-size: 0.7rem;
            font-weight: bold;
            color: #241f1a;
        }

        .timer {
            display: flex;
            gap: 18px;
            margin: 24px 0;
        }

        .time-block {
            background: #00000030;
            backdrop-filter: blur(4px);
            background: #fefaf5;
            color: #2c2418;
            padding: 10px 16px;
            border-radius: 20px;
            text-align: center;
            min-width: 70px;
        }

        .time-number {
            font-size: 1.7rem;
            font-weight: 800;
        }

        /* testimonials with vintage card */
        .testimonial-section {
            background: #faf3ea;
            border-radius: 48px;
            padding: 40px 20px;
            margin: 32px 0;
        }

        .testimonial-grid {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 12px 4px;
            scrollbar-width: thin;
        }

        .test-card {
            background: white;
            border-radius: 28px;
            padding: 24px;
            min-width: 300px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.02);
            border: 1px solid #e4d5c4;
        }

        /* newsletter */
        .newsletter-card {
            background: linear-gradient(115deg, #e9dfd1 0%, #f1e7db 100%);
            border-radius: 40px;
            padding: 48px 28px;
            text-align: center;
        }

        .newsletter-card input {
            padding: 14px 20px;
            border-radius: 60px;
            border: none;
            width: 280px;
            max-width: 80%;
            margin-right: 10px;
            font-family: inherit;
        }

        /* footer */
        footer {
            background: #f5ede4;
            margin-top: 48px;
            padding: 48px 0 32px;
            border-radius: 48px 48px 0 0;
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
        /* mobile menu */
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
            color: #2e241b;
        }
    </style>
</head>
<body>
<div class="top-bar">
    ✨ FREE SHIPPING ON ORDERS $75+ | 30-DAY RETURNS ✨
</div>
<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 15px;">
            <button class="mobile-toggle" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            <div class="logo">Emporium<span> & Co.</span></div>
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
    <!-- Hero section with traditional overview -->
    <div class="hero">
        <div class="container hero-grid">
            <div class="hero-content">
                <span class="hero-badge"><i class="fas fa-feather-alt"></i>  Heritage since 2025</span>
                <h1>Timeless Craft,<br>Modern Soul</h1>
                <p>Discover heirloom-quality pieces — from artisan accessories to everyday essentials. curated with warmth and authenticity.</p>
                <div class="btn-group">
                    <button class="btn-primary" id="shopHeroBtn">Explore Collection →</button>
                    <button class="btn-outline" id="storyBtn">Our Story</button>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1533090161767-e6ffed986c88?auto=format&fit=crop&w=800&q=80" alt="Traditional elegance">
            </div>
        </div>
    </div>

    <div class="container">
        <!-- Categories -->
        <div class="section-head">
            <h2>Browse by Tradition</h2>
            <div class="divider"></div>
            <p>timeless collections inspired by artisanal heritage</p>
        </div>
        <div class="categories-grid" id="categoriesContainer"></div>

        <!-- Trending products -->
        <div class="section-head" style="margin-top: 48px;">
            <h2>Editor's Pick</h2>
            <div class="divider"></div>
            <p>curated for the modern connoisseur</p>
        </div>
        <div class="products-grid" id="productsGrid"></div>

        <!-- Flash Sale with countdown -->
        <div id="deals-section">
            <div class="flash-sale">
                <div class="sale-img">
                    <img src="https://images.unsplash.com/photo-1611930022073-b7a4ba5f6e6d?auto=format&fit=crop&w=800&q=80" alt="Limited edition">
                </div>
                <div class="sale-content">
                    <span class="sale-tag"><i class="fas fa-fire"></i> FLASH SALE</span>
                    <h2 style="color: #fef3e2; margin-top: 12px;">Artisan Leather Collection</h2>
                    <p>Handcrafted leather bags & accessories — up to 35% off. Only today.</p>
                    <div class="timer" id="dealTimer">
                        <div class="time-block"><div class="time-number" id="days">00</div><div>Days</div></div>
                        <div class="time-block"><div class="time-number" id="hours">00</div><div>Hours</div></div>
                        <div class="time-block"><div class="time-number" id="minutes">00</div><div>Mins</div></div>
                        <div class="time-block"><div class="time-number" id="seconds">00</div><div>Secs</div></div>
                    </div>
                    <div style="margin: 20px 0 0;"><span style="font-size: 1.9rem; font-weight: 800;">$189</span> <span style="text-decoration:line-through; opacity:0.7;">$289</span> <span style="background:#c9a87b; padding:4px 10px; border-radius:60px; margin-left:10px;">-35%</span></div>
                    <button class="btn-primary" id="flashDealBtn" style="margin-top: 24px; background: #dbb47a; color:#2a241e;">Grab Deal <i class="fas fa-arrow-right"></i></button>
                </div>
            </div>
        </div>

        <!-- Testimonials vintage style -->
        <div class="testimonial-section">
            <div class="section-head">
                <h2>Words of Warmth</h2>
                <div class="divider"></div>
                <p>from our cherished community</p>
            </div>
            <div class="testimonial-grid" id="testimonialList">
                <!-- dynamic testimonials added via js -->
            </div>
        </div>

        <!-- Newsletter -->
        <div class="newsletter-card">
            <i class="fas fa-envelope-open-text" style="font-size: 2.5rem; color:#a88458;"></i>
            <h3 style="margin: 12px 0;">Join the Inner Circle</h3>
            <p>Get early access to artisan drops, exclusive offers and style notes.</p>
            <form id="newsletterSubscribe" style="margin-top: 20px;">
                <input type="email" placeholder="Your email address" id="newsEmail" required>
                <button class="btn-primary" style="background: #3e2c1f;">Subscribe</button>
            </form>
            <div id="newsMsg" style="margin-top: 12px; font-size: 0.85rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 32px;">
        <div><div class="logo" style="font-size:1.6rem;">Emporium<span> & Co.</span></div><p style="margin-top: 12px; max-width: 260px;">Bringing you heirloom quality and soulful design since 2025.</p></div>
        <div><h4>Explore</h4><p>New Arrivals<br>Gift Guide<br>Journal</p></div>
        <div><h4>Support</h4><p>Contact Us<br>Returns<br>FAQ</p></div>
        <div><h4>Connect</h4><p><i class="fab fa-instagram"></i> Instagram<br><i class="fab fa-pinterest"></i> Pinterest</p></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; font-size: 0.75rem;">© 2025 Emporium & Co. — Timeless Elegance</div>
</footer>

<script>
    // -------- product and category data (traditional-inspired) --------
    const categoriesData = [
        { id: "leather", name: "Leather Goods", icon: "fas fa-briefcase" },
        { id: "ceramics", name: "Ceramics", icon: "fas fa-mug-hot" },
        { id: "textiles", name: "Textiles", icon: "fas fa-tshirt" },
        { id: "jewelry", name: "Heirloom Jewelry", icon: "fas fa-gem" },
        { id: "furniture", name: "Woodcraft", icon: "fas fa-couch" },
        { id: "apothecary", name: "Apothecary", icon: "fas fa-seedling" }
    ];

    const productsList = [
        { id: 101, title: "Heritage Leather Satchel", price: 249, oldPrice: 389, rating: 5, reviews: 124, img: "https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=600&q=80", category: "leather", badge: "Bestseller" },
        { id: 102, title: "Hand-Thrown Stoneware Mug", price: 48, oldPrice: 72, rating: 5, reviews: 87, img: "https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=600&q=80", category: "ceramics", badge: "Artisan" },
        { id: 103, title: "Linen Blend Tunic", price: 89, rating: 4, reviews: 43, img: "https://images.unsplash.com/photo-1539008835657-9e8e9680c956?auto=format&fit=crop&w=600&q=80", category: "textiles" },
        { id: 104, title: "Vintage Pearl Necklace", price: 159, oldPrice: 210, rating: 5, reviews: 62, img: "https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?auto=format&fit=crop&w=600&q=80", category: "jewelry" },
        { id: 105, title: "Walnut Serving Board", price: 79, rating: 5, reviews: 34, img: "https://images.unsplash.com/photo-1603204034169-1b0b8a9ea2db?auto=format&fit=crop&w=600&q=80", category: "furniture" },
        { id: 106, title: "Botanical Candle Set", price: 55, oldPrice: 84, rating: 4, reviews: 101, img: "https://images.unsplash.com/photo-1602143407151-7111542de6e8?auto=format&fit=crop&w=600&q=80", category: "apothecary" }
    ];

    let cartItemCount = 0;
    function updateCartUI() { document.getElementById('cartCounter').innerText = cartItemCount; }

    function addToCart(productId) {
        const product = productsList.find(p => p.id === productId);
        if(product) {
            cartItemCount++;
            updateCartUI();
            const btn = document.querySelector(`.add-cart[data-id='${productId}']`);
            if(btn) { let orig = btn.innerHTML; btn.innerHTML = "✓ Added"; setTimeout(()=> btn.innerHTML = orig, 1000); }
            else alert(`Added ${product.title} to cart`);
        } else { cartItemCount++; updateCartUI(); }
    }

    function renderCategories() {
        const container = document.getElementById('categoriesContainer');
        container.innerHTML = categoriesData.map(cat => `
            <div class="cat-card" data-cat="${cat.name}">
                <i class="${cat.icon}"></i>
                <h4>${cat.name}</h4>
                <p style="font-size:0.7rem; margin-top:6px;">shop now →</p>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card').forEach(card => {
            card.addEventListener('click', (e) => {
                const catName = card.getAttribute('data-cat');
                const filtered = productsList.filter(p => p.category.toLowerCase() === catName.toLowerCase());
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
                    <div class="product-category">${p.category}</div>
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

    // testimonials
    const testimonials = [
        { name: "Eleanor R.", text: "The leather satchel is a masterpiece — impeccable craftsmanship and timeless design.", stars: 5, imgPlaceholder: "E" },
        { name: "Matthias K.", text: "I love the ceramics collection; each piece feels like a work of art. Will order again!", stars: 5 },
        { name: "Clara B.", text: "Shipping was fast and the packaging felt like opening a gift. Highly recommend.", stars: 4 }
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

    // countdown timer (2 days from now)
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

    // event listeners and UI init
    document.getElementById('shopHeroBtn').addEventListener('click', () => {
        document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('storyBtn').addEventListener('click', () => alert("Emporium & Co. was born from a love for artisan traditions and modern storytelling."));
    document.getElementById('flashDealBtn').addEventListener('click', () => {
        cartItemCount++;
        updateCartUI();
        alert("Special deal added to cart! Limited stock.");
    });
    document.getElementById('cartIconBtn').addEventListener('click', () => alert(`You have ${cartItemCount} item(s) in your cart. Proceed to checkout (demo).`));
    document.getElementById('searchIconBtn').addEventListener('click', () => alert("Wishlist feature: save your favorite pieces."));
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
            msgDiv.innerHTML = "✨ Thanks! You’re now part of our inner circle ✨";
            msgDiv.style.color = "#4f6d5c";
            document.getElementById('newsEmail').value = '';
        } else {
            msgDiv.innerHTML = "Please enter a valid email address.";
            msgDiv.style.color = "#b1624b";
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
