import { calculateHourglass, hourglassSum } from '../hourglass_sum'

describe('#hourglassSum', () => {
  it('should work', () => {
    const arr = [
      [-9, -9, -9, 1, 1, 1],
      [0, -9, 0, 4, 3, 2],
      [-9, -9, -9, 1, 2, 3],
      [0, 0, 8, 6, 6, 0],
      [0, 0, 0, -2, 0, 0],
      [0, 0, 1, 2, 4, 0],
    ]
    expect(hourglassSum(arr)).toEqual(28)
  })
})

describe('#calculateHourglass', () => {
  it('should work', () => {
    const arr = [[1, 1, 1], [null, 1, null], [1, 1, 1]]
    expect(calculateHourglass(arr, 0, 0)).toEqual(7)
  })
})