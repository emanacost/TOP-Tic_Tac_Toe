# frozen_string_literal: true

# Printing board using only a method.
# def print_board(row1, row2, row3)
#   row1_out = []
#   row1.each do |cell|
#     if cell == 1
#       row1_out.push("[X]")
#     else
#       row1_out.push("[ ]")
#     end
#   end
#   row2_out = []
#   row2.each do |cell|
#     if cell == 1
#       row2_out.push("[X]")
#     else
#       row2_out.push("[ ]")
#     end
#   end
#   row3_out = []
#   row3.each do |cell|
#     if cell == 1
#       row3_out.push("[X]")
#     else
#       row3_out.push("[ ]")
#     end
#   end
# end

# Alternate idea for printing the board using class and instance variables.
class Row
  attr_accessor :cell
  
  def initialize(cell)
    @cell = cell
  end

  def print_row

    if @cell == 0
      '[X]'
    elseif @cell == 1
      '[O]'
    else
      '[ ]'
    end
  end

end