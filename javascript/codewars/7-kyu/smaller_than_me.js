/**
 * http://www.codewars.com/kata/how-many-are-smaller-than-me/javascript
 *
 * Write function smaller(arr)
 * that given an array arr, you have to return the amount of numbers that are smaller than arr[i] to the right.
 *
 * For example:
 *
 * smaller([5, 4, 3, 2, 1]) === [4, 3, 2, 1, 0]
 * smaller([1, 2, 0]) === [1, 1, 0]
 *
 * Performance is not a concern in this kata.
 *
 * Trainers: Andrew
 */

export const smaller = (arr) => {
  return arr.map((n, i) => arr.slice(i + 1).reduce((acc, x) => x < n ? acc + 1 : acc, 0))
}
