# frozen_string_literal: true

# Class and instance variables for creating a row.
class Row
  attr_accessor :cell

  def initialize(cell)
    @cell = cell
  end

  def self.print_row
    if @cell.zero?
      '[X]'
      elseif @cell == 1
      '[O]'
    else
      '[ ]'
    end
  end
end

# Method that uses Row class to create a row of cells for the board.
def print_board(row)
  row_out = []
  row.each do |cell|
    row_out.push(Row.print_row(cell))
  end

  row_out
end
