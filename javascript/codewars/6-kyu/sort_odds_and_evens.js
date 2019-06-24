// https://www.codewars.com/kata/sort-odd-and-even-numbers-in-different-order/train/javascript

const isOdd = n => n % 2 === 1
const isEven = n => n % 2 === 0

export const sortArray = (array) => {
  const sortedOdds = array.filter(isOdd).sort((a, b) => a - b)
  const sortedEvens = array.filter(isEven).sort((a, b) => b - a)
  let sortedOddsIndex = 0
  let sortedEvensIndex = 0
  return array.map((n) => { return isOdd(n) ? sortedOdds[sortedOddsIndex++] : sortedEvens[sortedEvensIndex++] })
}
