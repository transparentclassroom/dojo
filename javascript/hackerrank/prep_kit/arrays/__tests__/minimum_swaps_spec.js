import { minimumSwaps } from '../minimum_swaps'

describe('#minimumSwaps', () => {
  it('should work', () => {
    expect(minimumSwaps([1, 0, 2])).toEqual(1)
    expect(minimumSwaps([3, 2, 1])).toEqual(1)
    expect(minimumSwaps([3, 1, 2])).toEqual(2)
    expect(minimumSwaps([1, 3, 5, 2, 4, 6, 7])).toEqual(3)

  })
})