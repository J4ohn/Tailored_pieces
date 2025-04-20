document.addEventListener('DOMContentLoaded', function() {
  // Mobile menu toggle
  const menu = document.querySelector('.menu');
  const navList = document.querySelector('.nav-list');
  
  if (menu && navList) {
    menu.addEventListener('click', function() {
      navList.classList.toggle('active');
    });
    
  }

  // Form submission handling
  const contactForm = document.getElementById('contactForm');
  const formMessage = document.getElementById('formMessage');
  
  if (contactForm) {
    contactForm.addEventListener('submit', function(e) {
      e.preventDefault();
      
      // Simulate form submission
      formMessage.textContent = 'Thank you for your message! We will get back to you soon.';
      contactForm.reset();
      
      setTimeout(() => {
        formMessage.textContent = '';
      }, 5000);
    });
  }
});