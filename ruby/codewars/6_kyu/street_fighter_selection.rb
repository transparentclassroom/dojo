# https://www.codewars.com/kata/5853213063adbd1b9b0000be/train/ruby

def street_fighter_selection(fighters, position, moves)
  width = fighters[0].length
  height = fighters.length
  row, col = position
  selections = []
  moves.each do |move|
    case move
      when 'left'
        col = col == 0 ? width - 1 : col - 1
      when 'right'
        col = (col + 1) % width
      when 'up'
        row = [0, row - 1].max
      when 'down'
        row = [height - 1, row + 1].min
    end
    selections << fighters[row][col]
  end
  selections
end
