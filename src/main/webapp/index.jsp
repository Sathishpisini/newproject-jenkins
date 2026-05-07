<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop UI Upgrade</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f7fb;
            color: #111827;
        }

        :root {
            --primary: #6C63FF;
            --secondary: #00C2FF;
            --dark: #111827;
            --light: #ffffff;
            --gray: #6b7280;
            --card: rgba(255, 255, 255, 0.75);
        }

        .container {
            width: 90%;
            max-width: 1300px;
            margin: auto;
        }

        /* HEADER */

        header {
            position: sticky;
            top: 0;
            z-index: 999;
            backdrop-filter: blur(14px);
            background: rgba(255, 255, 255, 0.75);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 0;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            color: var(--dark);
        }

        .logo span {
            color: var(--primary);
        }

        .nav-links {
            display: flex;
            gap: 30px;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark);
            font-weight: 500;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .header-icons {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .header-icons i {
            font-size: 20px;
            cursor: pointer;
            transition: 0.3s;
        }

        .header-icons i:hover {
            color: var(--primary);
            transform: scale(1.1);
        }

        /* HERO */

        .hero {
            min-height: 90vh;
            display: flex;
            align-items: center;
            background:
                linear-gradient(to right, rgba(17, 24, 39, 0.85), rgba(17, 24, 39, 0.6)),
                url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1600&auto=format&fit=crop') center/cover no-repeat;
            color: white;
        }

        .hero-content {
            max-width: 650px;
        }

        .hero h1 {
            font-size: 70px;
            line-height: 1.1;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 18px;
            color: #d1d5db;
            margin-bottom: 35px;
        }

        .hero-btns {
            display: flex;
            gap: 20px;
        }

        .btn {
            padding: 14px 30px;
            border-radius: 50px;
            border: none;
            cursor: pointer;
            font-size: 15px;
            font-weight: 600;
            transition: 0.4s;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
            box-shadow: 0 10px 30px rgba(108, 99, 255, 0.4);
        }

        .btn-primary:hover {
            transform: translateY(-4px);
        }

        .btn-outline {
            background: transparent;
            color: white;
            border: 2px solid rgba(255,255,255,0.3);
        }

        .btn-outline:hover {
            background: white;
            color: black;
        }

        /* SECTION TITLE */

        .section-title {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-title h2 {
            font-size: 42px;
            margin-bottom: 12px;
        }

        .section-title p {
            color: var(--gray);
        }

        section {
            padding: 90px 0;
        }

        /* CATEGORIES */

        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 25px;
        }

        .category-card {
            background: var(--card);
            border-radius: 25px;
            padding: 35px 20px;
            text-align: center;
            backdrop-filter: blur(12px);
            transition: 0.4s;
            box-shadow: 0 10px 30px rgba(0,0,0,0.06);
        }

        .category-card:hover {
            transform: translateY(-10px);
            background: white;
        }

        .category-card i {
            font-size: 40px;
            margin-bottom: 20px;
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* PRODUCTS */

        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 30px;
        }

        .product-card {
            background: white;
            border-radius: 25px;
            overflow: hidden;
            transition: 0.4s;
            box-shadow: 0 12px 35px rgba(0,0,0,0.06);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-12px);
        }

        .product-img {
            height: 260px;
            overflow: hidden;
        }

        .product-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.5s;
        }

        .product-card:hover img {
            transform: scale(1.08);
        }

        .product-info {
            padding: 25px;
        }

        .product-info h3 {
            margin-bottom: 10px;
            font-size: 20px;
        }

        .price {
            font-size: 22px;
            font-weight: 700;
            color: var(--primary);
            margin: 12px 0;
        }

        .rating {
            color: orange;
            margin-bottom: 15px;
        }

        .card-btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 12px;
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
            font-weight: 600;
            cursor: pointer;
            transition: 0.4s;
        }

        .card-btn:hover {
            opacity: 0.9;
        }

        /* DEAL SECTION */

        .deal {
            background: linear-gradient(135deg, #6C63FF, #00C2FF);
            border-radius: 35px;
            overflow: hidden;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            align-items: center;
            color: white;
        }

        .deal img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 60px;
        }

        .deal-content h2 {
            font-size: 50px;
            margin-bottom: 20px;
        }

        .deal-content p {
            margin-bottom: 30px;
            color: rgba(255,255,255,0.85);
        }

        /* TESTIMONIALS */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 30px;
        }

        .testimonial {
            background: white;
            padding: 35px;
            border-radius: 25px;
            box-shadow: 0 12px 35px rgba(0,0,0,0.05);
        }

        .testimonial img {
            width: 70px;
            height: 70px;
            border-radius: 50%;
            margin-top: 20px;
            object-fit: cover;
        }

        /* NEWSLETTER */

        .newsletter {
            background: white;
            border-radius: 30px;
            text-align: center;
            padding: 70px 30px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.05);
        }

        .newsletter h2 {
            font-size: 42px;
            margin-bottom: 20px;
        }

        .newsletter-form {
            margin-top: 30px;
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .newsletter-form input {
            width: 400px;
            max-width: 100%;
            padding: 16px;
            border-radius: 50px;
            border: 1px solid #ddd;
            outline: none;
            font-size: 15px;
        }

        /* FOOTER */

        footer {
            background: var(--dark);
            color: white;
            padding: 70px 0 30px;
            margin-top: 80px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 40px;
        }

        .footer-grid h3 {
            margin-bottom: 20px;
        }

        .footer-grid p,
        .footer-grid a {
            color: #d1d5db;
            text-decoration: none;
            line-height: 2;
        }

        .socials {
            margin-top: 20px;
            display: flex;
            gap: 15px;
        }

        .socials i {
            font-size: 18px;
            cursor: pointer;
        }

        .copyright {
            text-align: center;
            margin-top: 50px;
            color: #9ca3af;
        }

        /* MOBILE */

        @media(max-width: 768px) {

            .hero h1 {
                font-size: 45px;
            }

            .nav-links {
                display: none;
            }

            .deal-content {
                padding: 40px 25px;
            }

            .deal-content h2 {
                font-size: 36px;
            }
        }
    </style>
</head>

<body>

    <!-- HEADER -->

    <header>
        <div class="container navbar">

            <div class="logo">
                Nexus<span>Shop</span>
            </div>

            <ul class="nav-links">
                <li><a href="#">Home</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">Trending</a></li>
                <li><a href="#">Deals</a></li>
                <li><a href="#">Contact</a></li>
            </ul>

            <div class="header-icons">
                <i class="fa-solid fa-magnifying-glass"></i>
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>

        </div>
    </header>

    <!-- HERO -->

    <section class="hero">
        <div class="container hero-content">

            <h1>Discover Modern Shopping Experience</h1>

            <p>
                Upgrade your lifestyle with premium fashion, electronics,
                accessories and more — all in one beautiful store.
            </p>

            <div class="hero-btns">
                <button class="btn btn-primary">Shop Now</button>
                <button class="btn btn-outline">Explore</button>
            </div>

        </div>
    </section>

    <!-- CATEGORIES -->

    <section>
        <div class="container">

            <div class="section-title">
                <h2>Popular Categories</h2>
                <p>Explore trending collections</p>
            </div>

            <div class="categories">

                <div class="category-card">
                    <i class="fa-solid fa-mobile-screen"></i>
                    <h3>Mobiles</h3>
                </div>

                <div class="category-card">
                    <i class="fa-solid fa-laptop"></i>
                    <h3>Laptops</h3>
                </div>

                <div class="category-card">
                    <i class="fa-solid fa-headphones"></i>
                    <h3>Audio</h3>
                </div>

                <div class="category-card">
                    <i class="fa-solid fa-shirt"></i>
                    <h3>Fashion</h3>
                </div>

                <div class="category-card">
                    <i class="fa-solid fa-camera"></i>
                    <h3>Cameras</h3>
                </div>

            </div>

        </div>
    </section>

    <!-- PRODUCTS -->

    <section>

        <div class="container">

            <div class="section-title">
                <h2>Trending Products</h2>
                <p>Best selling products this week</p>
            </div>

            <div class="products">

                <div class="product-card">

                    <div class="product-img">
                        <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1200&auto=format&fit=crop">
                    </div>

                    <div class="product-info">
                        <h3>Nike Air Max</h3>
                        <div class="rating">★★★★★</div>
                        <div class="price">$199</div>
                        <button class="card-btn">Add To Cart</button>
                    </div>

                </div>

                <div class="product-card">

                    <div class="product-img">
                        <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=1200&auto=format&fit=crop">
                    </div>

                    <div class="product-info">
                        <h3>iPhone 15 Pro</h3>
                        <div class="rating">★★★★★</div>
                        <div class="price">$1299</div>
                        <button class="card-btn">Add To Cart</button>
                    </div>

                </div>

                <div class="product-card">

                    <div class="product-img">
                        <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1200&auto=format&fit=crop">
                    </div>

                    <div class="product-info">
                        <h3>Luxury Watch</h3>
                        <div class="rating">★★★★★</div>
                        <div class="price">$499</div>
                        <button class="card-btn">Add To Cart</button>
                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- DEAL -->

    <section>

        <div class="container">

            <div class="deal">

                <img src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?q=80&w=1200&auto=format&fit=crop">

                <div class="deal-content">

                    <h2>MacBook Pro Sale</h2>

                    <p>
                        Save up to 40% on premium Apple devices.
                        Limited time offer available now.
                    </p>

                    <button class="btn btn-outline">
                        Buy Now
                    </button>

                </div>

            </div>

        </div>

    </section>

    <!-- TESTIMONIALS -->

    <section>

        <div class="container">

            <div class="section-title">
                <h2>Customer Reviews</h2>
                <p>What our customers say</p>
            </div>

            <div class="testimonials">

                <div class="testimonial">
                    <p>
                        “Amazing shopping experience.
                        Fast delivery and beautiful packaging.”
                    </p>

                    <img src="https://randomuser.me/api/portraits/women/44.jpg">
                    <h4>Emma Watson</h4>
                </div>

                <div class="testimonial">
                    <p>
                        “The UI is smooth and products are premium quality.
                        Highly recommended.”
                    </p>

                    <img src="https://randomuser.me/api/portraits/men/32.jpg">
                    <h4>Michael Brown</h4>
                </div>

            </div>

        </div>

    </section>

    <!-- NEWSLETTER -->

    <section>

        <div class="container">

            <div class="newsletter">

                <h2>Subscribe Newsletter</h2>

                <p>
                    Get latest updates, offers and discounts directly to your inbox.
                </p>

                <div class="newsletter-form">

                    <input type="email" placeholder="Enter your email">

                    <button class="btn btn-primary">
                        Subscribe
                    </button>

                </div>

            </div>

        </div>

    </section>

    <!-- FOOTER -->

    <footer>

        <div class="container">

            <div class="footer-grid">

                <div>
                    <h3>NexusShop</h3>
                    <p>
                        Premium shopping destination for modern lifestyle.
                    </p>

                    <div class="socials">
                        <i class="fab fa-facebook"></i>
                        <i class="fab fa-instagram"></i>
                        <i class="fab fa-twitter"></i>
                    </div>
                </div>

                <div>
                    <h3>Company</h3>
                    <p><a href="#">About</a></p>
                    <p><a href="#">Careers</a></p>
                    <p><a href="#">Contact</a></p>
                </div>

                <div>
                    <h3>Support</h3>
                    <p><a href="#">Help Center</a></p>
                    <p><a href="#">Shipping</a></p>
                    <p><a href="#">Returns</a></p>
                </div>

            </div>

            <div class="copyright">
                © 2026 NexusShop. All rights reserved.
            </div>

        </div>

    </footer>

</body>

</html>
