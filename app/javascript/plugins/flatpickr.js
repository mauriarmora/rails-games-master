import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


const computeTotalPrice = (event) => {
  const startRange = document.querySelector("#range_start");
  const endRange = document.querySelector("#range_end");
  const priceNight = document.querySelector("#price-night");
  console.log("hi!");
  const totalPriceTag = document.querySelector("#total-price");
  const startDate = new Date(startRange.value.split(" to ")[0]);
  const endDate = new Date(startRange.value.split(" to ")[1]);
  const totalMiliseconds = endDate - startDate;
  const totalInDays = totalMiliseconds / 86400000;
  console.log(priceNight.value);
  console.log(startDate, endDate);
  const totalPrice = parseInt(priceNight.dataset.price, 10) * totalInDays;

  totalPriceTag.innerHTML = totalPrice;
  if (!Number.isNaN(totalPrice)) {
  }
};

const initFlatpickr = () => {
  if (!document.querySelector("#range_start")) { return }

  flatpickr("#range_start", {
    altInput: true,
    plugins: [new rangePlugin({ input: "#range_end"})],
    onClose: computeTotalPrice
  });

}

export { initFlatpickr }
