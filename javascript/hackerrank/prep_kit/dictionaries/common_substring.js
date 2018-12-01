/**
 * https://www.hackerrank.com/challenges/two-strings/problem
 *
 * Trainers: Andrew
 */

export const twoStrings = (s1, s2) => {
  const letters = s1.split('').reduce((acc, c) => { acc[c] = true; return acc }, {})
  return s2.split('').some(c => letters[c]) ? 'YES' : 'NO'
}