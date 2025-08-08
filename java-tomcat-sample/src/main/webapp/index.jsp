<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chamidu Teshan - Network Engineer & DevOps Enthusiast</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-color: #2563eb;
            --secondary-color: #1e40af;
            --accent-color: #3b82f6;
            --text-primary: #1f2937;
            --text-secondary: #6b7280;
            --bg-primary: #ffffff;
            --bg-secondary: #f8fafc;
            --bg-dark: #0f172a;
            --border-color: #e5e7eb;
            --gradient-primary: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            --gradient-secondary: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            line-height: 1.6;
            color: var(--text-primary);
            background: var(--bg-primary);
        }

        /* Navigation */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border-color);
            z-index: 1000;
            transition: all 0.3s ease;
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 70px;
        }

        .nav-logo {
            font-size: 24px;
            font-weight: 700;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-decoration: none;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 40px;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--text-primary);
            font-weight: 500;
            transition: color 0.3s ease;
            position: relative;
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: -5px;
            left: 0;
            background: var(--gradient-primary);
            transition: width 0.3s ease;
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        /* Hero Section */
        .hero {
            padding: 120px 20px 80px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-align: center;
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
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><circle cx="50" cy="50" r="1" fill="%23ffffff" opacity="0.1"/></svg>');
            animation: float 20s infinite linear;
        }

        @keyframes float {
            0% { transform: translateX(-100px); }
            100% { transform: translateX(100vw); }
        }

        .hero-container {
            max-width: 1200px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        .hero-avatar {
            width: 180px;
            height: 180px;
            border-radius: 50%;
            margin: 0 auto 30px;
            background: linear-gradient(45deg, #ff6b6b, #4ecdc4);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 72px;
            color: white;
            border: 5px solid rgba(255, 255, 255, 0.2);
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.4); }
            70% { box-shadow: 0 0 0 10px rgba(255, 255, 255, 0); }
            100% { box-shadow: 0 0 0 0 rgba(255, 255, 255, 0); }
        }

        .hero-title {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 20px;
            animation: fadeInUp 1s ease-out;
        }

        .hero-subtitle {
            font-size: 1.5rem;
            font-weight: 300;
            margin-bottom: 15px;
            opacity: 0.9;
            animation: fadeInUp 1s ease-out 0.2s both;
        }

        .hero-description {
            font-size: 1.1rem;
            max-width: 800px;
            margin: 0 auto 40px;
            opacity: 0.8;
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        .hero-buttons {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
            animation: fadeInUp 1s ease-out 0.6s both;
        }

        .btn {
            padding: 12px 30px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        .btn-primary {
            background: white;
            color: var(--primary-color);
        }

        .btn-secondary {
            background: transparent;
            color: white;
            border: 2px solid white;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        /* Sections */
        .section {
            padding: 80px 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .section-title {
            text-align: center;
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 60px;
            position: relative;
        }

        .section-title::after {
            content: '';
            width: 60px;
            height: 4px;
            background: var(--gradient-primary);
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 2px;
        }

        /* Skills Section */
        .skills-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            margin-bottom: 60px;
        }

        .skill-category {
            background: var(--bg-secondary);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .skill-category:hover {
            transform: translateY(-10px);
        }

        .skill-category h3 {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 20px;
            color: var(--primary-color);
        }

        .skill-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .skill-tag {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 8px 16px;
            border-radius: 25px;
            font-size: 14px;
            font-weight: 500;
        }

        /* Experience Timeline */
        .timeline {
            position: relative;
            max-width: 800px;
            margin: 0 auto;
        }

        .timeline::before {
            content: '';
            position: absolute;
            width: 4px;
            background: var(--gradient-primary);
            top: 0;
            bottom: 0;
            left: 50%;
            margin-left: -2px;
            border-radius: 2px;
        }

        .timeline-item {
            padding: 20px 40px;
            position: relative;
            background: inherit;
            width: 50%;
            margin-bottom: 40px;
        }

        .timeline-item:nth-child(odd) {
            left: 0;
        }

        .timeline-item:nth-child(even) {
            left: 50%;
        }

        .timeline-content {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        .timeline-item::after {
            content: '';
            position: absolute;
            width: 20px;
            height: 20px;
            background: var(--primary-color);
            border: 4px solid white;
            top: 30px;
            border-radius: 50%;
            z-index: 1;
        }

        .timeline-item:nth-child(odd)::after {
            right: -10px;
        }

        .timeline-item:nth-child(even)::after {
            left: -10px;
        }

        /* Projects Grid */
        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 40px;
        }

        .project-card {
            background: white;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            position: relative;
        }

        .project-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: var(--gradient-primary);
        }

        .project-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.2);
        }

        .project-content {
            padding: 30px;
        }

        .project-title {
            font-size: 1.3rem;
            font-weight: 600;
            margin-bottom: 15px;
            color: var(--text-primary);
        }

        .project-description {
            color: var(--text-secondary);
            margin-bottom: 20px;
        }

        .project-tech {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            margin-top: 15px;
        }

        .tech-tag {
            background: var(--bg-secondary);
            color: var(--text-secondary);
            padding: 4px 12px;
            border-radius: 15px;
            font-size: 12px;
            font-weight: 500;
        }

        /* Certifications */
        .cert-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }

        .cert-card {
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
            border-left: 5px solid var(--primary-color);
            transition: transform 0.3s ease;
        }

        .cert-card:hover {
            transform: translateX(5px);
        }

        .cert-title {
            font-weight: 600;
            color: var(--text-primary);
            margin-bottom: 8px;
        }

        .cert-issuer {
            color: var(--primary-color);
            font-weight: 500;
            margin-bottom: 5px;
        }

        .cert-date {
            color: var(--text-secondary);
            font-size: 14px;
        }

        /* Contact Section */
        .contact {
            background: var(--bg-dark);
            color: white;
        }

        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            text-align: center;
        }

        .contact-item {
            padding: 30px;
        }

        .contact-icon {
            width: 60px;
            height: 60px;
            background: var(--gradient-primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 24px;
        }

        .contact-title {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .contact-info {
            color: #94a3b8;
        }

        .contact-info a {
            color: #94a3b8;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .contact-info a:hover {
            color: white;
        }

        /* Footer */
        .footer {
            background: #020617;
            color: white;
            text-align: center;
            padding: 30px 20px;
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

        .fade-in {
            opacity: 0;
            transform: translateY(50px);
            transition: all 0.8s ease;
        }

        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .hero-title {
                font-size: 2.5rem;
            }

            .hero-buttons {
                flex-direction: column;
                align-items: center;
            }

            .timeline::before {
                left: 20px;
            }

            .timeline-item {
                width: 100%;
                left: 0;
                padding-left: 60px;
            }

            .timeline-item::after {
                left: 10px;
            }

            .section-title {
                font-size: 2rem;
            }
        }

        /* Smooth scrolling */
        html {
            scroll-behavior: smooth;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar">
        <div class="nav-container">
            <a href="#home" class="nav-logo">CT</a>
            <ul class="nav-links">
                <li><a href="#about">About</a></li>
                <li><a href="#skills">Skills</a></li>
                <li><a href="#education">Education</a></li>
                <li><a href="#projects">Projects</a></li>
                <li><a href="#certifications">Certifications</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="hero-container">
            <div class="hero-avatar">👨‍💻</div>
            <h1 class="hero-title">Chamidu Teshan</h1>
            <h2 class="hero-subtitle">Network Engineer & DevOps Enthusiast</h2>
            <p class="hero-description">
                Dedicated Network Engineer and System Administrator undergraduate with hands-on experience in 
                network infrastructure, cloud technologies, and system administration. Aspiring IT Support Specialist 
                and DevOps Engineer with proven problem-solving skills in routing, switching, cybersecurity, and CI/CD practices.
            </p>
            <div class="hero-buttons">
                <a href="#contact" class="btn btn-primary">Get In Touch</a>
                <a href="#projects" class="btn btn-secondary">View Projects</a>
            </div>
        </div>
    </section>

    <!-- Skills Section -->
    <section id="skills" class="section">
        <div class="container">
            <h2 class="section-title">Technical Skills</h2>
            <div class="skills-grid">
                <div class="skill-category fade-in">
                    <h3>Programming Languages</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">Python</span>
                        <span class="skill-tag">C++</span>
                        <span class="skill-tag">Java</span>
                        <span class="skill-tag">Bash Scripting</span>
                        <span class="skill-tag">Groovy Scripting</span>
                    </div>
                </div>

                <div class="skill-category fade-in">
                    <h3>Network Technologies</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">Cisco Routing & Switching</span>
                        <span class="skill-tag">Network Design</span>
                        <span class="skill-tag">VLAN Configuration</span>
                        <span class="skill-tag">Load Balancing</span>
                        <span class="skill-tag">VPN Configuration</span>
                        <span class="skill-tag">FortiGate Firewall</span>
                    </div>
                </div>

                <div class="skill-category fade-in">
                    <h3>Cloud Platforms</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">Amazon Web Services (AWS)</span>
                        <span class="skill-tag">Oracle Cloud Infrastructure</span>
                        <span class="skill-tag">Cloud Architecture</span>
                        <span class="skill-tag">Infrastructure as Code</span>
                    </div>
                </div>

                <div class="skill-category fade-in">
                    <h3>DevOps Tools</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">Docker</span>
                        <span class="skill-tag">Jenkins</span>
                        <span class="skill-tag">CI/CD Pipelines</span>
                        <span class="skill-tag">Git Version Control</span>
                        <span class="skill-tag">Infrastructure Monitoring</span>
                    </div>
                </div>

                <div class="skill-category fade-in">
                    <h3>Operating Systems</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">Linux Administration</span>
                        <span class="skill-tag">Windows Server</span>
                        <span class="skill-tag">Active Directory</span>
                        <span class="skill-tag">System Monitoring</span>
                    </div>
                </div>

                <div class="skill-category fade-in">
                    <h3>Database Technologies</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">MySQL</span>
                        <span class="skill-tag">Oracle Database</span>
                        <span class="skill-tag">Database Design</span>
                        <span class="skill-tag">Data Modeling</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Education Section -->
    <section id="education" class="section" style="background: var(--bg-secondary);">
        <div class="container">
            <h2 class="section-title">Education</h2>
            <div class="timeline">
                <div class="timeline-item fade-in">
                    <div class="timeline-content">
                        <h3 style="color: var(--primary-color); margin-bottom: 10px;">Bachelor of Science (Honours) in Information Technology</h3>
                        <h4 style="color: var(--text-primary); margin-bottom: 8px;">Specialization: Computer Systems and Network Engineering</h4>
                        <p style="color: var(--text-secondary); margin-bottom: 5px;">Sri Lanka Institute of Information Technology (SLIIT), Malabe</p>
                        <p style="color: var(--text-secondary); font-size: 14px;">October 2022 - Present</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="section">
        <div class="container">
            <h2 class="section-title">Featured Projects</h2>
            <div class="projects-grid">
                <div class="project-card fade-in">
                    <div class="project-content">
                        <h3 class="project-title">Linux-Based Domain Controller with Monitoring</h3>
                        <p class="project-description">
                            Implemented Samba-based domain controller providing Active Directory services with Kerberos, DNS, and DHCP configuration. 
                            Successfully joined client machines to domain with AD user authentication and deployed Zabbix Server for comprehensive system monitoring.
                        </p>
                        <div class="project-tech">
                            <span class="tech-tag">Linux</span>
                            <span class="tech-tag">Samba</span>
                            <span class="tech-tag">Active Directory</span>
                            <span class="tech-tag">Zabbix</span>
                            <span class="tech-tag">DNS/DHCP</span>
                        </div>
                    </div>
                </div>

                <div class="project-card fade-in">
                    <div class="project-content">
                        <h3 class="project-title">Campus Network Design & Implementation</h3>
                        <p class="project-description">
                            Created comprehensive network topology diagrams and designed IP schema using VLSM for 4 remote branches, 
                            optimizing address usage by 40%. Selected appropriate LAN/WAN technologies including MPLS and VPN solutions.
                        </p>
                        <div class="project-tech">
                            <span class="tech-tag">Network Design</span>
                            <span class="tech-tag">VLSM</span>
                            <span class="tech-tag">MPLS</span>
                            <span class="tech-tag">VPN</span>
                            <span class="tech-tag">Draw.io</span>
                        </div>
                    </div>
                </div>

                <div class="project-card fade-in">
                    <div class="project-content">
                        <h3 class="project-title">AWS CI/CD Pipeline for Static Website</h3>
                        <p class="project-description">
                            Designed and deployed automated CI/CD pipeline using AWS CodePipeline, CodeBuild, S3, and GitHub integration. 
                            Configured secure access with IAM roles and implemented monitoring with CloudWatch Logs.
                        </p>
                        <div class="project-tech">
                            <span class="tech-tag">AWS CodePipeline</span>
                            <span class="tech-tag">CodeBuild</span>
                            <span class="tech-tag">S3</span>
                            <span class="tech-tag">GitHub</span>
                            <span class="tech-tag">IAM</span>
                        </div>
                    </div>
                </div>

                <div class="project-card fade-in">
                    <div class="project-content">
                        <h3 class="project-title">Wildlife Safari Management System</h3>
                        <p class="project-description">
                            Designed MySQL database with comprehensive ER diagram modeling and developed object-oriented C++ application. 
                            Built core logic to efficiently manage 50+ trip bookings and 100+ customer records.
                        </p>
                        <div class="project-tech">
                            <span class="tech-tag">C++</span>
                            <span class="tech-tag">MySQL</span>
                            <span class="tech-tag">Database Design</span>
                            <span class="tech-tag">OOP</span>
                        </div>
                    </div>
                </div>

                <div class="project-card fade-in">
                    <div class="project-content">
                        <h3 class="project-title">Supermarket Management Application</h3>
                        <p class="project-description">
                            Built Java-based desktop application using NetBeans IDE with MySQL integration. 
                            Developed inventory and billing modules reducing manual errors by 70% and improving processing speed.
                        </p>
                        <div class="project-tech">
                            <span class="tech-tag">Java</span>
                            <span class="tech-tag">NetBeans</span>
                            <span class="tech-tag">MySQL</span>
                            <span class="tech-tag">Desktop App</span>
                        </div>
                    </div>
                </div>

                <div class="project-card fade-in">
                    <div class="project-content">
                        <h3 class="project-title">IoT Projects</h3>
                        <p class="project-description">
                            Developed Arduino UNO-based remote controlled LED lamp system and contributed to ESP32-integrated 
                            autonomous grass cutting robot with Wi-Fi enabled remote control and interactive user interface.
                        </p>
                        <div class="project-tech">
                            <span class="tech-tag">Arduino UNO</span>
                            <span class="tech-tag">ESP32</span>
                            <span class="tech-tag">IoT</span>
                            <span class="tech-tag">Wi-Fi</span>
                            <span class="tech-tag">Remote Control</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Certifications Section -->
    <section id="certifications" class="section" style="background: var(--bg-secondary);">
        <div class="container">
            <h2 class="section-title">Certifications</h2>
            <div class="cert-grid">
                <div class="cert-card fade-in">
                    <div class="cert-title">FortiGate 7.6 Operator Self-Paced</div>
                    <div class="cert-issuer">Fortinet</div>
                    <div class="cert-date">July 2025</div>
                </div>
                <div class="cert-card fade-in">
                    <div class="cert-title">Introduction to Cloud 101</div>
                    <div class="cert-issuer">AWS Educate</div>
                    <div class="cert-date">July 2025</div>
                </div>
                <div class="cert-card fade-in">
                    <div class="cert-title">Switching, Routing, and Wireless Essentials</div>
                    <div class="cert-issuer">Cisco Networking Academy</div>
                    <div class="cert-date">November 2024</div>
                </div>
                <div class="cert-card fade-in">
                    <div class="cert-title">Introduction to Networks</div>
                    <div class="cert-issuer">Cisco Networking Academy</div>
                    <div class="cert-date">June 2024</div>
                </div>
                <div class="cert-card fade-in">
                    <div class="cert-title">IT Essentials PC Hardware and Software</div>
                    <div class="cert-issuer">Cisco Networking Academy</div>
                    <div class="cert-date">March 2024</div>
                </div>
                <div class="cert-card fade-in">
                    <div class="cert-title">Oracle Cloud Infrastructure 2023 Certified Foundations Associate</div>
                    <div class="cert-issuer">Oracle</div>
                    <div class="cert-date">February 2024</div>
                </div>
                <div class="cert-card fade-in">
                    <div class="cert-title">Cybersecurity Essentials</div>
                    <div class="cert-issuer">Cisco Networking Academy</div>
                    <div class="cert-date">October 2022</div>
                </div>
                <div class="cert-card fade-in">
                    <div class="cert-title">Introduction to Cyber Security</div>
                    <div class="cert-issuer">Cisco Networking Academy</div>
                    <div class="cert-date">March 2022</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="section contact">
        <div class="container">
            <h2 class="section-title" style="color: white;">Get In Touch</h2>
            <div class="contact-grid">
                <div class="contact-item fade-in">
                    <div class="contact-icon">📧</div>
                    <h3 class="contact-title">Email</h3>
                    <p class="contact-info">
                        <a href="mailto:teshan224@gmail.com">teshan224@gmail.com</a>
                    </p>
                </div>
                <div class="contact-item fade-in">
                    <div class="contact-icon">📱</div>
                    <h3 class="contact-title">Phone</h3>
                    <p class="contact-info">
