document.addEventListener('DOMContentLoaded', () => {
  console.log("JavaScript loaded and running!");
 
  const form = document.querySelector('form');
 
  if (form) {
    form.addEventListener('submit', (event) => {
      event.preventDefault(); // Prevent the default form submission
 
      const name = document.querySelector('#contact_name').value;
      const message = document.querySelector('#contact_message').value;
 
      const successMessage = document.createElement('p');
      successMessage.textContent = `${name} posted: "${message}"`;
      successMessage.setAttribute('id', 'success-message');
 
      document.body.appendChild(successMessage);
    });
  }
});