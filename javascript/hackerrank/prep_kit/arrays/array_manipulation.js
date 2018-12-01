/**
 * https://www.hackerrank.com/challenges/crush/problem
 */

export const arrayManipulation = (n, manipulations) => {
  return maxSum(
    manipulations.reduce(
      (acc, [a, b, k]) => {
        acc[a - 1] += k
        acc[b] -= k
        return acc
      },
      [...Array(n)].map(() => 0),
    )
  )
}

const maxSum = (arr) => {
  let max = 0
  arr.reduce((acc, n) => {
    if (acc > max) max = acc
    return acc + n
  })
  return max
}