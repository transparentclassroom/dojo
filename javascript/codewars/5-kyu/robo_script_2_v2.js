// https://www.codewars.com/kata/roboscript-number-2-implement-the-rs1-specification/train/javascript

export const execute = (code) => {
  const field = new PositionalField()
  const robot = new Robot()
  robot.run(code)
  field.markPositions(robot.history)
  return field.toString()
}

class PositionalField {
  constructor() {
    this.field = []
  }

  markPositions(positions) {
    const xs = positions.map(p => p.x)
    const ys = positions.map(p => p.y)
    const minX = Math.min(...xs)
    const maxX = Math.max(...xs)
    const minY = Math.min(...ys)
    const maxY = Math.max(...ys)

    this.field = positions.reduce(
      (field, {x, y}) => {
        field[y - minY][x - minX] = '*'
        return field
      },
      [...Array(maxY - minY + 1)].map(() => Array(maxX - minX + 1).fill(' ')),
    )
  }

  toString() {
    return this.field.map(row => row.join('')).join('\r\n')
  }
}

class Robot {
  constructor() {
    this.position = new Point(0, 0)
    this.delta = [0, 1]
    this.history = [this.position]
  }

  run(code) {
    code.replace(/(\w)(\d+)/g, (_, letter, n) => letter.repeat(n)).split('').forEach((letter) => {
      this.parse(letter)
    })
  }

  parse(letter) {
    switch (letter) {
      case 'F':
        this.move()
        break
      case 'R':
        this.turnRight()
        break
      case 'L':
        this.turnLeft()
        break
      default:
        throw new Error(`Invalid input: ${letter}`)
    }
  }

  turnRight() {
    const [di, dj] = this.delta
    this.delta = [dj, -di]
  }

  turnLeft() {
    const [di, dj] = this.delta
    this.delta = [-dj, di]
  }

  move() {
    const [dy, dx] = this.delta
    this.position = this.position.add(new Point(dx, dy))
    this.history.push(this.position)
  }
}

class Point {
  constructor(x, y) {
    this.x = x
    this.y = y
  }

  add(point) {
    return new Point(this.x + point.x, this.y + point.y)
  }
}

// other pretty good solutions:
// - https://www.codewars.com/kata/reviews/5872dc462630a7c294000698/groups/5872f2432630a73fe800075a
// - https://www.codewars.com/kata/reviews/5872dc462630a7c294000698/groups/58735cdb8ea186e98d00075d
