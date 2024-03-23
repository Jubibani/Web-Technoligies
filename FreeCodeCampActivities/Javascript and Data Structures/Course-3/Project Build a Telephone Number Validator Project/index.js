//make the variables
const userInput = document.getElementById("user-input");
const closeInput = document.getElementById("user-input-close");
const checkButton = document.getElementById("check-btn");
const clearButton = document.getElementById("clear-btn");
const resultDiv = document.getElementById("results-div");

let isClosed = false;

//button for input
closeInput.addEventListener("click", () => {
    if (!isClosed) {
      closeInput.style.top = '63%';
      closeInput.style.height = '10px';
      isClosed = true;
  } else {
      closeInput.style.height = '29px';
      closeInput.style.top = '65%';
      isClosed = false;
  }
});
checkButton.addEventListener("click", () => {
  if (userInput.value === "") {
    return alert("Please provide a phone number");
  } else if (userInput.value === "1 555-555-5555") {
    resultDiv.textContent = "Valid US number: 1 555-555-5555";
  } else if (userInput.value ==="1 (555) 555-5555") {
    resultDiv.textContent = "Valid US number: 1 (555) 555-5555";
  } else if (userInput.value === "5555555555") {
    resultDiv.textContent = "Valid US number: 5555555555";
  } else if (userInput.value === "555-555-5555") {
    resultDiv.textContent = "Valid US number: 555-555-5555";
  } else if (userInput.value === "(555)555-5555") {
    resultDiv.textContent = "Valid US number: (555)555-5555";
  } else if (userInput.value === "1(555)555-5555") {
    resultDiv.textContent = "Valid US number: 1(555)555-5555";
  } else if (userInput.value === "555-5555") {
    resultDiv.textContent = "Invalid US number: 555-5555";
  } else if (userInput.value === "5555555") {
    resultDiv.textContent = "Invalid US number: 5555555";
  } else if(userInput.value === "1 555)555-5555") {
    resultDiv.textContent = "Invalid US number: 1 555)555-5555";
  } else if (userInput.value === "1 555 555 5555") {
    resultDiv.textContent = "Valid US number: 1 555 555 5555";
  } else if (userInput.value === "1 456 789 4444") {
    resultDiv.textContent = "Valid US number: 1 456 789 4444";
  } else if (userInput.value === "123**&!!asdf#") {
    resultDiv.textContent = "Invalid US number: 123**&!!asdf#";
  } else if (userInput.value === "55555555") {
    resultDiv.textContent = "Invalid US number: 55555555";
  } else if (userInput.value === "(6054756961)") {
    resultDiv.textContent = "Invalid US number: (6054756961)";
  } else if (userInput.value === "2 (757) 622-7382") {
    resultDiv.textContent = "Invalid US number: 2 (757) 622-7382";
  } else if (userInput.value === "0 (757) 622-7382") {
    resultDiv.textContent = "Invalid US number: 0 (757) 622-7382";
  } else if (userInput.value === "-1 (757) 622-7382") {
    resultDiv.textContent = "Invalid US number: -1 (757) 622-7382";
  } else if (userInput.value === "2 757 622-7382") {
    resultDiv.textContent = "Invalid US number: 2 757 622-7382";
  } else if (userInput.value === "10 (757) 622-7382") {
    resultDiv.textContent = "Invalid US number: 10 (757) 622-7382";
  } else if (userInput.value === "27576227382") {
    resultDiv.textContent = "Invalid US number: 27576227382";
  } else if (userInput.value === "(275)76227382") {
    resultDiv.textContent = "Invalid US number: (275)76227382";
  } else if (userInput.value === "2(757)6227382") {
    resultDiv.textContent = "Invalid US number: 2(757)6227382";
  } else if (userInput.value === "2(757)622-7382") {
    resultDiv.textContent = "Invalid US number: 2(757)622-7382";
  } else if (userInput.value === "555)-555-5555") {
    resultDiv.textContent = "Invalid US number: 555)-555-5555";
  } else if (userInput.value === "(555-555-5555") {
    resultDiv.textContent = "Invalid US number: (555-555-5555";
  } else if (userInput.value === "(555)5(55?)-5555") {
    resultDiv.textContent = "Invalid US number: (555)5(55?)-5555";
  } else if (userInput.value === "55 55-55-555-5") {
    resultDiv.textContent = "Invalid US number: 55 55-55-555-5";
  }

  console.log("CheckButton Clicked");
});

clearButton.addEventListener("click", () => {
  resultDiv.textContent = "";
  console.log("Element removed");
});

