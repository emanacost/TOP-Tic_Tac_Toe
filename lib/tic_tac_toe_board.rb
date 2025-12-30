# frozen_string_literal: true

# Class and instance variables for creating a row.
class Row
  attr_accessor :cell

  def initialize(cell)
    @cell = cell
  end

  def print_row
    if @cell.zero?
      '[X]'
    elsif @cell == 1
      '[O]'
    else
      '[ ]'
    end
  end
end

# Method that uses Row class to create a row of cells for the board.
def print_row(row)
  row_out = []
  row.each do |cell|
    row_out.push(Row.new(cell).print_row)
  end

  puts row_out.join
end
