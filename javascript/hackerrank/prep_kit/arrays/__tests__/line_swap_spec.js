import { minimumBribes } from '../line_swap'

describe('#minimumBribes', () => {
  it('should determine when the line is too chaotic', () => {
    expect(minimumBribes([2, 5, 1, 3, 4])).toEqual('Too chaotic')
  })

  it('should determine the number of swaps needed', () => {
    expect(minimumBribes([1, 2, 5, 3, 4])).toEqual(2)
    expect(minimumBribes([1, 2, 5, 4, 3])).toEqual(3)
    expect(minimumBribes([1, 2, 3, 4, 5, 6, 7, 8])).toEqual(0)
    expect(minimumBribes([1, 2, 5, 3, 7, 8, 6, 4])).toEqual(7)
  })
})