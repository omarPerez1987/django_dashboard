const swiper = new Swiper("#mySwiper", {
  slidesPerView: 1,
  spaceBetween: 30,
  cssMode: true,
  navigation: {
    prevEl: ".swiper-button-prev",
    nextEl: ".swiper-button-next",
  },
  breakpoints: {
    1000: {
      slidesPerView: 3,
    },
  },
  mousewheel: true,
  keyboard: true,
});

const swiperFacilities = new Swiper("#swiper-facilities", {
  slidesPerView: 1,
  spaceBetween: 30,
  pagination: {
    el: ".swiper-pagination",
  },
  breakpoints: {
    1000: {
      slidesPerView: 3,

      grid: {
        fill: "row",
        rows: 2,
      },
    },
  },
});

const swiperMenu = new Swiper("#swiperMenu", {
  slidesPerView: 1,
  spaceBetween: 16,
  grid: {
    fill: "row",
    rows: 3,
  },
  navigation: {
    prevEl: ".swiper-button-prev",
    nextEl: ".swiper-button-next",
  },
  breakpoints: {
    1000: {
      slidesPerView: 2,

      grid: {
        fill: "row",
        rows: 3,
      },
    },
  },
});

const swiperMenuPhotos = new Swiper("#menu-photos", {
  slidesPerView: 1,
  spaceBetween: 30,
  loop: true,

  pagination: {
    el: ".menu__photos__pagination",
  },
  breakpoints: {
    1000: {
      slidesPerView: 3,
      spaceBetween: 30,
    },
  },
});

const swiperAboutCounter = new Swiper("#swiper-about", {
  slidesPerView: 1,
  spaceBetween: 30,
  loop: true,
  pagination: {
    el: ".counter-about__swiper__pagination",
    clickable: true,
  },
  breakpoints: {
    1000: {
      slidesPerView: 2,
      spaceBetween: 30,
    },
  },
});

const swiperRelatedRooms = new Swiper("#swiperRelatedRooms", {
  slidesPerView: 1,
  spaceBetween: 30,
  navigation: {
    prevEl: ".related-rooms__scroll__button-prev",
    nextEl: ".related-rooms__scroll__button-next",
  },
  breakpoints: {
    1000: {
      slidesPerView: 2,
      spaceBetween: 30,
      grid: {
        fill: "row",
        rows: 1,
      },
    },
  },
  mousewheel: true,
  keyboard: true,
});


const swiperOffers = new Swiper("#swiperOffers", {
  slidesPerView: 1,
  spaceBetween: 30,
  navigation: {
    prevEl: ".popular-rooms__swiper__scroll__button-prev",
    nextEl: ".popular-rooms__swiper__scroll__button-next",
  },
  breakpoints: {
    700: {
      slidesPerView: 2,
      spaceBetween: 30,
      grid: {
        fill: "row",
        rows: 1,
      },
    },
    1000: {
      slidesPerView: 3,
      spaceBetween: 30,
      grid: {
        fill: "row",
        rows: 1,
      },
    },
  },
  keyboard: true,
});
