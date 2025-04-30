document.addEventListener('DOMContentLoaded', function() {
   //form validation
  if (contactForm) {
    contactForm.addEventListener('submit', function(e) {
      e.preventDefault();
    let isvalid = true;
    let name = document.getElementById("name");
    let email = document.getElementById("email");
    let namePattern =/^[A-Za-z\s]+$/;
     let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if(name.value.trim()==="" || !namePattern.test(name.value)){
    alert ("Please Enter your name:");
    isvalid = false;
  }
  if (email.value.trim() ==="" || !emailPattern.test(email.value)){
    alert("Please enter a valid email address.");
    isvalid = false;
  }
 
  if(isvalid){
    alert("Massege send");
     // Simulate successful submission message
     formMessage.textContent = 'Thank you for your message! We will get back to you soon.';
     contactForm.reset();

     setTimeout(() => {
       formMessage.textContent = '';
     }, 5000);
  }
  });
 }
 // Mobile menu toggle
const menu = document.querySelector('.menu');
const navList = document.querySelector('.nav-list');

if (menu && navList) {
  menu.addEventListener('click', function(e) {
    navList.classList.toggle('active');
  });
  
}
});
