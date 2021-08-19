const startDate = document.getElementById("range_start");
const endDate = document.getElementById("range_end");


const dynamicPrice = () => {
  let dateDiffInMilliseconds =
    new Date(endDate.value) - new Date(startDate.value);
  let nbrOfNights = dateDiffInMilliseconds / 86400000;
};

dynamicPrice();

[startDate, endDate].forEach((date) => {
  date.addEventListener("change", (event) => {
    dynamicPrice();
  });
});

const totalNights = document.getElementById("total-nights")


const dynamicPriceCalculator = () => {
  if(startDate.value && endDate.value) {
    totalNights.innerText = nbrOfNights
  }
};

const flatPricePerNight = document.getElementById("flat-price-per-night").innerText;
const totalPriceElement = document.getElementById("total-price");

if (startDate.value && endDate.value) {
  // [...]
  totalPriceElement.innerText = nbrOfNights * flatPricePerNight;
}
