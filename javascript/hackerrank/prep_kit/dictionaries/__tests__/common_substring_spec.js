import { twoStrings } from '../common_substring'

describe('#twoStrings', () => {
  it('should work', () => {
    expect(twoStrings('hello', 'hi')).toEqual('YES')
    expect(twoStrings('abc', 'def')).toEqual('NO')
  })
})