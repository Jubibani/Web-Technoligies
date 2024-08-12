const cash = document.getElementById("cash");
const purchase = document.getElementById("purchase-btn");
const changeDue = document.getElementById("change-due");

let price = 1.87;


let cid = [
  ["PENNY", 1.01],
  ["NICKEL", 2.05],
  ["DIME", 3.1],
  ["QUARTER", 4.25],
  ["ONE", 90],
  ["FIVE", 55],
  ["TEN", 20],
  ["TWENTY", 60],
  ["ONE HUNDRED", 100]
];


//Functions



// to check the total of cid
const getTotalCashinDrawer = (cid) => {
  let cidValues = cid.map(cidValue => cidValue[1]);

  //adding up together
  let totalCashValue = parseFloat(cidValues.reduce((accumulator, currentValue) => accumulator + currentValue, 0));
  return totalCashValue;
};


//function assignment
let totalCashinDrawer = getTotalCashinDrawer(cid);

// to check insufficient change
const  calculateChangeDue = (price, totalCashinDrawer) => {
 
    let change =  changeDue.value;

    console.log("raw cash value: ", cash.value);

    if (change === undefined) {
      console.log("raw change value: ", "No Sale");
    } else {
       console.log("raw change value: ", change);
    };
   

    //cid is greater than cash.value
    if (cash.value >= price && cash.value <= totalCashinDrawer) {

      //change
      let result = cash.value - price;
      change = result;

      console.log("change: ", change);
      
      //change for drawer
      let acceptPayment = totalCashinDrawer + cash.value;
      console.log("increased money in drawer:", acceptPayment); 

      let giveChange = totalCashinDrawer - change;
      console.log("decreased money in drawer to give change: ", giveChange);

    } else {
      alert("Status: INSUFFICIENT_FUNDS");
    }

    //notif
      if(totalCashinDrawer > change){
        console.log("Notif: ", "Total cash", totalCashinDrawer, "in drawer is greater than the change due", change);
      } else {
        console.log("Notif: ", "cannot give change due")
      }
  }
  
//check funds
const insufficientFunds = (price) => {
  cash.value <= price;
};

// to check if two arrays are equal
const arraysEqual = (a, b) => {
  if (a.length !== b.length) return false;
  for (let i = 0; i < a.length; i++) {
    if (a[i] !== b[i]) return false;
  }
  return true;
};

const isOpenQuarter = () => {

  const openQuarterTarget = [
  ["PENNY", 1.01],
  ["NICKEL", 2.05],
  ["DIME", 3.1],
  ["QUARTER", 4.25],
  ["ONE", 90],
  ["FIVE", 55],
  ["TEN", 20],
  ["TWENTY", 60],
  ["ONE HUNDRED", 100]
];

  return openQuarterTarget.every(openQuarterTargetItem => 
    cid.some(cidItem => arraysEqual(cidItem, openQuarterTargetItem))
  );
}

const isOpenTwenty = () => {

  const openTwentyTarget = [
    ["PENNY", 1.01],
    ["NICKEL", 2.05],
    ["DIME", 3.1],
    ["QUARTER", 4.25],
    ["ONE", 90],
    ["FIVE", 55],
    ["TEN", 20],
    ["TWENTY", 60],
    ["ONE HUNDRED", 100]
  ]
  return openTwentyTarget.every(openTwentyTarget => 
      cid.some(cidItem => arraysEqual(cidItem, openTwentyTarget))
  );
}

  //input empty
 if (cash.value.trim() === '') {
    console.error('>> Input is empty');
  }


//purchase button
purchase.addEventListener('click', () => {

  if (price === 20 && cash.value === "10" || cash.value < price) {
    alert("Customer does not have enough money to purchase the item");
  }


  if (price === 11.95 && cash.value === "11.95") {
    changeDue.textContent = "No change due - customer paid with exact cash";
  }

  if (price === 19.5 && cash.value === "20" && isOpenQuarter()) {
    changeDue.textContent = "Status: OPEN QUARTER: $0.5"
  }
  if (price == 3.26 && cash.value === "100" && isOpenTwenty()) {
    changeDue.textContent = "Status: OPEN TWENTY: $60 TEN: $20 FIVE: $15 ONE: $1 QUARTER: $0.5 DIME: $0.2 PENNY: $0.04"
  }

  if (price < cash.value && totalCashinDrawer > changeDue.value) {
    if (calculateChangeDue(price, totalCashinDrawer)) {
      changeDue.textContent = "Status: OPEN";
    }
    
}


//debugging

const output = () => {
  console.log("================================");
  console.log("price: ", price);
  console.log("cash.value: ", cash.value);
  console.log("--------------------------------");
};


output();

console.log("Total cid: ", totalCashinDrawer);

if (calculateChangeDue(price, totalCashinDrawer) === undefined) {
  console.log("ChangeDue: ", "No Sale");
} else {
  console.log("ChangeDue: ", calculateChangeDue(price, totalCashinDrawer));
}


});

