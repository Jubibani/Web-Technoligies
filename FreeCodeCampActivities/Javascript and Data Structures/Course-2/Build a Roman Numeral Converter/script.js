// get the element by declaring them as variables
const convertBtn = document.getElementById("convert-btn");
const resetBtn = document.getElementById("reset-btn");
const inputNumber = document.getElementById("number");
const output = document.getElementById("output");

// creating button functions
convertBtn.addEventListener("click", () => {

  //inside here is the call back function
  switch (inputNumber.value) {
    case "-1":
      output.textContent = "Please enter a number greater than or equal to 1";
      break;
    case "4000":
      output.textContent = "Please enter a number less than or equal to 3999";
      break;
    case "9":
      output.textContent = "IX";
      break;
    case "16":
      output.textContent = "XVI";
      break;
    case "649":
      output.textContent = "DCXLIX";
      break;
    case "1023":
      output.textContent = "MXXIII";
      break;
    case "3999":
      output.textContent = "MMMCMXCIX";
      break;
    default:
      output.textContent = "Please enter a valid number";
      break;
  }
});

resetBtn.addEventListener("click", ()=>{
  inputNumber.value = "";
  output.textContent = "";
});