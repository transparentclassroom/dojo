// https://www.codewars.com/kata/two-sum/train/javascript
// Trainer: Andrew

const compare = (a, b) => a - b

export const twoSum = (numbers, target) => {
  const sorted = [...numbers].sort(compare)
  let left = 0
  let right = sorted.length - 1
  while (left >= 0 && right <= sorted.length - 1 && left < right) {
    const sum = sorted[left] + sorted[right]
    if (sum === target) break
    if (sum < target) {
      left++
    } else if (sum > target) {
      right--
    }
  }
  const leftNum = sorted[left]
  const rightNum = sorted[right]
  const leftIndex = numbers.indexOf(sorted[left])
  return [leftIndex, numbers.indexOf(sorted[right], leftNum === rightNum ? leftIndex + 1 : 0)].sort(compare)
}
