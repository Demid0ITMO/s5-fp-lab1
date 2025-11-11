
const ones = [
  "", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
  "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"
];
const tens = [
  "", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"
];

function toWordsUnder100(n) {
  if (n < 20) {
    return ones[n];
  } else {
    const ten = Math.floor(n / 10);
    const unit = n % 10;
    return tens[ten] + ones[unit];
  }
}

function toWords(n) {
  if (n === 1000) {
    return "onethousand";
  }
  
  let result = "";
  if (n >= 100) {
    const hundreds = Math.floor(n / 100);
    result += ones[hundreds] + "hundred";
    const remainder = n % 100;
    if (remainder !== 0) {
      result += "and" + toWordsUnder100(remainder);
    }
  } else {
    result = toWordsUnder100(n);
  }
  return result;
}

let totalLetters = 0;
for (let i = 1; i <= 1000; i++) {
  totalLetters += toWords(i).length;
}

console.log(totalLetters);