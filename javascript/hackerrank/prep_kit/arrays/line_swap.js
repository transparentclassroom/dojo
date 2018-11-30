/**
 * https://www.hackerrank.com/challenges/new-year-chaos
 *
 * Trainers: Andrew
 */

export const minimumBribes = (line) => (
  line.reduce(
    (acc, p, i) => {
      if (acc === 'Too chaotic') return acc
      if (p - (i + 1) > 2) return 'Too chaotic'
      return acc + line.slice(i + 1).filter(x => x < p).length
    },
    0,
  )
)
