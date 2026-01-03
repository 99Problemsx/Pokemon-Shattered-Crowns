// ========================================
// Pokemon Shattered Crowns - Website Scripts
// ========================================

document.addEventListener('DOMContentLoaded', function() {
    // Navigation scroll effect
    const navbar = document.querySelector('.navbar');
    
    window.addEventListener('scroll', function() {
        if (window.scrollY > 50) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }
    });
    
    // Mobile menu toggle
    const navToggle = document.querySelector('.nav-toggle');
    const navMenu = document.querySelector('.nav-menu');
    
    navToggle.addEventListener('click', function() {
        navMenu.classList.toggle('active');
        
        // Animate hamburger to X
        const spans = navToggle.querySelectorAll('span');
        if (navMenu.classList.contains('active')) {
            spans[0].style.transform = 'rotate(45deg) translate(5px, 5px)';
            spans[1].style.opacity = '0';
            spans[2].style.transform = 'rotate(-45deg) translate(5px, -5px)';
        } else {
            spans[0].style.transform = 'none';
            spans[1].style.opacity = '1';
            spans[2].style.transform = 'none';
        }
    });
    
    // Close mobile menu when clicking a link
    const navLinks = navMenu.querySelectorAll('a');
    navLinks.forEach(function(link) {
        link.addEventListener('click', function() {
            navMenu.classList.remove('active');
            const spans = navToggle.querySelectorAll('span');
            spans[0].style.transform = 'none';
            spans[1].style.opacity = '1';
            spans[2].style.transform = 'none';
        });
    });
    
    // Smooth scroll for anchor links
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
    
    // Intersection Observer for animations
    const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.1
    };
    
    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            }
        });
    }, observerOptions);
    
    // Observe elements for animation
    const animatedElements = document.querySelectorAll('.act-card, .feature-card, .character-card');
    animatedElements.forEach(function(el) {
        el.style.opacity = '0';
        el.style.transform = 'translateY(30px)';
        el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(el);
    });
    
    // Add visible class styles
    const style = document.createElement('style');
    style.textContent = `
        .act-card.visible,
        .feature-card.visible,
        .character-card.visible {
            opacity: 1 !important;
            transform: translateY(0) !important;
        }
    `;
    document.head.appendChild(style);
    
    // Staggered animation for cards
    const cardGroups = [
        document.querySelectorAll('.act-card'),
        document.querySelectorAll('.feature-card'),
        document.querySelectorAll('.character-card')
    ];
    
    cardGroups.forEach(function(group) {
        group.forEach(function(card, index) {
            card.style.transitionDelay = (index * 0.1) + 's';
        });
    });
    
    // Stats counter animation
    const stats = document.querySelectorAll('.stat-number');
    let statsAnimated = false;
    
    function animateStats() {
        if (statsAnimated) return;
        
        stats.forEach(function(stat) {
            const target = stat.textContent.replace('+', '');
            const isNumber = !isNaN(parseInt(target));
            
            if (isNumber) {
                const finalValue = parseInt(target);
                const hasPlus = stat.textContent.includes('+');
                let current = 0;
                const increment = finalValue / 50;
                const duration = 1500;
                const stepTime = duration / 50;
                
                const counter = setInterval(function() {
                    current += increment;
                    if (current >= finalValue) {
                        current = finalValue;
                        clearInterval(counter);
                    }
                    stat.textContent = Math.floor(current) + (hasPlus ? '+' : '');
                }, stepTime);
            }
        });
        
        statsAnimated = true;
    }
    
    // Trigger stats animation when hero is in view
    const heroObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
            if (entry.isIntersecting) {
                setTimeout(animateStats, 500);
            }
        });
    }, { threshold: 0.5 });
    
    const heroStats = document.querySelector('.hero-stats');
    if (heroStats) {
        heroObserver.observe(heroStats);
    }
    
    // Parallax effect for hero background
    window.addEventListener('scroll', function() {
        const hero = document.querySelector('.hero-bg');
        if (hero) {
            const scrolled = window.pageYOffset;
            hero.style.transform = 'translateY(' + (scrolled * 0.3) + 'px)';
        }
    });
    
    console.log('Pokemon Shattered Crowns website loaded successfully!');
});
