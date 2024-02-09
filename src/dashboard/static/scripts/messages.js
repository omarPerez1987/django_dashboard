const messages = document.querySelectorAll(".message");

messages.forEach((message) => {
  message.addEventListener("click", () => {
    message.style.display = "none";
  });

  setTimeout(() => {
    message.style.display = "none";
  }, 3500);
});
