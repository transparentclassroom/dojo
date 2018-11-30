export const hourglassSum = (matrix) => (
  Math.max(
    ...[...Array(4).keys()]
      .map(i => [...Array(4).keys()].map(j => calculateHourglass(matrix, i, j)))
      .map(x => Math.max(...x)),
  )
)

export const calculateHourglass = (matrix, i, j) => (
  sum(matrix[i].slice(j, j + 3)) + matrix[i + 1][j + 1] + sum(matrix[i + 2].slice(j, j + 3))
)

const sum = (arr) => arr.reduce((acc, x) => acc + x)