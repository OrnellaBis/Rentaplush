import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {});
}

const flatpickrpage = document.getElementById("flatpickrpage");

if (flatpickrpage) {
  const startDate = document.getElementById("booking_start_date");
  const endDate = document.getElementById("booking_end_date");
  const totalNights = document.getElementById("total-nights");
  const plushPricePerDay = document.getElementById("plush-price-per-night")?.innerText;
  const totalPriceElement = document.getElementById("total-price");

  const dynamicPrice = () => {
    let dateDiffInMilliseconds =
      new Date(endDate.value) - new Date(startDate.value);
    let nbrOfNights = dateDiffInMilliseconds / 86400000;
    return nbrOfNights;
  };

  const totalPrice = () => {
    const numberOfNights = dynamicPrice();
    console.log(numberOfNights);
    totalPriceElement.innerText =
      parseInt(numberOfNights, 10) * parseInt(plushPricePerDay, 10);
  };

    [startDate, endDate].forEach((date) => {
      date.addEventListener("change", (event) => {
        if (startDate.value && endDate.value) {
          const numberOfNights = dynamicPrice();
        totalNights.innerText = numberOfNights;
        totalPrice();
        }
      });
    });
}

  export { initFlatpickr };
