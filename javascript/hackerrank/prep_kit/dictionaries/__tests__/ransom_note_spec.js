import { ransomNote } from '../ransom_note'

describe('#ransomNote', () => {
  it('should detect workable notes', () => {
    expect(ransomNote('give me one grand today night', 'give one grand today')).toEqual(true)
  })

  it('should detect unworkable notes', () => {
    expect(ransomNote('give me One grand today night', 'give one grand today')).toEqual(false)
  })
})