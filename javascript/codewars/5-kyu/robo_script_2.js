// https://www.codewars.com/kata/roboscript-number-2-implement-the-rs1-specification/train/javascript

const TURN_LEFT = {
  UP: 'LEFT',
  LEFT: 'DOWN',
  DOWN: 'RIGHT',
  RIGHT: 'UP',
}

const TURN_RIGHT = Object.entries(TURN_LEFT).reduce((acc, [k, v]) => ({ ...acc, [v]: k }), {})

const DIRECTIONS = { UP: 'UP', RIGHT: 'RIGHT', DOWN: 'DOWN', LEFT: 'LEFT' }

const DIRECTIONS_VALUE = {
  RIGHT: [0, 1],
  UP: [-1, 0],
  LEFT: [0, -1],
  DOWN: [1, 0],
}

const createField = (minX, maxX, minY, maxY) => (
  [...Array(maxY - minY + 1)].map(() => [...Array(maxX - minX + 1)])
)

export const execute = (code) => {
  const robot = new Robot();
  (code.match(/(\w(\d*))/g) || []).forEach((match) => {
    const [letter, repetitions] = [match[0], match.substring(1) || 1]
    for (let i = 0; i < repetitions; i++) {
      robot.parse(letter)
    }
  })
  return robot.history
    .reduce((acc, [originalY, originalX]) => {
      acc[originalY - robot.minY][originalX - robot.minX] = '*'
      return acc
    }, createField(robot.minX, robot.maxX, robot.minY, robot.maxY))
    .map(row => [...row].map(x => x || ' ').join(''))
    .join('\r\n')
}

class Robot {
  constructor() {
    this.position = [0, 0]
    this.direction = DIRECTIONS.RIGHT
    this.minX = 0
    this.maxX = 0
    this.minY = 0
    this.maxY = 0
    this.history = [this.position]
  }

  parse(letter) {
    switch (letter) {
      case 'F':
        this.move()
        break
      case 'R':
        this.turn(TURN_RIGHT)
        break
      case 'L':
        this.turn(TURN_LEFT)
        break
      default:
        throw new Error(`Invalid input: ${letter}`)
    }
  }

  turn(directionMap) {
    this.direction = directionMap[this.direction]
  }

  move() {
    const x = this.position[1] + DIRECTIONS_VALUE[this.direction][1]
    const y = this.position[0] + DIRECTIONS_VALUE[this.direction][0]
    if (x < this.minX) this.minX = x
    if (x > this.maxX) this.maxX = x
    if (y < this.minY) this.minY = y
    if (y > this.maxY) this.maxY = y
    this.position = [y, x]
    this.history.push(this.position)
  }
}

// other pretty good solutions:
// - https://www.codewars.com/kata/reviews/5872dc462630a7c294000698/groups/5872f2432630a73fe800075a
// - https://www.codewars.com/kata/reviews/5872dc462630a7c294000698/groups/58735cdb8ea186e98d00075d
