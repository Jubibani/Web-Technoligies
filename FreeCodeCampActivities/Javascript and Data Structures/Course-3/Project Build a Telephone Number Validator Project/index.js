//make the variables
const userInput = document.getElementById("user-input");
const checkButton = document.getElementById("check-btn");
const clearButton = document.getElementById("clear-btn");
const resultDiv = document.getElementById("results-div");

checkButton.addEventListener("click", () => {
  if (userInput.value === "") {
    return alert("Please provide a phone number");
  }
  if (userInput.value === "1 555-555-5555") {
    resultDiv.textContent = "Valid US number: 1 555-555-5555";
  }
  console.log("CheckButton Clicked");
});

clearButton.addEventListener("click", () => {
  resultDiv.textContent = "";
  console.log("Element removed");
});

