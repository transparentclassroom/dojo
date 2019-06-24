import { sortArray } from '../sort_odds_and_evens'

describe('#sortArray', () => {
  it('should work basic case', () => {
    expect(sortArray([5, 3, 2, 8, 1, 4, 11])).toEqual([1, 3, 8, 4, 5, 2, 11])
    expect(sortArray([2, 22, 37, 11, 4, 1, 5, 0])).toEqual([22, 4, 1, 5, 2, 11, 37, 0])
    expect(sortArray([1, 111, 11, 11, 2, 1, 5, 0])).toEqual([1, 1, 5, 11, 2, 11, 111, 0])
    expect(sortArray([])).toEqual([])
  })
})
