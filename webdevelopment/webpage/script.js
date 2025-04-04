function scrollToJoin() {
    document.getElementById("join").scrollIntoView({ behavior: "smooth" });
  }
  
  document.getElementById("register-form").addEventListener("submit", function (e) {
    e.preventDefault();
    alert("Thank you for registering! Your child will receive a unique ID shortly.");
  });
  

//resolving git