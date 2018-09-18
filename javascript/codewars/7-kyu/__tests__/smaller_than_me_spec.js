import { smaller } from '../smaller_than_me'

describe('smaller', () => {
  it('should work', () => {
    expect(smaller([5, 4, 3, 2, 1])).toEqual([4, 3, 2, 1, 0])
    expect(smaller([1, 2, 0])).toEqual([1, 1, 0])
  })
})
