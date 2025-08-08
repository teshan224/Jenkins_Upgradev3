<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apple - Think Different</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            background: #000;
            color: #f5f5f7;
            line-height: 1.4;
            overflow-x: hidden;
        }

        /* Navigation */
        .nav {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.8);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            z-index: 1000;
            transition: all 0.3s ease;
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
            height: 44px;
        }

        .nav-logo {
            font-size: 20px;
            font-weight: 600;
            color: #f5f5f7;
            text-decoration: none;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 40px;
        }

        .nav-links a {
            color: #f5f5f7;
            text-decoration: none;
            font-size: 12px;
            font-weight: 400;
            letter-spacing: 0.5px;
            transition: opacity 0.3s ease;
        }

        .nav-links a:hover {
            opacity: 0.7;
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.3);
            z-index: 1;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
            padding: 0 20px;
        }

        .hero-title {
            font-size: 4.5rem;
            font-weight: 700;
            margin-bottom: 20px;
            background: linear-gradient(45deg, #fff, #f0f0f0);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: fadeInUp 1s ease-out;
        }

        .hero-subtitle {
            font-size: 1.5rem;
            font-weight: 300;
            margin-bottom: 40px;
            opacity: 0.9;
            animation: fadeInUp 1s ease-out 0.2s both;
        }

        .cta-button {
            display: inline-block;
            padding: 15px 40px;
            background: #007aff;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            font-weight: 500;
            font-size: 16px;
            transition: all 0.3s ease;
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        .cta-button:hover {
            background: #0056d3;
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(0, 122, 255, 0.3);
        }

        /* Product Grid */
        .products {
            padding: 100px 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .products-title {
            text-align: center;
            font-size: 3rem;
            font-weight: 600;
            margin-bottom: 80px;
            background: linear-gradient(45deg, #f5f5f7, #86868b);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 40px;
        }

        .product-card {
            background: linear-gradient(145deg, #1d1d1f, #2d2d30);
            border-radius: 20px;
            padding: 40px;
            text-align: center;
            transition: all 0.5s ease;
            border: 1px solid rgba(255, 255, 255, 0.1);
            position: relative;
            overflow: hidden;
        }

        .product-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(45deg, transparent, rgba(255, 255, 255, 0.05), transparent);
            transform: translateX(-100%);
            transition: transform 0.6s ease;
        }

        .product-card:hover::before {
            transform: translateX(100%);
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
        }

        .product-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(45deg, #007aff, #5856d6);
            border-radius: 16px;
            margin: 0 auto 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
        }

        .product-name {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 15px;
            color: #f5f5f7;
        }

        .product-desc {
            color: #86868b;
            line-height: 1.5;
            margin-bottom: 25px;
        }

        .product-link {
            color: #007aff;
            text-decoration: none;
            font-weight: 500;
            font-size: 14px;
            letter-spacing: 0.5px;
        }

        .product-link:hover {
            text-decoration: underline;
        }

        /* Footer */
        .footer {
            background: #1d1d1f;
            padding: 60px 20px 40px;
            text-align: center;
            border-top: 1px solid #2d2d30;
        }

        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
        }

        .footer-text {
            color: #86868b;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .footer-links {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-bottom: 30px;
        }

        .footer-links a {
            color: #86868b;
            text-decoration: none;
            font-size: 12px;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: #f5f5f7;
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .hero-title {
                font-size: 3rem;
            }

            .hero-subtitle {
                font-size: 1.2rem;
            }

            .products-title {
                font-size: 2rem;
            }

            .product-grid {
                grid-template-columns: 1fr;
                gap: 30px;
            }

            .footer-links {
                flex-direction: column;
                gap: 15px;
            }
        }

        /* Smooth scrolling */
        html {
            scroll-behavior: smooth;
        }

        /* Custom scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
        }

        ::-webkit-scrollbar-track {
            background: #1d1d1f;
        }

        ::-webkit-scrollbar-thumb {
            background: #86868b;
            border-radius: 4px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #f5f5f7;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="nav">
        <div class="nav-container">
            <a href="#" class="nav-logo">🍎</a>
            <ul class="nav-links">
                <li><a href="#products">Products</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#support">Support</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1 class="hero-title">Think Different</h1>
            <p class="hero-subtitle">Innovation that changes everything</p>
            <a href="#products" class="cta-button">Explore Products</a>
        </div>
    </section>

    <!-- Products Section -->
    <section class="products" id="products">
        <h2 class="products-title">Our Products</h2>
        <div class="product-grid">
            <div class="product-card">
                <div class="product-icon">📱</div>
                <h3 class="product-name">iPhone</h3>
                <p class="product-desc">The most advanced iPhone yet, featuring cutting-edge technology and unparalleled performance.</p>
                <a href="#" class="product-link">Learn more →</a>
            </div>
            
            <div class="product-card">
                <div class="product-icon">💻</div>
                <h3 class="product-name">MacBook</h3>
                <p class="product-desc">Supercharged by Apple Silicon. Built for professionals who demand the best.</p>
                <a href="#" class="product-link">Learn more →</a>
            </div>
            
            <div class="product-card">
                <div class="product-icon">⌚</div>
                <h3 class="product-name">Apple Watch</h3>
                <p class="product-desc">Your essential companion for a healthy life. Advanced health features at your fingertips.</p>
                <a href="#" class="product-link">Learn more →</a>
            </div>
            
            <div class="product-card">
                <div class="product-icon">🎧</div>
                <h3 class="product-name">AirPods</h3>
                <p class="product-desc">Wireless freedom with incredible sound quality and seamless device integration.</p>
                <a href="#" class="product-link">Learn more →</a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="footer-content">
            <p class="footer-text">Innovation is in our DNA. We believe technology should enhance human capability.</p>
            <div class="footer-links">
                <a href="#">Privacy Policy</a>
                <a href="#">Terms of Service</a>
                <a href="#">Accessibility</a>
                <a href="#">Careers</a>
                <a href="#">Newsroom</a>
            </div>
            <p class="footer-text">© <%= new java.util.Date().getYear() + 1900 %> Apple Inc. All rights reserved.</p>
        </div>
    </footer>

    <script>
        // Smooth scroll effect for navigation
        document.addEventListener('DOMContentLoaded', function() {
            // Add scroll effect to navigation
            window.addEventListener('scroll', function() {
                const nav = document.querySelector('.nav');
                if (window.scrollY > 50) {
                    nav.style.background = 'rgba(0, 0, 0, 0.95)';
                } else {
                    nav.style.background = 'rgba(0, 0, 0, 0.8)';
                }
            });

            // Animate product cards on scroll
            const observerOptions = {
                threshold: 0.1,
                rootMargin: '0px 0px -100px 0px'
            };

            const observer = new IntersectionObserver(function(entries) {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.style.opacity = '1';
                        entry.target.style.transform = 'translateY(0)';
                    }
                });
            }, observerOptions);

            // Observe product cards
            document.querySelectorAll('.product-card').forEach(card => {
                card.style.opacity = '0';
                card.style.transform = 'translateY(50px)';
                card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
                observer.observe(card);
            });

            // Add parallax effect to hero
            window.addEventListener('scroll', function() {
                const scrolled = window.pageYOffset;
                const hero = document.querySelector('.hero');
                const rate = scrolled * -0.5;
                hero.style.transform = `translateY(${rate}px)`;
            });
        });

        // Add hover effects with JavaScript for enhanced interactivity
        document.querySelectorAll('.product-card').forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.background = 'linear-gradient(145deg, #2d2d30, #3d3d40)';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.background = 'linear-gradient(145deg, #1d1d1f, #2d2d30)';
            });
        });
    </script>
</body>
</html>
