document.addEventListener("DOMContentLoaded", function () {
  const articleToDuplicate = document.getElementById("cardRoomsSectionBox");
  const cardRoomsSection = document.getElementById("cardRoomsSection");

  let itemsPerPage = 6;
  if (window.innerWidth > 1000) {
    itemsPerPage = 9;
  }

  const totalItems = 28;
  let currentPage = 1;

  function updatePageButtons() {
    const pageButtons = document.querySelectorAll(
      "#page1, #page2, #page3, #page4"
    );
    pageButtons.forEach((button, index) => {
      if (currentPage === index + 1) {
        button.classList.add("active-page");
      } else {
        button.classList.remove("active-page");
      }
    });
    if (currentPage > 3) {
      document.getElementById("page4").classList.add("active-page");
    } else {
      document.getElementById("page4").classList.remove("active-page");
    }
  }

  function displayContent(page) {
    cardRoomsSection.innerHTML = "";
    let remainingItems = totalItems - itemsPerPage * (page - 1);

    const itemsToShow =
      remainingItems <= itemsPerPage ? remainingItems : itemsPerPage;

    const start = (page - 1) * itemsPerPage;
    const end = start + itemsToShow;

    for (let i = start; i < end; i++) {
      const card = articleToDuplicate.cloneNode(true);
      cardRoomsSection.appendChild(card);
    }
    updatePageButtons();
  }

  function goToPage(page) {
    currentPage = page;
    displayContent(currentPage);
  }

  function previousPage() {
    if (currentPage > 1) {
      currentPage--;
      displayContent(currentPage);
    }
  }

  function nextPage() {
    const totalPages = totalItems / itemsPerPage;
    if (currentPage < totalPages) {
      currentPage++;
      displayContent(currentPage);
    }
  }

  document.getElementById("previous").addEventListener("click", previousPage);
  document.getElementById("page1").addEventListener("click", () => goToPage(1));
  document.getElementById("page2").addEventListener("click", () => goToPage(2));
  document.getElementById("page3").addEventListener("click", () => goToPage(3));
  document.getElementById("page4").addEventListener("click", () => goToPage(4));
  document.getElementById("next").addEventListener("click", nextPage);

  displayContent(currentPage);
});
