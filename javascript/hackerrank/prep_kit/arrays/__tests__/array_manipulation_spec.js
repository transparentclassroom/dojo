import { arrayManipulation } from '../array_manipulation'

describe('#arrayManipulation', () => {
  it('should work', () => {
    expect(arrayManipulation(5, [[1, 2, 100], [2, 5, 100], [3, 4, 100]])).toEqual(200)
  })
})