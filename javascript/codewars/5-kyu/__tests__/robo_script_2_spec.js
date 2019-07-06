import { execute } from '../robo_script_2'

describe('#execute', () => {
  it('should take some F commands to move forward', () => {
    expect(execute('')).toEqual('*')
    expect(execute('FFF')).toEqual('****')
  })

  it('should be able to turn around a couple of times', () => {
    expect(execute('FFFLLFLLFF')).toEqual('*****')
  })

  it('should be able to move up or down', () => {
    expect(execute('FFFFLFF')).toEqual('    *\r\n    *\r\n*****')
    expect(execute('FFFFRFF')).toEqual('*****\r\n    *\r\n    *')
  })

  it('should move in a square', () => {
    expect(execute('FFFFFLFFFFFLFFFFFLFFFFFL')).toEqual('******\r\n*    *\r\n*    *\r\n*    *\r\n*    *\r\n******')
  })

  it('should handle other provided tests', () => {
    expect(execute('LFFFFFRFFFRFFFRFFFFFFF'))
      .toEqual('    ****\r\n    *  *\r\n    *  *\r\n********\r\n    *   \r\n    *   ')
  })

  it('should accept commands with a number for repetition', () => {
    expect(execute('F3')).toEqual('****')
    expect(execute('LF5RF3RF3RF7'))
      .toEqual('    ****\r\n    *  *\r\n    *  *\r\n********\r\n    *   \r\n    *   ')
  })
})
