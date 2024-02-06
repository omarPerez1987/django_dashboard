const menu = document.getElementById("btnMenu");
const frame = document.getElementById("btnFrame");
const navbar = document.getElementById("navbar");

if (window.innerWidth > 1000) {
  navbar.style.display = "static";
} else {
  navbar.style.display = "none";
}

btnFrame.style.display = "none";

const showMenu = () => {
  menu.addEventListener("click", () => {
    navbar.style.display = "flex";
    menu.style.display = "none";
    frame.style.display = "block";
  });
};

const closeMenu = () => {
  frame.addEventListener("click", () => {
    navbar.style.display = "none";
    menu.style.display = "block";
    frame.style.display = "none";
  });
};

closeMenu();
showMenu();
