
def print_grid(board)

  array = []

  board.each_with_index do |row, row_index|
    array_row = []
    row.each do |check|
      check = " " if check.nil?
      array_row << check
    end
    array << array_row
  end

  puts " #{a[0]} | #{a[1]} | #{a[2]}"
  puts "-----------"
  puts " #{b[0]} | #{b[1]} | #{b[2]}"
  puts "-----------"
  puts " #{c[0]} | #{c[1]} | #{c[2]}"
end

print_grid([
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
])
