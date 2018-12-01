/**
 * https://www.hackerrank.com/challenges/ctci-ransom-note/problem
 *
 * Trainers: Andrew
 */

export const ransomNote = (magazine, message) => {
  const words = magazine
    .split(' ')
    .reduce((acc, word) => {
      acc[word] = acc[word] ? acc[word] + 1 : 1
      return acc
    }, {})
  return message
    .split(' ')
    .every((word) => {
      if (!words[word]) return false
      words[word] -= 1
      return true
    })
}