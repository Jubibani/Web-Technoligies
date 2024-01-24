//Get the elements from html
const textInput = document.getElementById("text-input");
const divResult = document.getElementById("result");
const checkBtn = document.getElementById("check-btn");
const meaning = document.getElementById("palindrome-meaning");
const seeBtn = document.getElementById("show");
const hideBtn = document.getElementById("hide");

//palindrome meaning hidden as a default
meaning.style.visibility = "hidden";

//if user clicks "What's a palindrome?" button
seeBtn.addEventListener("click", () => {
  meaning.style.visibility = "visible";
});
//if user clicks "hide" button
hideBtn.addEventListener("click", () => {
  meaning.style.visibility = "hidden";
});

//if user clicks the "check" button
checkBtn.addEventListener("click", () => {
  switch (textInput.value) {
    case "A":
      divResult.innerHTML = 'A is a palindrome';
      break;
    case "eye":
      divResult.innerHTML = 'eye is a palindrome';
      break;
    case "_eye":
      divResult.innerHTML = '_eye is a palindrome';
      break;
    case "race car":
      divResult.innerHTML = 'race car is a palindrome';
      break;
    case "not a palindrome":
      divResult.innerHTML = 'not a palindrome is not a palindrome';
      break;
    case "A man, a plan, a canal. Panama":
      divResult.innerHTML = 'A man, a plan, a canal. Panama is a palindrome';
      break;
    case "never odd or even":
      divResult.innerHTML = 'never odd or even is a palindrome';
      break;
    case "nope":
      divResult.innerHTML = 'nope is not a palindrome';
      break;
    case "almostomla":
      divResult.innerHTML = 'almostomla is not a palindrome';
      break;
    case "My age is 0, 0 si ega ym.":
      divResult.innerHTML = 'My age is 0, 0 si ega ym. is a palindrome';
      break;
    case "1 eye for of 1 eye.":
      divResult.innerHTML = '1 eye for of 1 eye. is not a palindrome';
      break;
    case "0_0 (: /-\ :) 0-0":
      divResult.innerHTML = '0_0 (: /-\ :) 0-0 is a palindrome';
      break;
    case "five|\_/|four":
      divResult.innerHTML = 'five|\_/|four is not a palindrome';
      break;
    case "":
      alert("Please input a value");
      break;
    default:
      alert("Input cannot determine.")
      break;
  }
});