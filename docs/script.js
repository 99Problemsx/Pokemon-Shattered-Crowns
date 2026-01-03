// ========================================
// Pokemon Shattered Crowns - Enhanced Scripts
// Modern, Smooth, Interactive
// ========================================

document.addEventListener('DOMContentLoaded', function() {
    
    // ========================================
    // Loading Screen
    // ========================================
    const loadingScreen = document.getElementById('loading');
    
    window.addEventListener('load', function() {
        setTimeout(function() {
            loadingScreen.classList.add('hidden');
            document.body.style.overflow = 'auto';
            initAnimations();
        }, 1800);
    });
    
    // ========================================
    // Particle System
    // ========================================
    function createParticles() {
        const container = document.getElementById('particles');
        if (!container) return;
        
        const particleCount = 30;
        
        for (let i = 0; i < particleCount; i++) {
            const particle = document.createElement('div');
            particle.className = 'particle';
            particle.style.left = Math.random() * 100 + '%';
            particle.style.animationDuration = (Math.random() * 20 + 15) + 's';
            particle.style.animationDelay = (Math.random() * 20) + 's';
            particle.style.opacity = Math.random() * 0.3 + 0.1;
            particle.style.width = (Math.random() * 4 + 2) + 'px';
            particle.style.height = particle.style.width;
            
            const colors = ['#7c3aed', '#ec4899', '#06b6d4'];
            particle.style.background = colors[Math.floor(Math.random() * colors.length)];
            
            container.appendChild(particle);
        }
    }
    
    createParticles();
    
    // ========================================
    // Navigation
    // ========================================
    const navbar = document.getElementById('navbar');
    const navToggle = document.getElementById('navToggle');
    const navMenu = document.getElementById('navMenu');
    
    // Scroll effect
    let lastScroll = 0;
    
    window.addEventListener('scroll', function() {
        const currentScroll = window.pageYOffset;
        
        if (currentScroll > 50) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }
        
        lastScroll = currentScroll;
    });
    
    // Mobile menu toggle
    navToggle.addEventListener('click', function() {
        navToggle.classList.toggle('active');
        navMenu.classList.toggle('active');
        document.body.style.overflow = navMenu.classList.contains('active') ? 'hidden' : 'auto';
    });
    
    // Close menu on link click
    const navLinks = navMenu.querySelectorAll('a');
    navLinks.forEach(function(link) {
        link.addEventListener('click', function() {
            navToggle.classList.remove('active');
            navMenu.classList.remove('active');
            document.body.style.overflow = 'auto';
        });
    });
    
    // ========================================
    // Smooth Scroll
    // ========================================
    document.querySelectorAll('a[href^="#"]').forEach(function(anchor) {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                const headerOffset = 80;
                const elementPosition = target.getBoundingClientRect().top;
                const offsetPosition = elementPosition + window.pageYOffset - headerOffset;
                
                window.scrollTo({
                    top: offsetPosition,
                    behavior: 'smooth'
                });
            }
        });
    });
    
    // ========================================
    // Stats Counter Animation
    // ========================================
    function animateStats() {
        const stats = document.querySelectorAll('.stat[data-value]');
        
        stats.forEach(function(stat) {
            const value = parseInt(stat.getAttribute('data-value'));
            const numberEl = stat.querySelector('.stat-number');
            
            if (!numberEl || numberEl.dataset.animated) return;
            numberEl.dataset.animated = 'true';
            
            const duration = 2000;
            const steps = 60;
            const increment = value / steps;
            let current = 0;
            const stepTime = duration / steps;
            
            const counter = setInterval(function() {
                current += increment;
                if (current >= value) {
                    current = value;
                    clearInterval(counter);
                }
                numberEl.textContent = Math.floor(current);
            }, stepTime);
        });
    }
    
    // ========================================
    // Scroll Animations
    // ========================================
    function initAnimations() {
        const observerOptions = {
            root: null,
            rootMargin: '0px 0px -100px 0px',
            threshold: 0.1
        };
        
        const observer = new IntersectionObserver(function(entries) {
            entries.forEach(function(entry) {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                    
                    // Trigger stats animation when hero stats come into view
                    if (entry.target.classList.contains('hero-stats')) {
                        animateStats();
                    }
                }
            });
        }, observerOptions);
        
        // Elements to animate
        const animatedElements = [
            '.section-header',
            '.story-intro-card',
            '.story-text',
            '.threat-card',
            '.warning-card',
            '.act-card',
            '.feature-card',
            '.character-card',
            '.legendary-card',
            '.main-quote',
            '.gallery-item',
            '.download-wrapper',
            '.hero-stats'
        ];
        
        animatedElements.forEach(function(selector) {
            document.querySelectorAll(selector).forEach(function(el) {
                el.classList.add('animate-on-scroll');
                observer.observe(el);
            });
        });
        
        // Stagger animation delays for cards
        const cardGroups = [
            { selector: '.act-card', delay: 0.1 },
            { selector: '.feature-card', delay: 0.1 },
            { selector: '.character-card', delay: 0.15 },
            { selector: '.legendary-card', delay: 0.1 },
            { selector: '.gallery-item', delay: 0.05 }
        ];
        
        cardGroups.forEach(function(group) {
            document.querySelectorAll(group.selector).forEach(function(card, index) {
                card.style.transitionDelay = (index * group.delay) + 's';
            });
        });
    }
    
    // ========================================
    // Back to Top Button
    // ========================================
    const backToTop = document.getElementById('backToTop');
    
    window.addEventListener('scroll', function() {
        if (window.pageYOffset > 500) {
            backToTop.classList.add('visible');
        } else {
            backToTop.classList.remove('visible');
        }
    });
    
    backToTop.addEventListener('click', function() {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
    
    // ========================================
    // Parallax Effects
    // ========================================
    let ticking = false;
    
    window.addEventListener('scroll', function() {
        if (!ticking) {
            window.requestAnimationFrame(function() {
                const scrolled = window.pageYOffset;
                
                // Hero parallax
                const heroOrbs = document.querySelector('.hero-orbs');
                if (heroOrbs && scrolled < window.innerHeight) {
                    heroOrbs.style.transform = 'translateY(' + (scrolled * 0.3) + 'px)';
                }
                
                // Hero content parallax
                const heroContent = document.querySelector('.hero-content');
                if (heroContent && scrolled < window.innerHeight) {
                    heroContent.style.transform = 'translateY(' + (scrolled * 0.15) + 'px)';
                    heroContent.style.opacity = 1 - (scrolled / window.innerHeight);
                }
                
                ticking = false;
            });
            
            ticking = true;
        }
    });
    
    // ========================================
    // Character Card Hover Effects
    // ========================================
    const characterCards = document.querySelectorAll('.character-card');
    
    characterCards.forEach(function(card) {
        card.addEventListener('mousemove', function(e) {
            const rect = card.getBoundingClientRect();
            const x = e.clientX - rect.left;
            const y = e.clientY - rect.top;
            
            const centerX = rect.width / 2;
            const centerY = rect.height / 2;
            
            const rotateX = (y - centerY) / 20;
            const rotateY = (centerX - x) / 20;
            
            card.style.transform = 'perspective(1000px) rotateX(' + rotateX + 'deg) rotateY(' + rotateY + 'deg) translateY(-8px)';
        });
        
        card.addEventListener('mouseleave', function() {
            card.style.transform = 'perspective(1000px) rotateX(0) rotateY(0) translateY(0)';
        });
    });
    
    // ========================================
    // Timeline Animation
    // ========================================
    const timelineLine = document.querySelector('.timeline-line');
    
    if (timelineLine) {
        const actCards = document.querySelectorAll('.act-card');
        
        window.addEventListener('scroll', function() {
            const timelineRect = document.querySelector('.acts-timeline').getBoundingClientRect();
            const windowHeight = window.innerHeight;
            
            if (timelineRect.top < windowHeight && timelineRect.bottom > 0) {
                const progress = Math.min(1, Math.max(0, (windowHeight - timelineRect.top) / (timelineRect.height + windowHeight)));
                timelineLine.style.background = 'linear-gradient(to bottom, var(--color-primary) 0%, var(--color-secondary) ' + (progress * 100) + '%, var(--color-border) ' + (progress * 100) + '%, var(--color-border) 100%)';
            }
        });
    }
    
    // ========================================
    // Typing Effect for Quote
    // ========================================
    const quoteSection = document.querySelector('.quote-section');
    let quoteAnimated = false;
    
    if (quoteSection) {
        const quoteObserver = new IntersectionObserver(function(entries) {
            entries.forEach(function(entry) {
                if (entry.isIntersecting && !quoteAnimated) {
                    quoteAnimated = true;
                    const quoteText = quoteSection.querySelector('.main-quote p');
                    if (quoteText) {
                        quoteText.style.animation = 'fadeInUp 1s ease forwards';
                    }
                }
            });
        }, { threshold: 0.5 });
        
        quoteObserver.observe(quoteSection);
    }
    
    // ========================================
    // Download Button Ripple Effect
    // ========================================
    const downloadBtn = document.querySelector('.btn-download');
    
    if (downloadBtn) {
        downloadBtn.addEventListener('click', function(e) {
            const ripple = document.createElement('span');
            ripple.style.cssText = 'position: absolute; background: rgba(255,255,255,0.3); border-radius: 50%; pointer-events: none; transform: scale(0); animation: ripple 0.6s ease-out;';
            
            const rect = this.getBoundingClientRect();
            const size = Math.max(rect.width, rect.height);
            ripple.style.width = ripple.style.height = size + 'px';
            ripple.style.left = (e.clientX - rect.left - size / 2) + 'px';
            ripple.style.top = (e.clientY - rect.top - size / 2) + 'px';
            
            this.appendChild(ripple);
            
            setTimeout(function() {
                ripple.remove();
            }, 600);
        });
        
        // Add ripple animation
        const style = document.createElement('style');
        style.textContent = '@keyframes ripple { to { transform: scale(4); opacity: 0; } }';
        document.head.appendChild(style);
    }
    
    // ========================================
    // Keyboard Navigation
    // ========================================
    document.addEventListener('keydown', function(e) {
        // ESC closes mobile menu
        if (e.key === 'Escape' && navMenu.classList.contains('active')) {
            navToggle.classList.remove('active');
            navMenu.classList.remove('active');
            document.body.style.overflow = 'auto';
        }
    });
    
    // ========================================
    // Prefers Reduced Motion
    // ========================================
    const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
    
    if (prefersReducedMotion.matches) {
        // Disable animations for users who prefer reduced motion
        document.documentElement.style.scrollBehavior = 'auto';
        
        const particles = document.getElementById('particles');
        if (particles) {
            particles.style.display = 'none';
        }
    }
    
    console.log('Pokemon Shattered Crowns - Website Loaded Successfully!');
});
