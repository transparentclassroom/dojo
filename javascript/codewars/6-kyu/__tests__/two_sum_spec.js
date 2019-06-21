import { twoSum } from '../two_sum'

describe('#twoSum', () => {
  it('should work', () => {
    expect(twoSum([1, 2, 3], 4)).toEqual([0, 2])
    expect(twoSum([1234, 5678, 9012], 14690)).toEqual([1, 2])
    expect(twoSum([2, 2, 3], 4)).toEqual([0, 1])
    expect(twoSum([1, 1, 1, 1, 1, 1, 1, 2, 3], 5)).toEqual([7, 8])
    expect(twoSum([1, 1, 1, 1, 1, 1, 1, 2, 3], 5)).toEqual([7, 8])
    expect(twoSum([3, 2, 1, 1, 1, 1, 1, 1, 1], 5)).toEqual([0, 1])
  })
})
