/**
 * https://www.hackerrank.com/challenges/minimum-swaps-2/problem
 *
 * Trainers: Andrew
 */

export const minimumSwaps = (arr) => {
  const shift = Math.min(...arr)
  let swaps = 0
  const visited = [...Array(arr.length)].map(() => false)
  arr.forEach((val, i) => {
    if (val - shift === i || visited[i]) return
    let loopLength = 0
    let x = i
    while (!visited[x]) {
      visited[x] = true
      x = arr[x] - shift
      loopLength++
    }
    swaps += loopLength - 1
  })
  return swaps
}
