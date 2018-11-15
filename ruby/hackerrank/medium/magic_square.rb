# https://www.hackerrank.com/challenges/magic-square-forming
#
# Given a 3x3 matrix, find the lowest cost to turn it into a magic square.
#
# Trainers: Andrew

MAGIC_SQUARES = [[[8, 1, 6],
                  [3, 5, 7],
                  [4, 9, 2]],
                 [[6, 1, 8],
                  [7, 5, 3],
                  [2, 9, 4]],
                 [[2, 7, 6],
                  [9, 5, 1],
                  [4, 3, 8]],
                 [[4, 3, 8],
                  [9, 5, 1],
                  [2, 7, 6]],
                 [[2, 9, 4],
                  [7, 5, 3],
                  [6, 1, 8]],
                 [[4, 9, 2],
                  [3, 5, 7],
                  [8, 1, 6]],
                 [[6, 7, 2],
                  [1, 5, 9],
                  [8, 3, 4]],
                 [[8, 3, 4],
                  [1, 5, 9],
                  [6, 7, 2]]]

def forming_magic_square(s)
  MAGIC_SQUARES.reduce(Float::INFINITY) do |acc, magic_square|
    [
      acc,
      magic_square.each_with_index.reduce(0) do |acc, (row, m)|
        acc + row.each_with_index.reduce(0) do |acc, (col, n)|
          acc + (col - s[m][n]).abs
        end
      end
    ].min
  end
end
