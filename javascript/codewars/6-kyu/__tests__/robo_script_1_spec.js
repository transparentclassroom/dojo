import { highlight } from '../robo_script_1'

describe('#highlight', () => {
  it('should work for simple case', () => {
    expect(highlight('F3RF5LF7')).toEqual(
      '<span style="color: pink">F</span>' +
      '<span style="color: orange">3</span>' +
      '<span style="color: green">R</span>' +
      '<span style="color: pink">F</span>' +
      '<span style="color: orange">5</span>' +
      '<span style="color: red">L</span>' +
      '<span style="color: pink">F</span>' +
      '<span style="color: orange">7</span>',
    )
  })

  it('should group same characters together', () => {
    expect(highlight('FFFR345F2LL')).toEqual(
      '<span style="color: pink">FFF</span>' +
      '<span style="color: green">R</span>' +
      '<span style="color: orange">345</span>' +
      '<span style="color: pink">F</span>' +
      '<span style="color: orange">2</span>' +
      '<span style="color: red">LL</span>'
    )
  })
})
