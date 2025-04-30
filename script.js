document.addEventListener('DOMContentLoaded', function() {
   //form validation
   document.getElementById("submitBtn").addEventListener("click",function(submit){
    submit.preventDefault();
    let isvalid = true;
    let name = document.getElementById("name");
  let email = document.getElementById("email");
  let namePattern =/^[A-Za-z\s]+$/;
  if(name.value.trim()==="" || !namePattern.test(name.value)){
    alert ("Please Enter your name:");
    isvalid = false;
  }
  if(isvalid){
    alert("Massege send");
    document.getElementById("contactForm").submit();
    window.window.location.href="Home.html";
  }

  });
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
  };
 
  
 });