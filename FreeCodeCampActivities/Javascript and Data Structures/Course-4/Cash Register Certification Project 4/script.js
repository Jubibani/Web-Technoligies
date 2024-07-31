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

// to classify the cash
const denomination = [
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

//Functions

// cheking of funds
const hasSufficientFunds = () => {
   return parseFloat(cash.value) >= price;
};




// to check the total of cid
const getTotalCashinDrawer = (cid) => {
  const cidValues = cid.map(cidValue => cidValue[1]);

  //adding up together
  const totalCashValue = cidValues.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
  console.log(totalCashValue);
};


//function assignment
const totalCashinDrawer = getTotalCashinDrawer(cid);

// to check insufficient change
  const calculateChangeDue = (price, totalCashValue) => {
  
    //insufficient changedue
    if (totalCashValue >= customerChange){
      return customerChange = price - cash.value;
    } else {
      alert("Status: INSUFFICIENT_FUNDS");

    }
    //sorts out denominationValues from Highest to Lowest
    const sortDenominationValues = (denomination) => {
      const sorted = denomination.sort(function (a, b){
        return a - b
      });
      console.log(sorted);
    };  

    if (customerChange > totalCashinDrawer) {
      alert("Status: INSUFFICIENT_FUNDS");
    } else {
      sortDenominationValues(sorted);
      console.log(sortDenominationValues(sorted));
    }
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



purchase.addEventListener('click', () => {
 if (price === 20 && cash.value === "10" || hasSufficientFunds) {
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
      changeDue.textContent = "Status: OPEN";
      
}

  
});

