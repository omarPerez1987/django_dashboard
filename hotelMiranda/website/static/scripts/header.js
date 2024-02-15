const showHeader = document.querySelector(".header-box__header");

function handleScroll() {
  const scrollHeight = window.scrollY;
  const clientY = event.clientY;

  if (window.innerWidth <= 1000) {
    return;
  }

  if (scrollHeight < 500) {
    showHeader.style.position = "static";
    showHeader.style.transform = "translateY(0)";
  } else if (scrollHeight > 500 && clientY < 100) {
    showHeader.style.position = "fixed";
    showHeader.style.transform = "translateY(0)";
  } else if (scrollHeight > 500 && clientY > 100) {
    showHeader.style.position = "fixed";
    showHeader.style.transform = "translateY(-200%)";
  }
}

document.addEventListener("mouseover", handleScroll);
window.addEventListener("scroll", handleScroll);
